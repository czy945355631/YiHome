package com.asjy.YiHome.Controller.BsController;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.asjy.YiHome.Util.DataTablePageUtil;
import com.asjy.YiHome.Util.ImageUploadUtil;
import com.asjy.YiHome.model.TblGoods;
import com.asjy.YiHome.service.impl.BrandsServiceImpl;
import com.asjy.YiHome.service.impl.ClassesServiceImpl;
import com.asjy.YiHome.service.impl.GoodsServiceImpl;
import com.asjy.YiHome.service.impl.SpecServiceImpl;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("/BsPage/goods")
public class GoodsController {
    @Autowired
    GoodsServiceImpl goodsService;
    @Autowired
    SpecServiceImpl specService;
    @Autowired
    BrandsServiceImpl brandsService;
    @Value("${file.uploadFolder}")
    private String uploadFolder;
    @Autowired
    ClassesServiceImpl classesService;


    @RequestMapping("/getGoodsListJson")
    @ResponseBody


    public Object goodsList(HttpServletRequest request) {
        //使用DataTables的属性接收分页数据
        DataTablePageUtil<TblGoods> dataTable = new DataTablePageUtil<TblGoods>(request);
        PageInfo<TblGoods> goodsList = goodsService.queryGoodsList(dataTable.getPage_num(), dataTable.getPage_size());
        dataTable.setDraw(dataTable.getDraw());
        dataTable.setData(goodsList.getList());
        dataTable.setRecordsTotal((int) goodsList.getTotal());
        dataTable.setRecordsFiltered(dataTable.getRecordsTotal());
        String jsonString = JSON.toJSONString(dataTable, SerializerFeature.DisableCircularReferenceDetect);
        return  jsonString;
    }

    @RequestMapping("/goGoods")
    public String goGoods() {
        return "YiHomeManagerSystem/goods";
    }

    @RequestMapping("/goGoodsAdd")
    public String goGoodsAdd(Model model) {
        //一二级分类
        model.addAttribute("classes",classesService.findAllClassesTwoAndThree());
        //全部品牌
        model.addAttribute("brands",brandsService.getBrandsAll());
        //规格、规格值
        model.addAttribute("spec",specService.getSpecAll());
        return "YiHomeManagerSystem/Goods-add";
    }
    @RequestMapping("/goGoodsUpdate")
    public String goGoodsUpdate(Model model,Integer id) {
        TblGoods goodsById = goodsService.findGoodsById(id);
        model.addAttribute("goods",goodsById);
        //一二级分类
        model.addAttribute("classes",classesService.findAllClassesTwoAndThree());
        //全部品牌
        model.addAttribute("brands",brandsService.getBrandsAll());
        model.addAttribute("spec",specService.getSpecAll());
        //规格、规格值
//        model.addAttribute("spec",specService.getSpecAll());
//        String s = JSON.toJSONString(specService.getSpecAll());
//        System.out.println(s);
        //已选择的规格及规格值
        model.addAttribute("selectedspec",goodsService.fingGoodsSpecByGoodsId(id));
        System.out.println(JSON.toJSONString(goodsService.fingGoodsSpecByGoodsId(id)));

        return "YiHomeManagerSystem/Goods-update";
    }

    /**
     * ckeditor图片上传
     *
     * @Title imageUpload
     * @param request
     * @param response
     */
    @RequestMapping("/imageUpload")
    public void imageUpload(HttpServletRequest request, HttpServletResponse response) {
        String DirectoryName = "/asjy/file/";
        try {
            ImageUploadUtil.ckeditor(request, response, DirectoryName);
        } catch (IllegalStateException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping(value = "/doGoodsAdd",method= RequestMethod.POST)
    public String doGoodsAdd(TblGoods goods,HttpServletRequest req) throws Exception{
        MultipartHttpServletRequest mreq = (MultipartHttpServletRequest)req;
        MultipartFile file = mreq.getFile("path-1");
        String fileName = file.getOriginalFilename();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
        String realFileName = sdf.format(new Date())+"01"+fileName.substring(fileName.lastIndexOf('.'));
        FileOutputStream fos = new FileOutputStream("D:\\uploadFiles/"+realFileName);
        fos.write(file.getBytes());
        fos.flush();
        System.out.println(realFileName);
        goods.setPath(realFileName);
        file = mreq.getFile("path-2");
        fileName = file.getOriginalFilename();
        sdf = new SimpleDateFormat("yyyyMMddHHmmss");
        realFileName = sdf.format(new Date())+"02"+fileName.substring(fileName.lastIndexOf('.'));
        fos = new FileOutputStream("D:\\uploadFiles/"+realFileName);
        fos.write(file.getBytes());
        fos.flush();
        fos.close();
        System.out.println(realFileName);
        goods.setPath2(realFileName);
        int i = goodsService.insertGoods(goods);
        return "redirect:/BsPage/goods/goGoods";
    }

    @ResponseBody
    @RequestMapping("/dodelete")
    public String dodelete(String id){
        int i = goodsService.deleteGoods(id);
        return null;
    }

    @RequestMapping(value = "/doGoodsUpdate",method= RequestMethod.POST)
    public String doGoodsUpdate(TblGoods goods,HttpServletRequest req) throws Exception{
        MultipartHttpServletRequest mreq = (MultipartHttpServletRequest)req;
        MultipartFile file = mreq.getFile("path-1");
        String fileName = file.getOriginalFilename();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
        if (fileName==null||fileName.isEmpty()){
            return "redirect:/BsPage/goods/goGoods";
        }
        String realFileName = sdf.format(new Date())+"01"+fileName.substring(fileName.lastIndexOf('.'));
        FileOutputStream fos = new FileOutputStream("D:\\uploadFiles/"+realFileName);
        fos.write(file.getBytes());
        fos.flush();
        System.out.println(realFileName);
        goods.setPath(realFileName);
        file = mreq.getFile("path-2");
        fileName = file.getOriginalFilename();
        sdf = new SimpleDateFormat("yyyyMMddHHmmss");
        realFileName = sdf.format(new Date())+"02"+fileName.substring(fileName.lastIndexOf('.'));
        fos = new FileOutputStream("D:\\uploadFiles/"+realFileName);
        fos.write(file.getBytes());
        fos.flush();
        fos.close();
        System.out.println(realFileName);
        goods.setPath2(realFileName);
        int i = goodsService.insertGoods(goods);
        return "redirect:/BsPage/goods/goGoods";
    }


}

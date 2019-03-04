package com.asjy.YiHome.Controller;

import com.asjy.YiHome.model.AllBrands;
import com.asjy.YiHome.service.impl.BrandsServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;

@Controller
public class FileUploadController {
    @Autowired
    BrandsServiceImpl brandsService;
    @Value("${file.uploadFolder}")
    private String uploadFolder;
//	@RequestMapping("/getUser")
//	public Map<String, Object> getUser(){
//		Map<String, Object> result = new HashMap<String,Object>();
////		List<User> list_user = userService.findAll();
////		result.put("list_user", list_user);
//
//		City city = userService.findByCityId(1);
//		result.put("city",city);
//		result.put("name", "xiaoming");
//		result.put("age", 17);
//		return result;
//	}

    @RequestMapping(value="/brands-upload",method= RequestMethod.POST)
    public String upload(HttpServletRequest req,String brandname,Integer seq,Integer recommend) throws Exception{
        AllBrands brands = new AllBrands();
        MultipartHttpServletRequest mreq = (MultipartHttpServletRequest)req;
        MultipartFile file = mreq.getFile("path");
        String fileName = file.getOriginalFilename();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
        String realFileName = sdf.format(new Date())+fileName.substring(fileName.lastIndexOf('.'));
        FileOutputStream fos = new FileOutputStream("D:\\uploadFiles/"+realFileName);
        fos.write(file.getBytes());
        fos.flush();
        fos.close();
        System.out.println(realFileName);
        brands.setBrandname(brandname);
        brands.setSeq(seq);
        brands.setRecommend(recommend);
        brands.setPath(realFileName);
        boolean b = brandsService.addBrand(brands);
        return "redirect:/BsPage/goBrands";
    }

    @RequestMapping("/upload2")
    public String upload2(HttpServletRequest request, HttpServletResponse response) throws IllegalStateException, IOException {
        //创建一个通用的多部分解析器
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());
        //判断 request 是否有文件上传,即多部分请求
        if(multipartResolver.isMultipart(request)){
            //转换成多部分request    MultipartHttpServletRequest接口简单地扩展了默认的HttpServletRequest接口
            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest)request;
            //取得request中的所有文件名
            Iterator<String> iter = multiRequest.getFileNames();
            int i = 0;
            while(iter.hasNext()){
                //记录上传过程起始时的时间，用来计算上传时间
//                int pre = (int) System.currentTimeMillis();
                //取得上传文件
                MultipartFile file = multiRequest.getFile(iter.next());
                if(file != null){
                    //取得当前上传文件的文件名称
                    String myFileName = file.getOriginalFilename();
                    SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
                    //如果名称不为“”,说明该文件存在，否则说明该文件不存在
                    if(myFileName.trim() !=""){
                        System.out.println(myFileName);
                        //重命名上传后的文件名
//                        String fileName = "demoUpload" + file.getOriginalFilename();
                        //定义上传路径
                        String path ="D:\\uploadFiles/" + sdf.format(new Date())+""+i+""+myFileName.substring(myFileName.lastIndexOf('.'));
                        File localFile = new File(path);
                        file.transferTo(localFile);
                    }
                }
                //记录上传该文件后的时间
                int finaltime = (int) System.currentTimeMillis();
//                System.out.println(finaltime - pre);
                i++;
            }
        }
        return "hello";
    }
}

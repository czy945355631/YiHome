package com.asjy.YiHome.Controller.BsController;

import com.asjy.YiHome.model.AllSpec;
import com.asjy.YiHome.model.SpecValue;
import com.asjy.YiHome.service.impl.SpecServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.Collections;
import java.util.List;

@Controller
@RequestMapping("/BsPage/Spec")
public class SpecController {
    @Autowired
    SpecServiceImpl specService;
    @RequestMapping("/doDelete")
    public String doDelete(Integer id){
        specService.delete(id);
        return "redirect:/BsPage/goSpec";
    }
    @RequestMapping("/goUpdate")
    public String goUpdate(String id, Model model){
        AllSpec spec = specService.findSpecById(id);
        model.addAttribute("spec",spec);
        return "YiHomeManagerSystem/Spec-update";
    }
    @RequestMapping("/doSpecUpdate")
    public String doSpecAdd(AllSpec spec){
        List<SpecValue> specValues = spec.getSpecValues();
        //集合去空
        specValues.removeAll(Collections.singleton(null));
        spec.setSpecValues(specValues);
        specService.doSpecUpdate(spec);
        return "redirect:/BsPage/goSpec";
    }
}

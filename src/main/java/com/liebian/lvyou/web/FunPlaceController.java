package com.liebian.lvyou.web;

import com.liebian.lvyou.entity.Comment;
import com.liebian.lvyou.entity.Vendor;
import com.liebian.lvyou.service.VendorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by hexianglin on 2017/9/30.
 */
@Controller
@RequestMapping("/place") // url:/模块/资源/{id}/细分 /seckill/list
public class FunPlaceController {

    @Value("${image.path}")
    private String IMAGEPATH;

    @Autowired
    private VendorService vendorService;

    //商家列表页
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    private String list(Model model) {

        List<Vendor> v_list = vendorService.getListByType(2);
        model.addAttribute("v_list", v_list);
        model.addAttribute("image_path", IMAGEPATH);
        return "list";
    }

    //详情页
    @RequestMapping(value = "/detail/{item_id}.html", method = RequestMethod.GET)
    private String item(@PathVariable("item_id") int item_id, Model model) {


        if (item_id == 1000) {
            return "tiantang";
        }
        else {
            return "funlist";
        }


    }
}
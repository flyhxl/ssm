package com.liebian.lvyou.web;

import java.util.ArrayList;
import java.util.List;

import com.liebian.lvyou.dto.CommentDTO;
import com.liebian.lvyou.dto.Result;
import com.liebian.lvyou.entity.Comment;
import com.liebian.lvyou.entity.Vendor;
import com.liebian.lvyou.entity.Vendorrecommend;
import com.liebian.lvyou.enums.AppointStateEnum;
import com.liebian.lvyou.exception.NoNumberException;
import com.liebian.lvyou.exception.RepeatAppointException;
import com.liebian.lvyou.service.BookService;
import com.liebian.lvyou.service.CommentService;
import com.liebian.lvyou.service.VendorService;
import com.liebian.lvyou.service.VendorrecommendService;
import com.tools.DateUtil;
import com.tools.ToolsMain;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestParam;

import com.liebian.lvyou.dto.AppointExecution;


import java.util.HashMap;
import java.util.Map;

import static com.tools.DateUtil.stampToDate;

@Controller
@RequestMapping("/shop") // url:/模块/资源/{id}/细分 /seckill/list
public class LvYouController {


    @Value("${image.path}")
    private String IMAGEPATH;

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private BookService bookService;

    @Autowired
    private VendorService vendorService;

    @Autowired
    private CommentService commentService;

    @Autowired
    private VendorrecommendService vendorrecommendService;

    //商家列表页
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    private String list(Model model) {
        List<Vendor> v_list = vendorService.getListByType(1);
        model.addAttribute("v_list", v_list);

        List<Comment> c_list = commentService.getALl();
        model.addAttribute("c_list", c_list);

        List<Comment> d_list = commentService.getAllByVendor(2L, 0);
        model.addAttribute("d_list", d_list);

        model.addAttribute("image_path", IMAGEPATH);
        // list.jsp + model = ModelAndView
        return "list";// WEB-INF/jsp/"list".jsp
    }

    //详情页
    @RequestMapping(value = "/detail/{vendor_id}.html", method = RequestMethod.GET)
    private String detail(@PathVariable("vendor_id") Long vendor_id, Model model) {
        if (vendor_id == null) {
            return "redirect:/shop/list";
        }

        model.addAttribute("image_path", IMAGEPATH);

        //店铺图片
        List<Vendorrecommend> vc_list_shop = vendorrecommendService.getListByVendor(vendor_id, 1);
        if (vc_list_shop != null) {
            model.addAttribute("vc_list_shop", vc_list_shop);
        }

        //推荐菜
        List<Vendorrecommend> vc_list_recommend = vendorrecommendService.getListByVendor(vendor_id, 2);
        if (vc_list_recommend != null) {
            model.addAttribute("vc_list_recommend", vc_list_recommend);
        }

        model.addAttribute("vc_list_recommend_count", vc_list_recommend.size());


        //留言
        List<Comment> commentList = commentService.getAllByVendor(vendor_id, 0);
        if (commentList == null) {
            return "forward:/shop/list";
        }

        model.addAttribute("c_list_count", commentList.size());

        for (Comment n : commentList) {
            String mtStr = stampToDate(n.getAddtime());
            n.setTimeStr(mtStr);
        }
        model.addAttribute("c_list", commentList);


        //商家
        Vendor vendorModel = vendorService.getById(vendor_id);
        if (vendorModel == null) {
            return "redirect:/shop/list";
        }
        model.addAttribute("c_vendor", vendorModel);
        return "detail";
    }

    //留言
    @RequestMapping(value = "/{vendor_id}/comment", method = RequestMethod.POST, produces = {
            "application/json; charset=utf-8"})
    @ResponseBody
    private Map<String, Object> postComment(@PathVariable("vendor_id") Long vendor_id, @RequestParam("str") String str) {

        Map<String, Object> map = new HashMap<String, Object>();

        if (vendor_id == null || str.equals("")) {
            map.put("msg", "no");
        } else {
            Comment comment = new Comment();
            String time_str = DateUtil.getToday();
            try {
                Long inttime = DateUtil.dateStrToStamp(time_str);
                comment.setAddtime(inttime);
            } catch (Exception ex) {
                comment.setAddtime(0L);
            }

            comment.setContent(str);
            comment.setScore(5);
            comment.setStatus(0);
            comment.setWxOpenid("niming");
            comment.setVendorId(vendor_id);
            comment.setWxUsername("匿名网友");
            try {
                int cid = commentService.insert(comment);
                map.put("msg", cid);
            } catch (Exception e) {
                map.put("msg", e.toString());
            }


        }
        return map;
    }


    // ajax json
    @RequestMapping(value = "/{bookId}/appoint", method = RequestMethod.POST, produces = {
            "application/json; charset=utf-8"})
    @ResponseBody
    private Result<AppointExecution> appoint(@PathVariable("bookId") Long bookId, @RequestParam("studentId") Long studentId) {
        if (studentId == null || studentId.equals("")) {
            return new Result<>(false, "学号不能为空");
        }
        AppointExecution execution = null;
        try {
            execution = bookService.appoint(bookId, studentId);
        } catch (NoNumberException e1) {
            execution = new AppointExecution(bookId, AppointStateEnum.NO_NUMBER);
        } catch (RepeatAppointException e2) {
            execution = new AppointExecution(bookId, AppointStateEnum.REPEAT_APPOINT);
        } catch (Exception e) {
            execution = new AppointExecution(bookId, AppointStateEnum.INNER_ERROR);
        }
        return new Result<AppointExecution>(true, execution);
    }

}

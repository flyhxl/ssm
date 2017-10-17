package com.liebian.lvyou.web;

//import com.liebian.lvyou.entity.Adminuser;

import com.google.common.base.Strings;
import com.liebian.lvyou.entity.Adminuser;
import com.liebian.lvyou.entity.Comment;
import com.liebian.lvyou.entity.Vendor;
//import com.liebian.lvyou.service.AdminuserService;
import com.liebian.lvyou.entity.Vendorrecommend;
import com.liebian.lvyou.service.AdminuserService;
import com.liebian.lvyou.service.VendorrecommendService;
import com.liebian.lvyou.service.BookService;
import com.liebian.lvyou.service.CommentService;
import com.liebian.lvyou.service.VendorService;
import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.net.CookieManager;
import java.util.*;

import com.tools.*;

/**
 * Created by hexianglin on 2017/9/26.
 */

@Controller
@RequestMapping("/admin") // url:/模块/资源/{id}/细分 /seckill/list
public class AdminController {


    @Value("${file.savepath}")
    private String FILEPATH;


    private Logger logger = LoggerFactory.getLogger(this.getClass());

    private String AD_PICTURES_LOCATION = "/Users/hexianglin/Desktop/pop/projects/test/ssm/fileupload";
    @Autowired
    private VendorService vendorService;

    @Autowired
    private VendorrecommendService vendorrecommendService;


    @Autowired
    private CommentService commentService;


    @Autowired
    private AdminuserService adminuserService;

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    private String index(HttpServletRequest request, HttpServletResponse response) {


        Adminuser admin_user = getCookieUser(request);
        if (admin_user != null) {
        }
        // list.jsp + model = ModelAndView
        return "admin/h5/index";// WEB-INF/jsp/"list".jsp
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    private String login() {


        List<Adminuser> useList = adminuserService.getList();
        if (useList != null) {

        }
        return "admin/h5/login";
    }

    @RequestMapping(value = "/add_vendor", method = RequestMethod.GET)
    private String add_vendor() {
        return "admin/h5/add_vendor";
    }


    @RequestMapping(value = "/test", method = RequestMethod.GET)
    private String test() {
        String ass = FILEPATH;

        return "admin/h5/test";
    }


    @RequestMapping(value = "/vendor/add", method = RequestMethod.POST, produces = {"application/json; charset=utf-8"})
    @ResponseBody
    private Map<String, Object> addvendor_post(HttpServletRequest request, HttpServletResponse response) {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("msg", "no");

        String name = request.getParameter("name").trim();
        String address = request.getParameter("address").trim();
        Float address_point_x = Float.parseFloat(request.getParameter("address_point_x"));
        Float address_point_y = Float.parseFloat(request.getParameter("address_point_y"));
        //String logo = request.getParameter("logo").trim();
        int sale_percapitaprice = Integer.parseInt(request.getParameter("sale_percapitaprice"));
        String sale_cookingstyle = request.getParameter("sale_cookingstyle").trim();
        String business_hours = request.getParameter("business_hours").trim();
        String imgs = request.getParameter("imgs").trim();

        String imgs_logo = request.getParameter("imgs_logo").trim();

        int shop_type = Integer.parseInt(request.getParameter("shop_type"));

        List<String> list_logo = Arrays.asList(imgs_logo.split("\\|"));
        for (String n : list_logo) {
            if (!Strings.isNullOrEmpty(n)) {
                imgs_logo = n;
            }
        }

        Long time_long = DateUtil.dateToStamp(new Date());

        //String totdy= DateUtil.stampToDate(time_long);
        Vendor v_model = new Vendor();
        v_model.setAddtime(time_long);
        v_model.setAddress(address);
        v_model.setAddresspointx(address_point_x);
        v_model.setAddresspointy(address_point_y);
        v_model.setBusinesshours(business_hours);
        v_model.setLogo(imgs_logo);
        v_model.setName(name);
        v_model.setSalecookingstyle(sale_cookingstyle);
        v_model.setSalepercapitaprice(sale_percapitaprice);
        v_model.setSelluserid(0);
        v_model.setShoptype(shop_type);
        v_model.setStatus(1);

        Long a = vendorService.insert(v_model);
        if (a > 0) {
            List<String> list_imgs = Arrays.asList(imgs.split("\\|"));
            for (String n : list_imgs) {
                if (!Strings.isNullOrEmpty(n)) {
                    Vendorrecommend ventity = new Vendorrecommend();
                    ventity.setAddtime(0);
                    ventity.setContent("");
                    ventity.setPic(n);
                    ventity.setPicposition(1);
                    ventity.setTitle("");
                    ventity.setVendorId(v_model.getVendor_id());

                    Long clong = vendorrecommendService.insert(ventity);
                    if (clong > 0) {
                        map.put("msg", "ok");
                    }

                }
            }

            //map.put("msg", "ok");
        }
        return map;

    }

    @RequestMapping(value = "/loginvalidate", method = RequestMethod.POST, produces = {"application/json; charset=utf-8"})
    @ResponseBody
    private Map<String, Object> login_post(HttpServletRequest request, HttpServletResponse response) {


        Map<String, Object> map = new HashMap<String, Object>();
        map.put("msg", "no");
        String name = request.getParameter("u");
        String password = request.getParameter("p");


        String reStr = "";
        if (name == null || name.equals("")
                || password == null || password.equals("")) {
            map.put("msg", "no");
        } else {
            try {
                Adminuser model = adminuserService.UserLogin(name, password);

                if (model != null && model.getUserid() > 0) {
                    map.put("msg", "ok");


                    Cookie cookie = new Cookie("userid", model.getUserid().toString());
                    Cookie cookie2 = new Cookie("username", model.getLoginName());
                    response.addCookie(cookie);
                    response.addCookie(cookie2);

                }
            } catch (Exception ex) {

            }


        }
        return map;

    }

    private Adminuser getCookieUser(HttpServletRequest ReadCookieMap) {


        Adminuser mymodel = null;
        Map<String, Cookie> mycookies = ReadCookieMap(ReadCookieMap);
        if (mycookies != null && mycookies.size() > 0) {
            String val = mycookies.get("userid").getValue();
            Long user_id = Long.parseLong(val);

            mymodel = adminuserService.selectByPrimaryKey(user_id);
        }
        return mymodel;

    }

    private static Map<String, Cookie> ReadCookieMap(HttpServletRequest request) {
        Map<String, Cookie> cookieMap = new HashMap<String, Cookie>();
        Cookie[] cookies = request.getCookies();
        if (null != cookies) {
            for (Cookie cookie : cookies) {
                cookieMap.put(cookie.getName(), cookie);
            }
        }
        return cookieMap;
    }

    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public
    @ResponseBody
    String upload(HttpServletRequest request, @RequestParam(value = "file", required = false) MultipartFile file) {
        String fileName = "error";
        try {
            Random rand = new Random();
            Long longName = rand.nextLong();
            fileName = longName.toString().replace('-', '1') + "_" + file.getOriginalFilename();

            File f = new File(FILEPATH + "/" + fileName);
            try {
                FileUtils.copyInputStreamToFile(file.getInputStream(), f);
            } catch (IOException e) {
                e.printStackTrace();
                fileName = e.toString();
            }

        } catch (Exception e) {
            fileName = e.toString();
        }
        return fileName;

    }
}

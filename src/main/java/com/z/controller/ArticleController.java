package com.z.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/article")
public class ArticleController {
    
    /**
     * 注意：BaseController 中有xss过滤，会处理掉 ueditor 中的html
     * 
     * 所以你可以不继承它，或者注释掉BaseController中防止xss的代码
     * 
     * 毕竟管理平台几乎都是内网
     * 
     */
    @GetMapping("create")
    public String create() {
        return "admin/article/create";
    }
    
}

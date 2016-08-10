package com.growing.pains.main.web.controller.blog;

import com.growing.pains.main.web.auth.annotation.Auth;
import com.growing.pains.main.web.auth.annotation.Authority;
import com.growing.pains.service.blog.BlogService;
import com.growing.pains.service.system.UserService;
import org.apache.commons.lang3.time.DateFormatUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

/**
 * @author miaoxing
 *         DATE:   16/6/29
 */
@Controller
public class IndexController {

    @Resource
    private BlogService blogService;

    @Resource
    private UserService userService;

    @Authority(Auth.PUBLIC)
    @RequestMapping(value = {"", "/index"}, method = RequestMethod.GET)
    public ModelAndView index() {
        return new ModelAndView("blog/index")
                .addObject("blogTotal", blogService.countTotalBlog())
                .addObject("lastTime", DateFormatUtils.format(blogService.getLastBlog().getCreateTime(), "yyyy-MM-dd"))
                .addObject("userTotal", userService.countTotalUser());
    }
}

package com.ticket.controller;

import com.ticket.data.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.ticket.service.TestService;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

    @Autowired
    private TestService testService;

    @RequestMapping("/")
    public ModelAndView main() {
        ModelAndView m = new ModelAndView();
        m.setViewName("index");
        m.addObject("data", testService.getTestData());
        return m;
    }

    @RequestMapping("/seat")
    public String seat() {
        return "seat";
    }

}

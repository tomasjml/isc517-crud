package com.isc517.crud.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class AppController {
    /**
     * http://localhost:8080/
     *
     * @param model
     * @return
     */
    @RequestMapping("/")
    public String getIndex(Model model) {
        return "/index";
    }
}

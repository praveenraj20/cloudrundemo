package com.cloudrun.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/v1/app")
public class DemoController {
    @GetMapping(value = "/hello")
    public String get() {
        return "Hello World...";
    }
}


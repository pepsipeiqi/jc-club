package com.jingdianjichi.subject.application.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Tag(name = "测试模块")
@RestController
@RequestMapping("/test")
public class TestController {

    @Operation(summary = "hello测试接口")
    @GetMapping("/hello")
    public String hello() {
        return "Hello 鸡翅题目微服务!";
    }
} 
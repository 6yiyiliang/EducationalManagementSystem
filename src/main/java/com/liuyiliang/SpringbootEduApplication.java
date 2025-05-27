package com.liuyiliang;

import lombok.extern.slf4j.Slf4j;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import java.awt.Desktop;
import java.net.URI;

@Slf4j
@SpringBootApplication
@MapperScan("com.liuyiliang.mapper")
public class SpringbootEduApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringbootEduApplication.class, args);
        log.info("项目启动。。。。。");

        try {
            if (Desktop.isDesktopSupported()) {
                Desktop.getDesktop().browse(new URI("http://localhost:8080"));
            } else {
                log.warn("当前环境不支持自动打开浏览器，请手动访问: http://localhost:8080");
            }
        } catch (Exception e) {
            log.error("自动打开浏览器失败:", e);
        }
    }
}


package cn.com.siemens.trm.controller;

import cn.com.siemens.trm.entities.DatabaseMeta;
import cn.com.siemens.trm.service.DatabaseMetaService;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DatabaseMetaController {

    @Autowired
    DatabaseMetaService databaseMetaService;

    @RequestMapping("/db")
    @ResponseBody
    public String getDatabaseById(int id) {
        DatabaseMeta databaseMeta = databaseMetaService.getDatabaseMeta(id);
        return JSONObject.toJSONString(databaseMeta);
    }

    @RequestMapping("/hello")
    public String index() {
        return "hello world!";
    }
}

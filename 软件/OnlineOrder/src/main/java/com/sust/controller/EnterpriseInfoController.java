package com.sust.controller;

import com.sust.model.TEnterpriseInfo;
import com.sust.service.EnterpriseInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import java.util.List;

/**
 * OnlineOrder
 * com.sust.controller
 * 2018/4/19
 */
@Controller
@RequestMapping("/home")
public class EnterpriseInfoController {

    @Resource
    private EnterpriseInfoService enterpriseInfoService;
    @RequestMapping(value = "/enterpriseInfoList",method = RequestMethod.GET)
    public String enterpriseInfoList(Model model){
        List<TEnterpriseInfo> tEnterpriseInfos = enterpriseInfoService.queryByPage();
        model.addAttribute("tEnterpriseInfos",tEnterpriseInfos);
        return "list";
    }

    @RequestMapping(value = "/enterpriseInfo",method = RequestMethod.GET)
    public String enterpriseInfoDedail(Model model){
        List<TEnterpriseInfo> tEnterpriseInfos = enterpriseInfoService.queryByPage();
        model.addAttribute("tEnterpriseInfos",tEnterpriseInfos);
        return "list";
    }
}

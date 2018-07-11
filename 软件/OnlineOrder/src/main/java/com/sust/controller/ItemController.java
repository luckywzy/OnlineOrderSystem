package com.sust.controller;

import com.google.common.base.Preconditions;
import com.google.common.collect.Maps;
import com.sust.model.TItem;
import com.sust.service.ItemService;
import com.sust.utils.IdUtils;
import com.sust.utils.JsonUtils;
import com.sust.utils.Result;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 对菜品的管理
 * OnlineOrder
 * com.sust.controller
 * 2018/4/19
 */
@Controller
@RequestMapping("/admin/item")
public class ItemController {
    private static final org.slf4j.Logger logger = LoggerFactory.getLogger(ItemController.class);
    @Resource
    ItemService itemService;

    @RequestMapping("/itemOfEnterprise")
    public String list(@RequestParam(value = "enterpriseid", required = true) String enterpriseid, Model model) {
        enterpriseid="00013000000000000001";
        List<TItem> items = itemService.queryByPage(enterpriseid);
        model.addAttribute("items", items);
        model.addAttribute("enterpriseid", enterpriseid);
        return "back/admin-item-manager";
    }


    @RequestMapping(value = "/modify",method = RequestMethod.POST)
    @ResponseBody
    public String listdedail(@RequestParam(value = "itemId", required = true) String itemId,
                             @RequestParam(value = "itemName", required = true) String itemName,
                             @RequestParam(value = "itemPrice", required = true) String itemPrice,
                             @RequestParam(value = "itemDesc", required = true) String itemDesc,
                             @RequestParam(value = "itemType", required = true) String itemType,
                             Model model) {

        TItem item = new TItem();
        item.setItemId(itemId);
        item.setItemName(itemName);
        item.setItemDesc(itemDesc);
        item.setItemPrice(BigDecimal.valueOf(Double.valueOf(itemPrice)));
        item.setItemType(Byte.valueOf(itemType));
        logger.info("update:item:{}",item);
        boolean ok = itemService.updateByItem(item);
        if(ok ){
            return  JsonUtils.objectToJson(Result.build(0, "更新成功"));
        }else {
            return  JsonUtils.objectToJson(Result.build(1, "更新失败"));
        }
    }

    /**
     * 新增item
     *
     * @param itemName
     * @param itemPrice
     * @param itemDesc
     * @param itemType
     * @param itemPic
     * @return
     */
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public String toaddItemPage(@RequestParam(value = "itemName", required = true) String itemName,
                                @RequestParam(value = "itemPrice", required = true) Double itemPrice,
                                @RequestParam(value = "itemDesc", required = true) String itemDesc,
                                @RequestParam(value = "itemType", required = true) String itemType,
                                @RequestParam(value = "itemPic", required = true) String itemPic,
                                HttpServletRequest request) throws IOException {

        TItem item = new TItem();
        String enterpriseid="00013000000000000001";
        item.setEnterpriseId(enterpriseid);
        item.setItemId(IdUtils.getNextId());
        item.setItemName(itemName);
        item.setItemPrice(BigDecimal.valueOf(itemPrice));
        item.setItemDesc(itemDesc);
        item.setItemType(Byte.valueOf(itemType));
        item.setItemPic(itemPic);
        boolean b = itemService.insertByItem(item);
        if(b) {
            return JsonUtils.objectToJson(Result.build(0, "添加成功"));
        }
        return JsonUtils.objectToJson(Result.build(1, "添加失败"));
    }

    @RequestMapping(value = "/uploadImg",method = RequestMethod.POST)
    @ResponseBody
    public String uploadImg(@RequestParam(value = "uploadimg", required = true) CommonsMultipartFile file,
                            HttpServletRequest request) throws IOException {
        String path = uploadFile(file,request);
        if(path != null){
            HashMap<String , String > data = new HashMap<>();
            data.put("imgPath",path);
            return JsonUtils.objectToJson(Result.build(0, "上传图片成功",data));
        }
        return JsonUtils.objectToJson(Result.build(1, "上传图片失败"));
    }

    /**
     * 新增菜品，成功跳转 菜品列表页
     *
     * @param item
     * @param model
     * @return
     */
    /*@RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addItem(
            @ModelAttribute("item") TItem item, Model model) {
        String enterpriseId = item.getEnterpriseId();
        boolean ok = itemService.insertByItem(item);
        if (ok) {
            model.addAttribute("enterpriseid", enterpriseId);
            return "redirect:/item/itemOfEnterprise";
        } else {
            logger.error("插入item失败，入参：{}", item);
            return "redirect:/common/error";
        }
    }*/

    /**
     * 根据Id删除item
     *
     * @param itemId
     * @return
     */
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    @ResponseBody
    public String deleteItem(@RequestParam(value = "itemId", required = true) String itemId) {

        Preconditions.checkNotNull(itemId, "菜品Id不可为空");

        boolean ok = itemService.deleteItemById(itemId);
        if (ok) {
            return JsonUtils.objectToJson(Result.build(0, "删除成功"));
        } else {
            return JsonUtils.objectToJson(Result.build(1, "删除失败"));
        }
    }

    private String uploadFile(MultipartFile file, HttpServletRequest request) throws IOException {
        //如果文件不为空，写入上传路径
        if(!file.isEmpty()) {
            //上传文件路径
            String subpath = "/upload/";
            String path = request.getServletContext().getRealPath(subpath);
            //上传文件名
            String srcfilename = file.getOriginalFilename();
            String suffix = srcfilename.substring(srcfilename.indexOf("."));
            String filename = IdUtils.getNextId()+suffix;
            File filepath = new File(path, filename);
            //判断路径是否存在，如果不存在就创建一个
            if (!filepath.getParentFile().exists()) {
                filepath.getParentFile().mkdirs();
            }
            //将上传文件保存到一个目标文件当中
            file.transferTo(new File(path + File.separator + filename));
            logger.info("imgPath : {}:{}",path,filename);
            return subpath + filename;
        }
        return null;
    }

}

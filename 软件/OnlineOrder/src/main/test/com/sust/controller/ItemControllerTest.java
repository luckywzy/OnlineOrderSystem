package com.sust.controller;

import com.sust.model.TItem;
import com.sust.utils.IdWorker;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.ContextHierarchy;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import java.math.BigDecimal;

import static org.junit.Assert.*;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

/**
 * 2018/4/24
 */
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextHierarchy({ @ContextConfiguration(name = "parent", locations = "classpath*:spring/applicationContext-*.xml"),
        @ContextConfiguration(name = "child", locations = "classpath:spring/spring-mvc.xml") })
public class ItemControllerTest {
    private static final Logger logger = LoggerFactory.getLogger(EnterpriseInfoControllerTest.class);
    @Autowired
    private WebApplicationContext wac;
    private MockMvc mockMvc;

    @Before
    public void setUp() throws Exception {
        mockMvc = MockMvcBuilders.webAppContextSetup(wac).build();
    }

    @Test
    public void list() throws Exception {
        MvcResult result = mockMvc.perform(
                MockMvcRequestBuilders.get("/item/itemOfEnterprise")
                        .param("enterpriseid", "00013000000000000001"))
                .andExpect(status().isOk())
                .andDo(print())
                .andReturn();

        logger.info("item of enterpriseid:{}", result.getResponse().getContentAsString());
    }

    @Test
    public void listdedail() throws Exception {
    }

    @Test
    public void toaddItemPage() throws Exception {
    }

    @Test
    public void addItem() throws Exception {
        TItem item = new TItem();
        item.setEnterpriseId("00013000000000000001");
        item.setItemName("京酱肉丝");
        IdWorker idWorker = new IdWorker();
        long id = idWorker.nextId();
        item.setItemId(String.valueOf(id));
        item.setItemPic("http://recipe0.hoto.cn/pic/recipe/l/10/8d/232720_7e3444.jpg");
        item.setItemPrice(new BigDecimal(25.5));
        item.setItemDesc("京酱肉丝是一道知名度很高的京菜，北京菜中的经典名菜之一，选用猪瘦肉为主料，辅以甜面酱、葱、姜及其它调料，用北方特有烹调技法“六爆”之一的“酱爆”烹制而成。成菜后，咸甜适中，酱香浓郁，风味独特。");
        item.setItemType(new Byte("2"));

        MvcResult result = mockMvc.perform(
                MockMvcRequestBuilders.post("/item/add")
                        .requestAttr("item", item))
                .andExpect(status().is3xxRedirection())
                .andDo(print())
                .andReturn();

        logger.info("插入结果：{}",result.getResponse().getContentAsString());
    }

}
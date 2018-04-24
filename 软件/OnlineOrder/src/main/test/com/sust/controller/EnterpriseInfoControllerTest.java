package com.sust.controller;

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
import org.springframework.test.web.servlet.request.MockHttpServletRequestBuilder;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import static org.junit.Assert.*;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextHierarchy({ @ContextConfiguration(name = "parent", locations = "classpath*:spring/applicationContext-*.xml"),
        @ContextConfiguration(name = "child", locations = "classpath:spring/spring-mvc.xml") })
public class EnterpriseInfoControllerTest {
    private static final Logger logger = LoggerFactory.getLogger(EnterpriseInfoControllerTest.class);
    @Autowired
    private WebApplicationContext wac;
    private MockMvc mockMvc;

    @Before
    public void setUp() throws Exception {
        mockMvc = MockMvcBuilders.webAppContextSetup(wac).build();
    }

    @Test
    public void enterpriseInfoList() throws Exception  {
        MvcResult result = mockMvc.perform(MockMvcRequestBuilders.get("/enterpriseInfo/enterpriseInfoList"))
                .andExpect(status().isOk())
                .andDo(print())
                .andReturn();
        logger.info(result.getResponse().getContentAsString());
    }
}
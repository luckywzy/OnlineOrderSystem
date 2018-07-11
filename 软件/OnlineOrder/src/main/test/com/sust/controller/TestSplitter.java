package com.sust.controller;

import com.google.common.base.Splitter;
import org.junit.Test;

import java.util.Map;
import java.util.function.BiConsumer;

public class TestSplitter {

    @Test
    public void sp(){
        String s = "3,1;4,2;";
        int index = s.lastIndexOf(";");
        s= s.substring(0, index);
        Map<String,String> itemIdAndCnt = Splitter.on(';').withKeyValueSeparator(',').split(s);
        itemIdAndCnt.forEach(new BiConsumer<String, String>() {
            @Override
            public void accept(String s, String s2) {
                System.out.println(s+":"+s2);
            }
        });
    }
}

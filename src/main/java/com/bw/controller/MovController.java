package com.bw.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bw.entity.Moven;
import com.bw.service.MovService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class MovController {
       @Resource
       private MovService service;
       
       @RequestMapping("findAll.do")
       public String findAll(Model model,@RequestParam(required=false,defaultValue="1")Integer pageNum,String mname){
    	   
    	   List<Moven> list = service.findAll(mname);
    	   PageHelper pageHelper = new PageHelper();
    	   pageHelper.startPage(pageNum, 4);
    	   PageInfo<Moven> page = new PageInfo<Moven>(list);
    	   
    	   model.addAttribute("page", page);
    	   
    	   return "list";
       }
       
       @RequestMapping("save.do")
       @ResponseBody
       public boolean save(Moven m){
    	   System.out.println(m);
    	   int flg = service.save(m);
    	   return true;
       }
       
       @RequestMapping("toup.do")
       @ResponseBody
       public Moven toup(Integer mid){
    	   Moven m = service.toup(mid);
    	   
    	   
    	   return  m;
       }
       
       @RequestMapping("update.do")
       @ResponseBody
       public boolean update(Moven m){
    	   int i = service.update(m);
    	   
    	   return true;
       }
       @RequestMapping("delAll.do")
       @ResponseBody
       public boolean del(String mid){
    	   1111111111111111111111
    	   222222222222222222222
    	   int i = service.del(mid);
    	   return true;
    	   1111111111111111111111
    	   222222222222222222222
       }
}

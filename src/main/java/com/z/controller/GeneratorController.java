package com.z.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.z.commons.result.PageInfo;
import com.z.model.vo.UserVo;
import com.z.service.impl.GeneratorService;


@Controller
@RequestMapping("/generator")
public class GeneratorController {
	
	@Autowired
	private GeneratorService generatorService;

	@RequestMapping("/toList")
	public String toList(){
		return "admin/generator/databasetables";
	}
	
	
	@RequestMapping("/list")
	@ResponseBody
	public Object list(Integer page, Integer rows, String sort, String order){
		 PageInfo pageInfo = new PageInfo(page, rows, sort, order);
		 Map<String, Object> condition = new HashMap<String, Object>();
		 List<Map<String, Object>> tables = new ArrayList<Map<String, Object>>();
		 tables = generatorService.queryList();
		 
		 pageInfo.setRows(tables);
		return pageInfo;
	}
	
	
	/**
	 * 生成代码
	 */
	@RequestMapping("/code")
	public void code(HttpServletRequest request, HttpServletResponse response) throws IOException{
		String tableName = request.getParameter("tables");
		String[] tableNames = {tableName,};
		byte[] data = generatorService.generatorCode(tableNames);
		
		response.reset();  
        response.setHeader("Content-Disposition", "attachment; filename=\"code.zip\"");  
        response.addHeader("Content-Length", "" + data.length);  
        response.setContentType("application/octet-stream; charset=UTF-8");  
  
        IOUtils.write(data, response.getOutputStream());  
	}
}

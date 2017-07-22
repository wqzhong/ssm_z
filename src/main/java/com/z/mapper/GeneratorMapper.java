package com.z.mapper;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.z.model.Role;
import com.z.model.TableEntity;

/**
 * 代码生成器

 */
public interface GeneratorMapper extends BaseMapper<TableEntity>{
	
	List<Map<String, Object>> queryList();
	
	int queryTotal(Map<String, Object> map);
	
	Map<String, String> queryTable(String tableName);
	
	List<Map<String, String>> queryColumns(String tableName);
}

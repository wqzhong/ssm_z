package com.z.service;

import com.baomidou.mybatisplus.service.IService;
import com.z.commons.result.PageInfo;
import com.z.model.SysLog;

/**
 *
 * SysLog 表数据服务层接口
 *
 */
public interface ISysLogService extends IService<SysLog> {

    void selectDataGrid(PageInfo pageInfo);

}
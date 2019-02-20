package com.demo.dao;

import com.demo.domain.po.Collector;

public interface CollectorMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Collector record);

    int insertSelective(Collector record);

    Collector selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Collector record);

    int updateByPrimaryKey(Collector record);
}
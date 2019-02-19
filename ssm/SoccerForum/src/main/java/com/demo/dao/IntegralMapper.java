package com.demo.dao;

import com.demo.domain.po.Integral;

public interface IntegralMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Integral record);

    int insertSelective(Integral record);

    Integral selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Integral record);

    int updateByPrimaryKey(Integral record);
}
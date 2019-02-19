package com.demo.dao;

import com.demo.domain.po.Focususer;

public interface FocususerMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Focususer record);

    int insertSelective(Focususer record);

    Focususer selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Focususer record);

    int updateByPrimaryKey(Focususer record);
}
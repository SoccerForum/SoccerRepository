package com.demo.dao;

import com.demo.domain.po.League;

public interface LeagueMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(League record);

    int insertSelective(League record);

    League selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(League record);

    int updateByPrimaryKey(League record);
}
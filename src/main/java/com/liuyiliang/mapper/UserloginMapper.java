package com.liuyiliang.mapper;

import com.liuyiliang.po.Userlogin;
import com.liuyiliang.po.UserloginExample;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface UserloginMapper {
    int countByExample(UserloginExample example);

    int deleteByExample(UserloginExample example);

    int deleteByPrimaryKey(Integer userid);

    int insert(Userlogin record);

    int insertSelective(Userlogin record);

    List<Userlogin> selectByExample(UserloginExample example);

    Userlogin selectByPrimaryKey(Integer userid);

    int updateByExampleSelective(@Param("record") Userlogin record, @Param("example") UserloginExample example);

    int updateByExample(@Param("record") Userlogin record, @Param("example") UserloginExample example);

    int updateByPrimaryKeySelective(Userlogin record);

    int updateByPrimaryKey(Userlogin record);
}
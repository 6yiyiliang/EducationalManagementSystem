package com.liuyiliang.mapper;

import com.liuyiliang.po.UserloginCustom;
import org.apache.ibatis.annotations.Mapper;

/**
 *  UserloginMapper扩展类
 */
@Mapper
public interface UserloginMapperCustom {

    UserloginCustom findOneByName(String name) throws Exception;

}

package com.liuyiliang.mapper;

import com.liuyiliang.po.TeacherCustom;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface TeacherMapperCustom {

    //分页查询老师信息
    List<TeacherCustom> findByPaging() throws Exception;

    //根据姓名模糊查找
    List<TeacherCustom> selectByName(TeacherCustom teacherCustom) throws Exception;

    //获取
}

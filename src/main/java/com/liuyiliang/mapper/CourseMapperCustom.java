package com.liuyiliang.mapper;

import com.liuyiliang.po.CourseCustom;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CourseMapperCustom {

    //分页查询学生信息
    List<CourseCustom> findByPaging() throws Exception;

    //根据姓名模糊查找
    List<CourseCustom> selectByName(CourseCustom courseCustom) throws Exception;

}

package com.liuyiliang.service.impl;

import com.liuyiliang.mapper.RoleMapper;
import com.liuyiliang.po.Role;
import com.liuyiliang.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleMapper roleMapper;

    public Role findByid(Integer id) throws Exception {
        return roleMapper.selectByPrimaryKey(id);
    }
}

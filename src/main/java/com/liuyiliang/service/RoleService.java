package com.liuyiliang.service;

import com.liuyiliang.po.Role;

/**
 *  Role 权限表Service层
 */
public interface RoleService {

    Role findByid(Integer id) throws Exception;

}

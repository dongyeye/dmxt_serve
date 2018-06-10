package fzu.edu.dmxt.service.impl;

import fzu.edu.dmxt.dao.RoleDao;
import fzu.edu.dmxt.pojo.Role;
import fzu.edu.dmxt.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoleServiceImpl implements RoleService{
    @Autowired
    private RoleDao roleDao;
    @Override
    public Role get(int id){
        Role role = roleDao.get(id);
        return role;
    }
}

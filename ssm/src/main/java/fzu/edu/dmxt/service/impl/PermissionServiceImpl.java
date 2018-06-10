package fzu.edu.dmxt.service.impl;

import fzu.edu.dmxt.dao.PermissionDao;
import fzu.edu.dmxt.pojo.Permission;
import fzu.edu.dmxt.service.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PermissionServiceImpl implements PermissionService{
    @Autowired
    private PermissionDao permissionDao;

    @Override
    public Permission get(int per_id){
        Permission permission=permissionDao.get(per_id);
        return permission;
    }
}

package fzu.edu.dmxt.service.impl;

import fzu.edu.dmxt.dao.RegisterDao;
import fzu.edu.dmxt.pojo.Register;
import fzu.edu.dmxt.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RegisterServiceImpl implements RegisterService{
    @Autowired
    private RegisterDao registerDao;

    @Override
    public int add(Register register){
        return  registerDao.add(register);
    }
    @Override
    public Register findRegister(int course_ID){
        return registerDao.findRegister(course_ID);
    }

    @Override
    public Register get(int register_ID){
        return registerDao.get(register_ID);
    }
    @Override
    public void update(Register register){
        registerDao.update(register);
    }

    @Override
    public List<Register> listRegister(int course_ID){
        return registerDao.listRegister(course_ID);
    }
}

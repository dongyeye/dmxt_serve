package fzu.edu.dmxt.service.impl;

import fzu.edu.dmxt.dao.RegisterdetailDao;
import fzu.edu.dmxt.pojo.Registerdetail;
import fzu.edu.dmxt.service.RegisterdetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RegisterdetailServiceImpl implements RegisterdetailService{
    @Autowired
    private RegisterdetailDao registerdetailDao;

    @Override
    public void add(Registerdetail registerdetail){
        registerdetailDao.add(registerdetail);
    }

    @Override
    public Registerdetail findRegisterdetail(Registerdetail registerdetail){
        return registerdetailDao.findRegisterdetail(registerdetail);
    }

    @Override
    public void update(Registerdetail registerdetail){
        registerdetailDao.update(registerdetail);
    }

    @Override
    public List<Registerdetail> listRegisterdetail(int register_ID){
        return registerdetailDao.listRegisterdetail(register_ID);
    }
    @Override
    public List<Registerdetail> listByCourse(int course_ID){
        return registerdetailDao.listByCourse(course_ID);
    }
    @Override
    public int total(Registerdetail registerdetail){
        return registerdetailDao.total(registerdetail);
    }
}

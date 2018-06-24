package fzu.edu.dmxt.service.impl;

import fzu.edu.dmxt.dao.NamerecordDao;
import fzu.edu.dmxt.pojo.Namerecord;
import fzu.edu.dmxt.service.NamerecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NamerecordServiceImpl implements NamerecordService{
    @Autowired
    private NamerecordDao namerecordDao;

    @Override
    public List<Namerecord> findByCourse(int course_ID){
        return namerecordDao.findByCourse(course_ID);
    }

    @Override
    public List<Namerecord> findByStudent(int sid){
        return namerecordDao.findByStudent(sid);
    }

    @Override
    public void delete(Namerecord namerecord){
        namerecordDao.delete(namerecord);
    }

    @Override
    public int add(Namerecord namerecord){
        return namerecordDao.add(namerecord);
    }

    @Override
    public Namerecord findNamerecord(Namerecord namerecord){
        return namerecordDao.findNamerecord(namerecord);
    }

    @Override
    public void deleteByCourse(int coures_ID){
        namerecordDao.deleteByCourse(coures_ID);
    }

    @Override
    public void update(Namerecord namerecord){
        namerecordDao.update(namerecord);
    }
}

package fzu.edu.dmxt.service.impl;

import fzu.edu.dmxt.dao.TeacherDao;
import fzu.edu.dmxt.pojo.Teacher;
import fzu.edu.dmxt.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TeacherServiceImpl implements TeacherService{
    @Autowired
    private TeacherDao teacherDao;

    @Override
    public Teacher get(int id){
        Teacher teacher=teacherDao.get(id);
        return teacher;
    }
    @Override
    public void updateOnline(Teacher teacher){
        teacherDao.updateOnline(teacher);
    }
}

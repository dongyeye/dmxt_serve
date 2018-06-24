package fzu.edu.dmxt.service.impl;

import fzu.edu.dmxt.dao.TeacherDao;
import fzu.edu.dmxt.pojo.Teacher;
import fzu.edu.dmxt.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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
    @Override
    public int add(Teacher teacher){
        return teacherDao.add(teacher);
    }
    @Override
    public List<Teacher> listAll(){
        return teacherDao.listAll();
    }
    @Override
    public Teacher findByPhone(String tel){
        return teacherDao.findByPhone(tel);
    }
    @Override
    public void delete(Teacher teacher){teacherDao.delete(teacher);}
    @Override
    public void update(Teacher teacher){teacherDao.update(teacher);}
    @Override
    public Teacher findbyteacher_ID(int teacher_ID) {
        Teacher teacher=teacherDao.findbyteacher_ID(teacher_ID);
        return teacher;

    }
}

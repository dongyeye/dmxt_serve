package fzu.edu.dmxt.service.impl;

import fzu.edu.dmxt.dao.StudentDao;
import fzu.edu.dmxt.pojo.Student;
import fzu.edu.dmxt.service.StudentService;
import fzu.edu.dmxt.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService{
    @Autowired
    private StudentDao studentDao;
    @Override
    public Student get(int id){
        Student student=studentDao.get(id);
        return student;
    }
    @Override
    public void updateOnline(Student student){
        studentDao.updateOnline(student);
    }
    @Override
    public List<Student> list(Page page) {
        return studentDao.list(page);
    }

    @Override
    public int total() {
        return studentDao.total();
    }
    @Override
    public  int add(Student student){
        return studentDao.add(student);
    }
}

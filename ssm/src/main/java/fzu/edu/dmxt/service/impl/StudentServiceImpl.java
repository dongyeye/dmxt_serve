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
    public List<Student> listAll() {
        return studentDao.listAll();
    }

    @Override
    public int total() {
        return studentDao.total();
    }
    @Override
    public  int add(Student student){
        return studentDao.add(student);
    }
    @Override
    public void update(Student student){
        studentDao.update(student);
    }
    //Author:zyd
    @Override
    public void delete(Student student) {studentDao.delete(student);}
    @Override
    public Student findbystudent_ID(int student_ID) {
        Student student=studentDao.findbystudent_ID(student_ID);
        return student;
    }
    @Override
    public List<Student> findClassmate(Student student){
        return studentDao.findClassmate(student);
    }
    @Override
    public Student findByPhone(String tel){
        return studentDao.findByPhone(tel);
    }
}

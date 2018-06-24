package fzu.edu.dmxt.service;

import fzu.edu.dmxt.pojo.Student;
import fzu.edu.dmxt.util.Page;

import java.util.List;

public interface StudentService {
    Student get(int id);
    void updateOnline(Student student);

    public List<Student> list(Page page);

    public List<Student> listAll();

    public int total();

    int add(Student student);

    void update(Student student);
    void delete(Student student);
    Student findbystudent_ID(int student_ID);
    List<Student> findClassmate(Student student);
    Student findByPhone(String tel);
}

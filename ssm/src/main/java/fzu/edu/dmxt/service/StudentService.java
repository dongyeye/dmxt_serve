package fzu.edu.dmxt.service;

import fzu.edu.dmxt.pojo.Student;
import fzu.edu.dmxt.util.Page;

import java.util.List;

public interface StudentService {
    Student get(int id);
    void updateOnline(Student student);

    public List<Student> list(Page page);

    public int total();

    int add(Student student);
}

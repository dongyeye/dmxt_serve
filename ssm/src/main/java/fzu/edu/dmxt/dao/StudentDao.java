package fzu.edu.dmxt.dao;

import fzu.edu.dmxt.pojo.Student;
import fzu.edu.dmxt.util.Page;

import java.util.List;

public interface StudentDao {
    Student get(int id);
    void updateOnline(Student student);

    public List<Student> list(Page page);

    public int total();

    int add(Student student);
}

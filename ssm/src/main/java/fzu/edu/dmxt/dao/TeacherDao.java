package fzu.edu.dmxt.dao;

import fzu.edu.dmxt.pojo.Teacher;

import java.util.List;

public interface TeacherDao {
    Teacher get(int id);
    void updateOnline(Teacher teacher);
    int add(Teacher teacher);
    List<Teacher> listAll();
    Teacher findByPhone(String tel);
    void delete(Teacher teacher);
    void update(Teacher teacher);
    Teacher findbyteacher_ID(int teacher_ID);
}

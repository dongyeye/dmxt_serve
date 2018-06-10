package fzu.edu.dmxt.dao;

import fzu.edu.dmxt.pojo.Teacher;

public interface TeacherDao {
    Teacher get(int id);
    void updateOnline(Teacher teacher);
}

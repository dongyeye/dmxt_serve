package fzu.edu.dmxt.service;

import fzu.edu.dmxt.pojo.Teacher;

public interface TeacherService {
    Teacher get(int id);
    void updateOnline(Teacher teacher);
}

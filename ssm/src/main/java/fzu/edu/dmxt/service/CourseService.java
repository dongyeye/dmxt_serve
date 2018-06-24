package fzu.edu.dmxt.service;

import fzu.edu.dmxt.pojo.Course;
import fzu.edu.dmxt.pojo.Teacher;

import java.util.List;

public interface CourseService {

    List<Course> findByTeacher(int teacherID);

    int add(Course course);

    void updateCourseNumber(Course course);

    void delete(int id);

    int update(Course course);

    Course get(int id);


}

package fzu.edu.dmxt.dao;

import fzu.edu.dmxt.pojo.Course;
import fzu.edu.dmxt.pojo.Teacher;

import java.util.List;

public interface CourseDao {

    List<Course> findByTeacher(int teacherID);

    Course get(int id);

    int add(Course course);

    void updateCourseNumber(Course course);

    void delete(int id);

    int update(Course course);


}

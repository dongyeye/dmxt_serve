package fzu.edu.dmxt.service.impl;

import fzu.edu.dmxt.dao.CourseDao;
import fzu.edu.dmxt.pojo.Course;
import fzu.edu.dmxt.pojo.Teacher;
import fzu.edu.dmxt.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CourseServiceImpl implements CourseService{
    @Autowired
    private CourseDao courseDao;

    @Override
    public List<Course> findByTeacher(int teacherID){
        return courseDao.findByTeacher(teacherID);
    }
    @Override
    public int add(Course course){
        return courseDao.add(course);
    }
    @Override
    public void updateCourseNumber(Course course){
        courseDao.updateCourseNumber(course);
    }

    @Override
    public void delete(int id){
        courseDao.delete(id);
    }

    @Override
    public int update(Course course){
        return courseDao.update(course);
    }

    @Override
    public Course get(int id){
        return courseDao.get(id);
    }


}

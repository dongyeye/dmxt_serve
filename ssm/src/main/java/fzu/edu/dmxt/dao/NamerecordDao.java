package fzu.edu.dmxt.dao;

import fzu.edu.dmxt.pojo.Course;
import fzu.edu.dmxt.pojo.Namerecord;

import java.util.List;

public interface NamerecordDao {
    List<Namerecord> findByCourse(int course_ID);
    List<Namerecord> findByStudent(int sid);
    void delete(Namerecord namerecord);
    int add(Namerecord namerecord);
    Namerecord findNamerecord(Namerecord namerecord);
    void deleteByCourse(int course_ID);
    void update(Namerecord namerecord);
}

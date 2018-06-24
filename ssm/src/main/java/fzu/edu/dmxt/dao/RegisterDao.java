package fzu.edu.dmxt.dao;

import fzu.edu.dmxt.pojo.Register;

import java.util.List;

public interface RegisterDao {
    Register get(int register_ID);
    int add(Register register);
    Register findRegister(int course_ID);
    void update(Register register);
    List<Register> listRegister(int course_ID);
}

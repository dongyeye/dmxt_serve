package fzu.edu.dmxt.dao;

import java.util.List;

import fzu.edu.dmxt.pojo.Category;

public interface CategoryDao {


    public int add(Category category);


    public void delete(int id);


    public Category get(int id);


    public int update(Category category);


    public List<Category> list();


    public int count();



}
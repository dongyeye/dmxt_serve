package fzu.edu.dmxt.service.impl;

import java.util.List;

import fzu.edu.dmxt.dao.CategoryDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fzu.edu.dmxt.pojo.Category;
import fzu.edu.dmxt.service.CategoryService;

@Service
public class CategoryServiceImpl  implements CategoryService{
	@Autowired
	CategoryDao categoryDao;
	
	
	public List<Category> list(){
		return categoryDao.list();
	};

}

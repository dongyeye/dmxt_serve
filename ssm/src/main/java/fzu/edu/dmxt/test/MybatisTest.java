package fzu.edu.dmxt.test;

import java.util.List;

import fzu.edu.dmxt.dao.CategoryDao;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import fzu.edu.dmxt.pojo.Category;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class MybatisTest {

	@Autowired
	private CategoryDao categoryDao;

	@Test
	public void testAdd() {
		Category category = new Category();
		category.setName("new Category");
		categoryDao.add(category);
	}

	@Test
	public void testList() {
		System.out.println(categoryDao);
		List<Category> cs=categoryDao.list();
		for (Category c : cs) {
			System.out.println(c.getName());
		}
	}

}

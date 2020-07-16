package com.planetpope.micro1;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class Micro1ApplicationTests {

	@Test
	public void contextLoads() {
	}

	@Test
	public void testHomeController() {
			HomeController homeController = new HomeController();
			String result = homeController.home();
			assertEquals(result, "Hello World!");
	}

}

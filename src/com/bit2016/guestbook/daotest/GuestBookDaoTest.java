package com.bit2016.guestbook.daotest;

import java.util.List;

import com.bit2016.guestbook.dao.GuestBookDao;
import com.bit2016.guestbook.vo.GuestBookVo;

public class GuestBookDaoTest {

	public static void main(String[] args) {
		//insertTest();
		//deleteTest();
		getListTest();
		
	}

	public static void getListTest() {
		GuestBookDao dao = new GuestBookDao();
		List<GuestBookVo> list = dao.getList();

		for (GuestBookVo vo : list) {
			System.out.println(vo);
		}
	}
	
	public static void insertTest() {
		GuestBookVo vo = new GuestBookVo();
		vo.setName("김334");
		vo.setContent("4영영조");
		vo.setPassword("33");

		GuestBookDao dao = new GuestBookDao();
		dao.insert(vo);
	}
	
	public static void deleteTest() {
		GuestBookDao dao = new GuestBookDao();

		GuestBookVo vo1 = new GuestBookVo();
		vo1.setNo(8l);
		vo1.setPassword("33");
		dao.delete(vo1);
	}
}

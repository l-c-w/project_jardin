package com.javalec.ex.Controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class Community_Controller {

	@Autowired
	private SqlSession sqlsession;

}

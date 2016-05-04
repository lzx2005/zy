package com.zy.controller;

import com.jfinal.core.Controller;

public class IndexController extends Controller {
	public void index(){
		render("/WEB-INF/html/index.html");
	}
	public void table(){
		render("/WEB-INF/html/table.html");
	}
	public void write(){
		render("/WEB-INF/html/write.html");
	}
}


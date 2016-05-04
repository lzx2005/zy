package com.zy.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import com.jfinal.core.Controller;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;
import com.zy.model.Order;

public class IndexController extends Controller {
	public void index(){
		render("/WEB-INF/html/index.html");
	}
	public void table(){
		int page = getParaToInt(0,1);
		Page<Order> orders = Order.dao.findAll(page);
		setAttr("orders", orders);
		render("/WEB-INF/html/table.html");
	}
	public void write(){
		render("/WEB-INF/html/write.html");
	}
	
	
	public void add_sub(){
		String name = getPara("name");
		String progress = getPara("progress");
		String mission = getPara("mission");
		String inCharge = getPara("in_charge");
		String createDate = getPara("create_date");
		if(StrKit.notBlank(name,progress,mission,inCharge,createDate)){
			Order order = new Order();
			order.setCreateDate(Date.valueOf(createDate));
			order.setInCharge(inCharge);
			order.setMission(mission);
			order.setName(name);
			order.setProgress(Integer.parseInt(progress));
			order.save();
			redirect("/table");
		}else{
			redirect("/table");
		}
	}
	
	public void del_by_id(){
		//boolean success = false;
		List<Boolean> successs = new ArrayList<>();
		String id = getPara("id");
		if(StrKit.notBlank(id)){
			String[] ids = id.split(",");
			for(int i =0;i<ids.length;i++){
				boolean success =Order.dao.deleteById(ids[i]);
				successs.add(success);
			}
		}
		boolean containFalse = successs.contains(false);
		if(!containFalse){
			renderText(""+true);
		}
	}
}


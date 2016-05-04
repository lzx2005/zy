package com.zy.interceptor;

import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;

public class GInterceptor implements Interceptor {

	@Override
	public void intercept(Invocation inv) {
		// TODO Auto-generated method stub
		String actionkey = inv.getActionKey();
		inv.getController().setAttr("actionkey", actionkey);
		inv.invoke();
	}

}

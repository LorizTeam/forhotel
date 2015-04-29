/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.smict.struts.action;
import javax.servlet.http.HttpSession;
import java.util.*;
import java.sql.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.smict.struts.data.Login;
import com.smict.struts.form.EmployeeForm;



/** 
 * MyEclipse Struts
 * Creation date: 04-29-2015
 * 
 * XDoclet definition:
 * @struts.action path="/employee" name="employeeForm" input="/employee/index1.jsp" scope="request" validate="true"
 */
public class EmployeeAction extends Action {
	/*
	 * Generated Methods
	 */

	/** 
	 * Method execute
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		EmployeeForm employeeForm = (EmployeeForm) form;
		Login login = new Login();
		String forwardText ="success";
		// TODO Auto-generated method stub
		
		String submit = request.getParameter("submit"),
		username = request.getParameter("username"),
		password = request.getParameter("password");
		List emp_detail;
		if(submit != null){
			try {
				emp_detail = login.lempdetail(username, password);
				//request.setAttribute("emp_detail", emp_detail);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else{
			
		}
		return mapping.findForward(forwardText);
	}
}
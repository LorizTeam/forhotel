/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.smict.struts.action;

import java.sql.SQLException;
import java.util.*;
import java.sql.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.smict.struts.data.searchroomtypeid;
import com.smict.struts.form.Booking2Form;

/** 
 * MyEclipse Struts
 * Creation date: 04-25-2015
 * 
 * XDoclet definition:
 * @struts.action path="/booking2" name="booking2Form" input="/form/booking2.jsp" scope="request" validate="true"
 */
public class Booking2Action extends Action {
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
		Booking2Form booking2Form = (Booking2Form) form;
		searchroomtypeid srtid = new searchroomtypeid();
		String forwardText = "";
		/*
		// TODO Auto-generated method stub
		String submit = booking2Form.getSubmit();
		submit = submit.substring(7);
		String roomtype_id;
		try {
			roomtype_id = srtid.search_by_name(submit);
			HttpSession session = request.getSession();
			session.setAttribute("roomtype_id", roomtype_id);
			forwardText = "select_room";
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		int i = 0;
		return mapping.findForward(forwardText);
	}
}
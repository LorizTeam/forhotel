/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.smict.struts.action;

import java.sql.*;
import java.util.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.smict.struts.data.booking1data;
import com.smict.struts.form.Booking1Form;
import com.smict.struts.form.Booking2Form;

/** 
 * MyEclipse Struts
 * Creation date: 04-24-2015
 * 
 * XDoclet definition:
 * @struts.action path="/booking1" name="booking1Form" input="booking1.jsp" scope="request" validate="true"
 */
public class Booking1Action extends Action {
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
		Booking1Form booking1Form = (Booking1Form) form;// TODO Auto-generated method stub
		Booking2Form booking2Form = new Booking2Form();
		String tcheck_in = booking1Form.getDate_check_in(),
		tcheck_out=booking1Form.getDate_check_out(),
		gues_amount = booking1Form.getPeople_booking(),
		submit = booking1Form.getSubmit();
		booking1data bk1dt = new booking1data();
		String forwardText = "";
		HttpSession session = request.getSession();
		session.setAttribute("tcheck_in", tcheck_in);
		session.setAttribute("tcheck_out", tcheck_out);
		session.setAttribute("gues_amount", gues_amount);
		if(submit != null){
			try {
				List lsearchroom = bk1dt.searchroom_empty(tcheck_in, tcheck_out, gues_amount);
				request.setAttribute("booking2Form", lsearchroom);
				if (lsearchroom.size() > 0){
					forwardText = "roomempty";
				}else{
					forwardText = "room_not_empty";
				}
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return mapping.findForward(forwardText);
	}
}
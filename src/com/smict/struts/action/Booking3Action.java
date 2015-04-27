/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.smict.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.*;
import java.sql.*;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.smict.struts.data.booking3data;
import com.smict.struts.form.Booking3Form;


/** 
 * MyEclipse Struts
 * Creation date: 04-26-2015
 * 
 * XDoclet definition:
 * @struts.action path="/booking3" name="booking3Form" input="booking3.jsp" scope="request" validate="true"
 */
public class Booking3Action extends Action {
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
		Booking3Form booking3Form = (Booking3Form) form;
		HttpSession session = request.getSession();
		// TODO Auto-generated method stub
		
		//for booking_table
		String room_id = booking3Form.getRoom_id(),
		check_in = (String) session.getAttribute("tcheck_in"),
		check_out = (String) session.getAttribute("tcheck_out"),
		guest_amount = (String) session.getAttribute("gues_amount"),
		
		cus_tit_name = booking3Form.getTitle(),
		cus_name_sure = booking3Form.getName_sure(),
		cus_email = booking3Form.getEmail(),
		cus_intercode = booking3Form.getIntercode(),
		cus_phonenum = booking3Form.getPhonenum(),
		//cus_country = booking3Form.getCountry(),
		cus_country = "THAILAND",
		
		//for occupancy_table
		oc_title = booking3Form.getOc_title(),
		oc_name_sure = booking3Form.getOc_name_sure(),
		//for _table
		special_request =booking3Form.getSpecial_request();
		booking3data bk3dt = new booking3data();
		try {
			bk3dt.booking_table(room_id,check_in,check_out,cus_tit_name,cus_name_sure,cus_email,cus_intercode,cus_phonenum,cus_country);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
}
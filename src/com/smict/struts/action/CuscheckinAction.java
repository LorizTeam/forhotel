/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.smict.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import com.smict.struts.form.CuscheckinForm;

/** 
 * MyEclipse Struts
 * Creation date: 04-29-2015
 * 
 * XDoclet definition:
 * @struts.action path="/cuscheckin" name="cuscheckinForm" input="/employee/cuscheckin.jsp" scope="request" validate="true"
 */
public class CuscheckinAction extends Action {
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
		CuscheckinForm cuscheckinForm = (CuscheckinForm) form;// TODO Auto-generated method stub
		return null;
	}
}
/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.smict.struts.form;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

/** 
 * MyEclipse Struts
 * Creation date: 04-29-2015
 * 
 * XDoclet definition:
 * @struts.form name="empoverviewForm"
 */
public class EmpoverviewForm extends ActionForm {
	/*
	 * Generated Methods
	 */
	//for Emp_detail at formOverview
	private String emp_username,emp_password,emp_name_sure,emp_dob,emp_addr,
	emp_city,emp_country,emp_zipcode,emp_workin,emp_workout,dept_id,dept_name;
	
	public EmpoverviewForm(){};
	public EmpoverviewForm( String usefor1,String s1, String s2,
			String s3, String s4, String s5, String s6,
			String s7, String s8, String s9,
			String s10, String s11, String s12) {
		// TODO Auto-generated constructor stub
		if (usefor1 == "emp_detail"){
			this.emp_username = s1;
			this.emp_password = s2;
			this.emp_name_sure = s3;
			this.emp_dob = s4;
			this.emp_addr = s5;
			this.emp_city = s6;
			this.emp_country = s7;
			this.emp_zipcode = s8;
			this.emp_workin = s9;
			this.emp_workout = s10;
			this.dept_id = s11;
			this.dept_name = s12;
		}
		
	}

	/** 
	 * Method validate
	 * @param mapping
	 * @param request
	 * @return ActionErrors
	 */
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	/** 
	 * Method reset
	 * @param mapping
	 * @param request
	 */
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		// TODO Auto-generated method stub
	}
	public String getEmp_username() {
		return emp_username;
	}
	public void setEmp_username(String empUsername) {
		emp_username = empUsername;
	}
	public String getEmp_password() {
		return emp_password;
	}
	public void setEmp_password(String empPassword) {
		emp_password = empPassword;
	}
	public String getEmp_name_sure() {
		return emp_name_sure;
	}
	public void setEmp_name_sure(String empNameSure) {
		emp_name_sure = empNameSure;
	}
	public String getEmp_dob() {
		return emp_dob;
	}
	public void setEmp_dob(String empDob) {
		emp_dob = empDob;
	}
	public String getEmp_addr() {
		return emp_addr;
	}
	public void setEmp_addr(String empAddr) {
		emp_addr = empAddr;
	}
	public String getEmp_city() {
		return emp_city;
	}
	public void setEmp_city(String empCity) {
		emp_city = empCity;
	}
	public String getEmp_country() {
		return emp_country;
	}
	public void setEmp_country(String empCountry) {
		emp_country = empCountry;
	}
	public String getEmp_zipcode() {
		return emp_zipcode;
	}
	public void setEmp_zipcode(String empZipcode) {
		emp_zipcode = empZipcode;
	}
	public String getEmp_workin() {
		return emp_workin;
	}
	public void setEmp_workin(String empWorkin) {
		emp_workin = empWorkin;
	}
	public String getEmp_workout() {
		return emp_workout;
	}
	public void setEmp_workout(String empWorkout) {
		emp_workout = empWorkout;
	}
	public String getDept_id() {
		return dept_id;
	}
	public void setDept_id(String deptId) {
		dept_id = deptId;
	}
	public String getDept_name() {
		return dept_name;
	}
	public void setDept_name(String deptName) {
		dept_name = deptName;
	}
}
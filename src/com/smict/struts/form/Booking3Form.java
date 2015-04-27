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
 * Creation date: 04-26-2015
 * 
 * XDoclet definition:
 * @struts.form name="booking3Form"
 */
public class Booking3Form extends ActionForm {
	/*
	 * Generated fields
	 */

	/** special_request property */
	private String special_request;

	/** oc_title property */
	private String oc_title;

	/** title property */
	private String title;

	/** intercode property */
	private String intercode;

	/** email property */
	private String email;

	/** oc_name_sure property */
	private String oc_name_sure;

	/** phonenum property */
	private String phonenum;

	/** country property */
	private String country;

	/** name_sure property */
	private String name_sure;
	private String room_id;
	//for finish booking
	//from booking2
	private String roomtype_name,roomtype_picpath,roomtype_id,dial_code,true_calling;
	//private String;
	/*
	 * Generated Methods
	 */

	public Booking3Form (){};
	public Booking3Form(String usefor, String s1) {
		// TODO Auto-generated constructor stub
		if (usefor == "show_countries"){
			this.country = s1;
		}else{
			this.dial_code = s1;
		}
	}

	public Booking3Form(String usefor, String s1, String s2) {
		// TODO Auto-generated constructor stub
		if(usefor == "numcode"){
			this.dial_code = s1;
			this.true_calling = s2;
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

	/** 
	 * Returns the special_request.
	 * @return String
	 */
	public String getSpecial_request() {
		return special_request;
	}

	/** 
	 * Set the special_request.
	 * @param special_request The special_request to set
	 */
	public void setSpecial_request(String special_request) {
		this.special_request = special_request;
	}

	/** 
	 * Returns the oc_title.
	 * @return String
	 */
	public String getOc_title() {
		return oc_title;
	}

	/** 
	 * Set the oc_title.
	 * @param oc_title The oc_title to set
	 */
	public void setOc_title(String oc_title) {
		this.oc_title = oc_title;
	}

	/** 
	 * Returns the title.
	 * @return String
	 */
	public String getTitle() {
		return title;
	}

	/** 
	 * Set the title.
	 * @param title The title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}

	/** 
	 * Returns the intercode.
	 * @return String
	 */
	public String getIntercode() {
		return intercode;
	}

	/** 
	 * Set the intercode.
	 * @param intercode The intercode to set
	 */
	public void setIntercode(String intercode) {
		this.intercode = intercode;
	}

	/** 
	 * Returns the email.
	 * @return String
	 */
	public String getEmail() {
		return email;
	}

	/** 
	 * Set the email.
	 * @param email The email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/** 
	 * Returns the oc_name_sure.
	 * @return String
	 */
	public String getOc_name_sure() {
		return oc_name_sure;
	}

	/** 
	 * Set the oc_name_sure.
	 * @param oc_name_sure The oc_name_sure to set
	 */
	public void setOc_name_sure(String oc_name_sure) {
		this.oc_name_sure = oc_name_sure;
	}

	/** 
	 * Returns the phonenum.
	 * @return String
	 */
	public String getPhonenum() {
		return phonenum;
	}

	/** 
	 * Set the phonenum.
	 * @param phonenum The phonenum to set
	 */
	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}

	/** 
	 * Returns the country.
	 * @return String
	 */
	public String getCountry() {
		return country;
	}

	/** 
	 * Set the country.
	 * @param country The country to set
	 */
	public void setCountry(String country) {
		this.country = country;
	}

	/** 
	 * Returns the name_sure.
	 * @return String
	 */
	public String getName_sure() {
		return name_sure;
	}

	/** 
	 * Set the name_sure.
	 * @param name_sure The name_sure to set
	 */
	public void setName_sure(String name_sure) {
		this.name_sure = name_sure;
	}
	public String getRoom_id() {
		return room_id;
	}
	public void setRoom_id(String roomId) {
		room_id = roomId;
	}
	public String getRoomtype_name() {
		return roomtype_name;
	}
	public void setRoomtype_name(String roomtypeName) {
		roomtype_name = roomtypeName;
	}
	public String getRoomtype_picpath() {
		return roomtype_picpath;
	}
	public void setRoomtype_picpath(String roomtypePicpath) {
		roomtype_picpath = roomtypePicpath;
	}
	public String getRoomtype_id() {
		return roomtype_id;
	}
	public void setRoomtype_id(String roomtypeId) {
		roomtype_id = roomtypeId;
	}
	public String getDial_code() {
		return dial_code;
	}
	public void setDial_code(String dialCode) {
		dial_code = dialCode;
	}
	public String getTrue_calling() {
		return true_calling;
	}
	public void setTrue_calling(String trueCalling) {
		true_calling = trueCalling;
	}
}
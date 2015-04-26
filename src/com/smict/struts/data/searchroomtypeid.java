package com.smict.struts.data;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smict.struts.form.Booking3Form;

public class searchroomtypeid {
	public String search_by_name(String name) throws ClassNotFoundException, SQLException{
		dbconnect dbcon = new dbconnect();
		Connection con = dbcon.DBconn_mysql();
		String id;
		String sqlQuery = "select roomtype_id from roomtype where roomtype_name = '"+name+"'";
		Statement stmt = con.createStatement();
		ResultSet rs= stmt.executeQuery(sqlQuery);
		rs.next();
		id = rs.getString("roomtype_id");
		return id;
	}
}

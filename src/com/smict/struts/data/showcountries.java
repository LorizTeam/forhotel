package com.smict.struts.data;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

import com.smict.struts.form.Booking3Form;

public class showcountries {
	public List show_countries() throws ClassNotFoundException, SQLException{
		dbconnect dbcon = new dbconnect();
		Connection con = dbcon.DBconn_mysql();
		String id;
		String sqlQuery = "SELECT countries.countryName FROM  countries";
		Statement stmt = con.createStatement();
		ResultSet rs= stmt.executeQuery(sqlQuery);
		List countries = new ArrayList();
		String countryName,usefor="show_countries";
		while(rs.next()){
			countryName = rs.getString("countryName");
			countries.add(new Booking3Form(usefor,countryName));
		}
		return null;
	}
}

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
		String sqlQuery = "SELECT short_name FROM  country_t";
		Statement stmt = con.createStatement();
		ResultSet rs= stmt.executeQuery(sqlQuery);
		List countries = new ArrayList();
		String countryName,usefor="show_countries";
		while(rs.next()){
			countryName = rs.getString("short_name");
			countries.add(new Booking3Form(usefor,countryName));
		}
		return countries;
	}
	public List show_numcode() throws ClassNotFoundException, SQLException{
		dbconnect dbcon = new dbconnect();
		Connection con = dbcon.DBconn_mysql();
		String sqlQuery = "SELECT numcode FROM  country_t";
		Statement stmt = con.createStatement();
		ResultSet rs= stmt.executeQuery(sqlQuery);
		List countries = new ArrayList();
		String numcode,usefor="numcode";
		while(rs.next()){
			numcode = rs.getString("numcode");
			countries.add(new Booking3Form(usefor,numcode));
		}
		return countries;
	}
}

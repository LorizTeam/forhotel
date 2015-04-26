package com.smict.struts.data;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.smict.struts.form.Booking3Form;

public class showcountries {
	public Booking3Form show_countries() throws ClassNotFoundException, SQLException{
		dbconnect dbcon = new dbconnect();
		Connection con = dbcon.DBconn_mysql();
		String id;
		String sqlQuery = "SELECT countries.countryName FROM  countries";
		Statement stmt = con.createStatement();
		ResultSet rs= stmt.executeQuery(sqlQuery);
		while(rs.next()){
			
		}
		return null;
	}
}

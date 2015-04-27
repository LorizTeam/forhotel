package com.smict.struts.data;
import java.util.*;
import java.sql.*;

public class booking3data {
	public String booking_table(String roomId, String checkIn, String checkOut, String cusTitName, String cusNameSure, String cusEmail, String cusIntercode, String cusPhonenum, String cusCountry) throws ClassNotFoundException, SQLException{
		dbconnect dbcon = new dbconnect();
		Connection con = dbcon.DBconn_mysql();
		String booking_id;
		checkIn = "2015-05-01"; 
		checkOut = "2015-05-06";
		String sqlQuery = "call pro_booking ("+roomId+",'"+checkIn+" 00:00:00','"+checkOut+" 00:00:00','"+cusTitName+"','"+cusNameSure+"','"+cusEmail+"','"+cusIntercode+"','"+cusPhonenum+"','"+cusCountry+"');";
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sqlQuery);
		rs.next();
		return booking_id = rs.getString("pbooking_id");
	}
	
	public void occupancy_table(String booking,String occupancy_title , String occupancy_name_sure){
		dbconnect dbcon = new dbconnect();
		Connection con = dbcon.DBconn_mysql();
		String sqlQuery = "";
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sqlQuery);
	}
	public void request_table(){
		
	}
}

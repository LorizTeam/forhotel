package com.smict.struts.data;
import java.util.*;
import java.sql.*;

public class booking3data {
	public void booking_table(String roomId, String checkIn, String checkOut, String guestAmount, String cusTitName, String cusNameSure, String cusEmail, String cusIntercode, String cusPhonenum, String cusCountry) throws ClassNotFoundException, SQLException{
		dbconnect dbcon = new dbconnect();
		Connection con = dbcon.DBconn_mysql();
		String sqlQuery = "insert into booking ";
		Statement stmt = con.createStatement();
	}
	
	public void occupancy_table(){
		
	}
	public void request_table(){
		
	}
}

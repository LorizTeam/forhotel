package com.smict.struts.data;
import java.sql.*;
import java.util.*;

import com.smict.struts.form.Booking2Form;
import com.smict.struts.form.IndexForm;

public class booking1data {
	public List searchroom_empty (String Tcheck_in,String Tcheck_out,String guest_amount) throws ClassNotFoundException, SQLException{
		List lindex = new ArrayList();
		Booking2Form bk2f = new Booking2Form();
		dbconnect dbcon = new dbconnect();
		Connection con = dbcon.DBconn_mysql();
		String sqlQuery = "call check_roomtype_empty ('"+Tcheck_in+" 00:00:00','"+Tcheck_out+" 00:00:00',"+guest_amount+")";
		Statement stmt = con.createStatement();
		ResultSet rs_slide = stmt.executeQuery(sqlQuery);
		String room_id,roomtype_id,roomtype_name,roomtype_desc,roomtype_detail,roomtype_single_bed,roomtype_double_bed,roomtype_guest,roomtype_price;

		while (rs_slide.next()){
			room_id = rs_slide.getString("room_id");
			roomtype_id = rs_slide.getString("roomtype_id");
			roomtype_name = rs_slide.getString("roomtype_name");
			roomtype_desc = rs_slide.getString("roomtype_desc");
			roomtype_detail = rs_slide.getString("roomtype_detail");
			roomtype_price = rs_slide.getString("roomtype_price");
			roomtype_single_bed = rs_slide.getString("roomtype_single_bed");
			roomtype_double_bed = rs_slide.getString("roomtype_double_bed");
			roomtype_guest = rs_slide.getString("roomtype_guest");
			String pic_status = rs_slide.getString("pic_status");
			String roomtype_picpath = rs_slide.getString("roomtype_picpath");
			String price_total = rs_slide.getString("pricetotal");
			lindex.add(new Booking2Form(room_id,roomtype_id,roomtype_name,roomtype_desc,roomtype_detail,roomtype_single_bed,roomtype_double_bed,roomtype_guest,roomtype_price,pic_status,roomtype_picpath,price_total));
		}
		rs_slide.close();
		stmt.close();
		con.close();
		return lindex;
	}
}

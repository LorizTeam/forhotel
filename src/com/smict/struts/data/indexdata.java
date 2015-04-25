package com.smict.struts.data;
import java.sql.*;
import java.util.*;

import com.smict.struts.form.IndexForm;

public class indexdata {
	public List lindex () throws ClassNotFoundException, SQLException{
		List lindex = new ArrayList();
		dbconnect dbcon = new dbconnect();
		Connection con = dbcon.DBconn_mysql();
		String sqlQuery = "select * from vslide where usable_status = '1'";
		Statement stmt = con.createStatement();
		ResultSet rs_slide = stmt.executeQuery(sqlQuery);
		String slide_id="",slide_picpath="",usable_status="",usable_detail="";
		while (rs_slide.next()){
			slide_id = rs_slide.getString("slide_id");
			slide_picpath = rs_slide.getString("slide_picpath");
			usable_status = rs_slide.getString("usable_status");
			usable_detail = rs_slide.getString("usable_detail");
			lindex.add(new IndexForm(slide_id,slide_picpath,usable_status,usable_detail));
		}
		rs_slide.close();
		stmt.close();
		con.close();
		return lindex;
	}
	
	public IndexForm lwelcome () throws ClassNotFoundException, SQLException{
		//List lindex = new ArrayList();
		IndexForm idf = new IndexForm();
		dbconnect dbcon = new dbconnect();
		Connection con = dbcon.DBconn_mysql();
		String sqlQuery = "select * from vwelcome where usable_status = '1'";
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sqlQuery);
		String weldetail ="";
		while (rs.next()){
			idf.setWeldetail(rs.getString("wel_detail"));
		}
		return idf;
	}
	
	public IndexForm interested () throws ClassNotFoundException, SQLException{
		//List lindex = new ArrayList();
		IndexForm idf = new IndexForm();
		dbconnect dbcon = new dbconnect();
		Connection con = dbcon.DBconn_mysql();
		String sqlQuery = "select * from vinterested where usable_status = '1'";
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sqlQuery);
		String weldetail ="";
		while (rs.next()){
			idf.setInterdetail(rs.getString("inter_detail"));
		}
		return idf;
	}
	public List services () throws ClassNotFoundException, SQLException{
		List lindex = new ArrayList();
		dbconnect dbcon = new dbconnect();
		Connection con = dbcon.DBconn_mysql();
		String sqlQuery = "select * from vservices where usable_status = '1'";
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sqlQuery);
		String ser_id="",ser_detail="",usable_status="",usable_detail="",empid="";
		while (rs.next()){
			ser_id = rs.getString("ser_id");
			ser_detail = rs.getString("ser_detail");
			usable_status = rs.getString("usable_status");
			usable_detail = rs.getString("usable_detail");
			empid = rs.getString("emp_id");
			lindex.add(new IndexForm(ser_id,ser_detail,usable_status,usable_detail,empid));
		}
		rs.close();
		stmt.close();
		con.close();
		return lindex;
	}
	public List extensions () throws ClassNotFoundException, SQLException{
		List lindex = new ArrayList();
		dbconnect dbcon = new dbconnect();
		Connection con = dbcon.DBconn_mysql();
		String sqlQuery = "select * from vextensions where usable_status = '1'";
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sqlQuery);
		String usefor="extensions",ext_id="",ext_detail="",usable_status="",usable_detail="",empid="";
		while (rs.next()){
			ext_id = rs.getString("ext_id");
			ext_detail = rs.getString("ext_detail");
			usable_status = rs.getString("usable_status");
			usable_detail = rs.getString("usable_detail");
			empid = rs.getString("emp_id");
			lindex.add(new IndexForm(usefor,ext_id,ext_detail,usable_status,usable_detail,empid));
		}
		rs.close();
		stmt.close();
		con.close();
		return lindex;
	}
	
	public List gallery () throws ClassNotFoundException, SQLException{
		List lindex = new ArrayList();
		dbconnect dbcon = new dbconnect();
		Connection con = dbcon.DBconn_mysql();
		String sqlQuery = "select * from vgallery";
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sqlQuery);
		String usefor="gallery",gal_id="",gal_name="",gal_picpath="",gal_picstatus="";
		while (rs.next()){
			gal_id = rs.getString("gal_id");
			gal_name = rs.getString("gal_name");
			gal_picpath = rs.getString("gal_picpath");
			gal_picstatus = rs.getString("pic_status");
			lindex.add(new IndexForm(usefor,gal_id,gal_name,gal_picpath,gal_picstatus));
		}
		rs.close();
		stmt.close();
		con.close();
		return lindex;
	}
	
	public List hgallery () throws ClassNotFoundException, SQLException{
		List lindex = new ArrayList();
		dbconnect dbcon = new dbconnect();
		Connection con = dbcon.DBconn_mysql();
		String sqlQuery = "select * from vgallery where pic_status = '1'";
		Statement stmt = con.createStatement(); 
		ResultSet rs = stmt.executeQuery(sqlQuery);
		String usefor="hgallery",gal_id="",gal_name="",gal_picpath="",gal_picstatus="";
		while (rs.next()){
			gal_id = rs.getString("gal_id");
			gal_name = rs.getString("gal_name");
			gal_picpath = rs.getString("gal_picpath");
			gal_picstatus = rs.getString("pic_status");
			lindex.add(new IndexForm(usefor,gal_id,gal_name,gal_picpath,gal_picstatus));
		}
		rs.close();
		stmt.close();
		con.close();
		return lindex;
	}
}

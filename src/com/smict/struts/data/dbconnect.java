package com.smict.struts.data;
import java.sql.*;
import java.util.*;

public class dbconnect {
	public Connection DBconn_mysql() throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		String dbuser="root",dbpass="1234",dburl="jdbc:mysql://localhost/hotel";
		Connection con = DriverManager.getConnection(dburl,dbuser,dbpass);
		return con;
	}
}

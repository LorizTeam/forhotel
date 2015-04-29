package com.smict.struts.data;
import javax.servlet.http.HttpSession;
import java.util.*;
import java.sql.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smict.struts.form.EmpoverviewForm;

public class Login {
		public List lempdetail(String username , String password) throws ClassNotFoundException, SQLException{
			List lempdetail = new ArrayList();
			dbconnect dbcon = new dbconnect();
			Connection con = dbcon.DBconn_mysql();
			String sqlQuery = "SELECT " +
					"employee.emp_username, " +
					"employee.emp_password, " +
					"employee.emp_name_sure, " +
					"employee.emp_dob, " +
					"employee.emp_addr, " +
					"employee.emp_city, " +
					"employee.emp_country, " +
					"employee.emp_zipcode, " +
					"employee.emp_work_in, " +
					"employee.emp_work_out, " +
					"employee.dept_id, " +
					"department.dept_name " +
					"FROM " +
					"employee " +
					"INNER JOIN department ON department.dep_id = employee.dept_id " +
					"WHERE " +
					"employee.emp_username = '"+username+"' AND " +
					"employee.emp_password = '"+password+"'" ;
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sqlQuery);
			String emp_username,emp_password,emp_name_sure,emp_dob,emp_addr,
			emp_city,emp_country,emp_zipcode,emp_workin,emp_workout,dept_id,dept_name,usefor="emp_detail";
			
			while(rs.next()){
				emp_username = rs.getString("emp_username");
				emp_password = rs.getString("emp_password");
				emp_name_sure = rs.getString("emp_name_sure");
				emp_dob = rs.getString("emp_dob");
				emp_addr = rs.getString("emp_addr");
				emp_city = rs.getString("emp_city");
				emp_country = rs.getString("emp_country");
				emp_zipcode = rs.getString("emp_zipcode");
				emp_workin = rs.getString("emp_work_in");
				emp_workout = rs.getString("emp_work_out");
				dept_id = rs.getString("dept_id");
				dept_name = rs.getString("dept_name");
				lempdetail.add(new EmpoverviewForm(usefor,emp_username,emp_password,emp_name_sure,
						emp_dob,emp_addr,emp_city,emp_country,emp_zipcode,
						emp_workin,emp_workout,dept_id,dept_name));
			}
			return lempdetail;
		}
}

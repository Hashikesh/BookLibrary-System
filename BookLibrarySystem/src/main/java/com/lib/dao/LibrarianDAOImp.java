package com.lib.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.lib.dto.Validate_LibrarianLogin;
import com.lib.util.JDBCUtil;

public class LibrarianDAOImp implements LibrarianDAO {
	Connection connection = null;

	@Override
	public int LibrarianValidate(Validate_LibrarianLogin validateAdminLogin) {
String sqlInsertQuery = "Select aid from admindetails where username=? and password=?";
		
		PreparedStatement pstmt = null;
		
	    try {
			connection = JDBCUtil.physicalConnection();
			if(connection!=null)
		    {
				pstmt = connection.prepareStatement(sqlInsertQuery);
				if (pstmt != null) {
					pstmt.setString(1, validateAdminLogin.getAusername());
					pstmt.setString(2, validateAdminLogin.getApassword());
				}
				if (pstmt != null) {
				  ResultSet rs = pstmt.executeQuery();
				  System.out.println(pstmt);
				  rs.next();
					if(rs!=null)
					{
					   return rs.getInt(1);
					}
					
				}
		    }
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}
	
	@Override
	public String findById(int aid) {
		String query = "select username from admindetails where aid=?";
		PreparedStatement pstmt =null;
		try {
			connection = JDBCUtil.physicalConnection(); 
			if(connection!=null)
		    {
				pstmt = connection.prepareStatement(query);
				if (pstmt != null) {
					pstmt.setInt(1, aid);
				}
				if (pstmt != null) {
				  ResultSet rs = pstmt.executeQuery();
				  System.out.println(pstmt);
				  rs.next();
					if(rs!=null)
					{
					   return rs.getString("username");
					}
					
				}
		    }
		}catch(Exception e) {}
				
		return null;
	}

	
}

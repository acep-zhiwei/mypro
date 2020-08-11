package com.zhiwei.testjdbc;

import java.sql.*;



public class testJ {

	public static void main(String[] args) {
		// TODO 自動生成されたメソッドスタブ
		try {
		      Class.forName("com.mysql.jdbc.Driver");
		     System.out.println("Success loading Mysql Driver!");
		    }
		    catch (Exception e) {
		      System.out.print("Error loading Mysql Driver!");
		      e.printStackTrace();
		    }
		    try {
		      Connection connect = DriverManager.getConnection(
		          "jdbc:mysql://localhost:3306/springdemo?useUnicode=true&characterEncoding=UTF-8&serverTimezone=JST","root","ytm7296399");

		      System.out.println("Success connect Mysql server!");
		      Statement stmt = connect.createStatement();
		      ResultSet rs = stmt.executeQuery("select * from user");
		while (rs.next()) {
		        System.out.println(rs.getString("id"));
		        System.out.println(rs.getString("nickname"));
		      }
		    }
		    catch (Exception e) {
		      System.out.print("get data error!");
		      e.printStackTrace();
		    }
		  }

}

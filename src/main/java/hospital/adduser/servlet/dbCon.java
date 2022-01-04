package hospital.adduser.servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import java.sql.Statement;

public class dbCon {
	public static void main(String args[]) throws Exception {
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Hospital","root","");
		Statement st =con.createStatement();
		ResultSet rs=st.executeQuery("Select * from users;");
		
		rs.next();
		String name=rs.getString(3);
		System.out.println(name);
	}
}

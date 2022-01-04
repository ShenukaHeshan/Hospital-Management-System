package hospital.users.db;

import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import hospital.users.Users;

public class InsertUser
{
    public int addUserdb(final Users user) throws SQLException {
        final String name = user.getName();
        final String nic = user.getNic();
        final String tp_no = user.getTp_no();
        final String address = user.getAddress();
        final String age = user.getAge();
        final String gender = user.getGender();
        final String doctor = user.getDoctor();
        final Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Hospital","root","");
        final Statement st = con.createStatement();
        final String query = "INSERT into users(name,nic,tp_no,address,age,gender,doctor) values('" + name + "','" + nic + "','" + tp_no + "','" + address + "','" + age + "','" + gender + "','" + doctor + "');";
        final int rs = st.executeUpdate(query);
        return rs;
    }
}
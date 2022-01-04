package hospital.users.db;

import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import hospital.users.Users;

public class UpdateDetails
{
    public void updateDetails(final Users user, final String ids) throws SQLException {
        final int id = Integer.parseInt(ids);
        final String name = user.getName();
        final String nic = user.getNic();
        final String tp_no = user.getTp_no();
        final String address = user.getAddress();
        final String age = user.getAge();
        final String gender = user.getGender();
        final Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Hospital","root","");
        final Statement st = con.createStatement();
        final String query = "Update users set name='" + name + "',nic='" + nic + "',tp_no='" + tp_no + "',address='" + address + "',age='" + age + "',gender='" + gender + "' where id=" + id;
        st.executeUpdate(query);
    }
}
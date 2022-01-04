package hospital.users.db;

import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;

public class DeleteUser
{
    public int deleteUser(final int id) throws SQLException {
        final Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Hospital","root","");
        final Statement st = con.createStatement();
        final String query = "delete from users where id =" + id;
        final int rs = st.executeUpdate(query);
        return rs;
    }
}
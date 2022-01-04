package hospital.users.db;

import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class GetDetails
{
    public ResultSet getDetails() throws SQLException {
        final Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Hospital","root","");
        final Statement st = con.createStatement();
        final String query = "select * from users;";
        final ResultSet rs = st.executeQuery(query);
        return rs;
    }
    
    public ResultSet getDetails(final String ids) throws SQLException {
        final int id = Integer.parseInt(ids);
        final Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Hospital","root","");
        final Statement st = con.createStatement();
        final String query = "select * from users where id=" + id;
        final ResultSet rs = st.executeQuery(query);
        return rs;
    }
    
    public ResultSet getDoctors() throws SQLException {
        final Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Hospital","root","");
        final Statement st = con.createStatement();
        final String query = "select distinct doctor from users order by doctor;";
        final ResultSet rs = st.executeQuery(query);
        return rs;
    }
}
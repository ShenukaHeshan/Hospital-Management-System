package hospital.adduser.servlet;

import java.io.PrintWriter;
import javax.servlet.ServletResponse;
import javax.servlet.ServletRequest;
import java.sql.SQLException;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import hospital.users.Users;
import hospital.users.db.UpdateDetails;
import hospital.users.db.GetDetails;
import hospital.users.db.DeleteUser;
import hospital.users.db.InsertUser;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet({ "/register" })
public class AddUser extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    private InsertUser in;
    private DeleteUser dl;
    private GetDetails gd;
    private UpdateDetails ud;
    private Users user;
    
    public AddUser() {
        this.in = new InsertUser();
        this.dl = new DeleteUser();
        this.gd = new GetDetails();
        this.ud = new UpdateDetails();
        this.user = new Users();
    }
    
    protected void doGet(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
    }
    
    protected void doPost(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        final PrintWriter out = response.getWriter();
        if (request.getParameter("adduser") != null) {
            final String name = request.getParameter("name");
            final String nic = request.getParameter("nic");
            final String tp_no = request.getParameter("tp_no");
            final String address = request.getParameter("address");
            final String age = request.getParameter("age");
            final String gender = request.getParameter("gender");
            final String doctor = request.getParameter("doctor");
            this.user.setName(name);
            this.user.setNic(nic);
            this.user.setTp_no(tp_no);
            this.user.setAddress(address);
            this.user.setAge(age);
            this.user.setGender(gender);
            this.user.setDoctor(doctor);
            try {
                this.in.addUserdb(this.user);
            }
            catch (SQLException e) {
                e.printStackTrace();
            }
            response.sendRedirect("index.jsp");
        }
        else if (request.getParameter("delete") != null) {
            try {
                final int ids = Integer.parseInt(request.getParameter("id"));
                this.dl.deleteUser(ids);
                response.sendRedirect("index.jsp");
            }
            catch (SQLException e2) {
                e2.printStackTrace();
            }
        }
        else if (request.getParameter("edit") != null) {
            final String ids2 = new StringBuilder().append(request.getParameter("id")).toString();
            request.setAttribute("id", (Object)ids2);
            request.getRequestDispatcher("edit_user.jsp").forward((ServletRequest)request, (ServletResponse)response);
        }
        else if (request.getParameter("update") != null) {
            final String id = request.getParameter("id");
            final String name2 = request.getParameter("name");
            final String nic2 = request.getParameter("nic");
            final String tp_no2 = request.getParameter("tp_no");
            final String address2 = request.getParameter("address");
            final String age2 = request.getParameter("age");
            final String gender2 = request.getParameter("gender");
            this.user.setName(name2);
            this.user.setNic(nic2);
            this.user.setTp_no(tp_no2);
            this.user.setAddress(address2);
            this.user.setAge(age2);
            this.user.setGender(gender2);
            try {
                this.ud.updateDetails(this.user, id);
                response.sendRedirect("index.jsp");
            }
            catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
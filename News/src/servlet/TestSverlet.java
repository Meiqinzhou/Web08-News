package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.TestDao;
import controller.TestDaoImpl;
import dao.DataBaseConnection;
import user.Student;

/**
 * Servlet implementation class TestSverlet
 */
//@WebServlet("/TestSverlet")
public class TestSverlet extends HttpServlet {
	//private static final long serialVersionUID = 1L;
	private DataBaseConnection conn = null;
    /**
     * Default constructor. 
     */
    public TestSverlet() {
        // TODO Auto-generated constructor stub
    	try {
    		this.conn = new DataBaseConnection();
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    }
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("textml;charset=utf-8");
		TestDao dao = new TestDaoImpl(conn.getConnection());
		List<Student> list = dao.getAllStudent();		
		request.getSession().setAttribute("students", list);
		request.getRequestDispatcher("student.jsp").forward(request, response);
	}
}
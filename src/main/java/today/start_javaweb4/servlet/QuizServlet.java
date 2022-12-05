package today.start_javaweb4.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import today.start_javaweb4.model.DAO.DAO;
import today.start_javaweb4.model.entity.Plate;
import today.start_javaweb4.util.DBUtil;

/**
 * Servlet implementation class Quiz
 */
@WebServlet("/servlet/Quiz")
public class QuizServlet extends HttpServlet {

    public QuizServlet() {
        super();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {

			Connection connection = DBUtil.connect();
			DAO dao = new DAO(connection);
			String jsp = "/WEB-INF/jsp/quiz.jsp";
			List<Plate> list = new ArrayList<Plate>();
						list.addAll(dao.findAndShuffle());
			request.setAttribute("list", list); //listという名前の変数をlistという名前でjspに転送。
			connection.close();
			RequestDispatcher dispatcher = request.getRequestDispatcher(jsp);
			dispatcher.forward(request, response);
			
		}catch(Exception e) {
			throw new ServletException(e);
		} 

    }

}

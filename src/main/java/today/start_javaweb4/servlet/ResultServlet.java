package today.start_javaweb4.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Result
 */
@WebServlet("/servlet/Result")
public class ResultServlet extends HttpServlet {

    public ResultServlet() {
        super();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
    	List<Integer> yourAns = new ArrayList<Integer>();
    	List<Integer> colAns = new ArrayList<Integer>();
    	
    	for(int i = 1 ; i<100 ; i++) {
    	int tempYourAns = Integer.parseInt(request.getParameter("yourAns" + i));
    	int tempColAns = Integer.parseInt(request.getParameter("colAns" + i));
    	
    	}
 
    }

}

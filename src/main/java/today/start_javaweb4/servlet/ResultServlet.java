package today.start_javaweb4.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ResultServlet extends HttpServlet {

    public ResultServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


        int resCount = 0; //正誤に関わらず解いた数のカウント
        int colCount = 0; //正答数


		for (int i = 1; i <= 100; i++) {
			int tempYourAns = Integer.parseInt(request.getParameter("yourAns" + i));
			int tempColAns = Integer.parseInt(request.getParameter("colAns" + i));
			if (tempYourAns == tempColAns) {
				colCount++;
			} else if (tempYourAns == 0) {
				continue;
			}
			resCount++;
		}
		
		String rank = rankCalc(colCount); //4:トロフィなし 3:銅 2:銀 1:金 0:神　まあこの辺は要調整。
		
		request.setAttribute("resCount", resCount);
		request.setAttribute("colCount", colCount);
		request.setAttribute("rank", rank);
		
		String jsp = "/WEB-INF/jsp/result.jsp";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(jsp);
		dispatcher.forward(request, response);
		
	}

	private String rankCalc(int colCount) { 
		if(colCount<20) { //トロフィなし
			return "道端の小石";
		}else if(colCount<40){ //銅トロフィー
			return "銅";
		}else if(colCount<65) { //銀トロフィー
			return "銀";
		}else if(colCount<100) { //金トロフィー
			return "金";
		}else {
			return "神"; //神の領域....これ達成できるやつおりゅ？
		}
		
	}

}

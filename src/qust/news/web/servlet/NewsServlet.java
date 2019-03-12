package qust.news.web.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import qust.news.domain.News;
import qust.news.service.NewsService;

/**
 * Servlet implementation class NewsServlet
 */
public class NewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String method = request.getParameter("method");
		if(method==null){
			showAll(request,response);
		}
		else if("show".equals(method)){
			showNews(request,response);
		}
		else if("list".equals(method)){
			listNews(request,response);
		}
		else if("add".equals(method)){
			addNews(request,response);
		}
		
	}

	private void addNews(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		String title=request.getParameter("title");
		String type=request.getParameter("type");
		String content=request.getParameter("content");
		News news = new News();
		news.setTitle(title);
		news.setType(type);
		news.setContent(content);
		
		NewsService service = new NewsService();
		int rtn=0;
		try {
			rtn=service.addNews(news);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String result;
		if(rtn>0){
			result="插入成功!";
		}
		else{
			result="插入失败!";
		}
		request.setAttribute("result", result);
		request.getRequestDispatcher("admin/addNews.jsp").forward(request,response);
	}

	private void listNews(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String type=request.getParameter("type");
		String typename="";
		switch(type){
		case "1":
			typename="国内新闻";
			break;
	    case "2":
	    	typename="国外新闻";
	    	break;
		}
		
		List<News> ls = null;
		NewsService service = new NewsService();
		try {
			ls=service.findTopNNews(typename, 100);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("newsList", ls);
		request.getRequestDispatcher("newsList.jsp").forward(request,response);
	}

	private void showNews(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
int id=Integer.parseInt(request.getParameter("id"));
		
		NewsService service=new NewsService();
		News news=null;
		
		try {
			news=service.findNewsById(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("news", news);
		request.getRequestDispatcher("showNews.jsp").forward(request,response);
	}

	private void showAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<News> guoneixw=null;
		List<News> guojixw=null;
		NewsService service=new NewsService();
		try{
			guoneixw=service.findTopNNews("国内新闻",9);
			guojixw=service.findTopNNews("国际新闻",9);
		} catch (SQLException e){
			e.printStackTrace();
		}
		request.setAttribute("guoneixw",guoneixw);
		request.setAttribute("guojixw",guojixw);
		request.getRequestDispatcher("index.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

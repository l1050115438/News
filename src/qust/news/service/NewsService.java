package qust.news.service;

import java.sql.SQLException;
import java.util.List;

import qust.news.dao.NewsDao;
import qust.news.domain.News;

public class NewsService {
	private NewsDao dao=new NewsDao();
	public List<News> findTopNNews(String type,int n) throws SQLException{
		return dao.findNews(type, 0, n);
	}
	public News findNewsById(int id) throws SQLException {
		// TODO Auto-generated method stub
		return dao.findNewsById(id);
	}
	public int addNews(News news) throws SQLException {
		// TODO Auto-generated method stub
		return dao.addNews(news);
	}
}

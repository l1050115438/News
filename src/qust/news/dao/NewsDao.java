package qust.news.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import qust.news.domain.News;
import qust.news.utils.C3p0Utils;

public class NewsDao {
	public List<News> findNews(String type,int m,int n) throws SQLException{
		String sql="select id,title,content,date(date) as date,type from news where type=? order by date desc limit ?,?";
		QueryRunner runner=new QueryRunner(C3p0Utils.getDataSource());
		List<News> ls=runner.query(sql, new BeanListHandler<News>(News.class),type,m,n);
		return ls;
	}
	public News findNewsById(int id)throws SQLException{
		String sql="select id,title,content,date(date) as date,type from news where id=?";
		QueryRunner runner=new QueryRunner(C3p0Utils.getDataSource());
		News news=runner.query(sql, new BeanHandler<News>(News.class),id);
	    return news;
	}
	public int addNews(News news) throws SQLException {
		// TODO Auto-generated method stub
		String sql="insert into news(title,content,date,type) values(?,?,?,?)";
		QueryRunner runner=new QueryRunner(C3p0Utils.getDataSource());
		int rtn=runner.update(sql,news.getTitle(),news.getContent(),news.getDate(),news.getType());
		return rtn;
	}
}

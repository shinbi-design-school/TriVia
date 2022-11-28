package today.start_javaweb4.model.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import today.start_javaweb4.model.entity.Plate;

public class DAO { 
	private Connection connection;
	
	public DAO(Connection connection) { //ここのconnectionはConnectuin connection = DBUtil.connect();
		this.connection = connection;	//と宣言されたものをいれようよ！
	}
	
	public Plate getPlate(ResultSet resultset) throws SQLException {
		Plate plate = new Plate();
		
		plate.setId(resultset.getInt("id"));
		plate.setContent(resultset.getString("content"));
		plate.setAnswer(resultset.getInt("answer"));
		
		return plate;
		
	}
	
	//シャッフルされた問題をとってくるメソッドらしい。
	public List<Plate> findAndShuffle() throws SQLException{
		List<Plate> list = new ArrayList<Plate>();
		String sql ="SELECT * FROM quiz";
		
		Statement statement = this.connection.createStatement();
		ResultSet resultset = statement.executeQuery(sql);
		while(resultset.next()) {
			Plate entity = getPlate(resultset) ;
			list.add(entity);
		}
		
		resultset.close();
		statement.close();
		Collections.shuffle(list);
		
		return list;
		
		
	}

}

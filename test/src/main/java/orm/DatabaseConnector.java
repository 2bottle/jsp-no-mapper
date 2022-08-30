package orm;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnector {
	private static DatabaseConnector dbc = new DatabaseConnector();
	private Connection conn = null;
	private String jdbcDriver = "com.mysql.cj.jdbc.Driver";
	private String jdbcUrl = "jdbc:mysql://localhost:3306/testdb";
	
	private DatabaseConnector() {
		try {
			Class.forName(jdbcDriver);
			conn = DriverManager.getConnection(jdbcUrl, "tester", "qudrhksLee1!");
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버를 찾을 수 없습니다.");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("연결정보가 정확하지 않습니다.");
			e.printStackTrace();
		}
	}
	
	public static DatabaseConnector getInstance() {
		return dbc;
	}
	public Connection getConnection() {
		return conn;
	}
}

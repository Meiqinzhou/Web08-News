package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DataBaseConnection {
	private static final String DBDRIVER="com.mysql.cj.jdbc.Driver";
	private static final String DBURL="jdbc:mysql://localhost:3306/student?useSSL=false&serverTimezone=UTC";
	private static final String DBUSER="root";
	private static final String DBPASSWORD="123456";
	
	public Connection conn = null;
	//�ڹ��췽���н������ݿ������
	public DataBaseConnection() throws Exception{
		try {
			Class.forName(DBDRIVER);//������������
			this.conn = DriverManager//�������ݿ�
					.getConnection(DBURL, DBUSER, DBPASSWORD);
			
		}catch(Exception e) {
			throw e;
		}
	}
	//������ݿ������
	public Connection getConnection() {
		return this.conn;
	}
	//�ر����ݿ������
	public void close() throws Exception
	{
		if(this.conn != null) {
			try {
				this.conn.close();
			}catch(Exception e) {
				throw e;
			}
		}
	}
}

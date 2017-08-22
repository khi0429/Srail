package test.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.junit.Test;

public class OracleConnectionTest {

	String url="jdbc:oracle:thin:@localhost:1521:XE";
	String user="team";
	String pwd="tiger";
	@Test
	public void testOracleConnection() throws ClassNotFoundException, SQLException{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection(url,user,pwd);
		
		if(con!=null) con.close();
	}

}

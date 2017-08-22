package test.db;

import java.sql.Connection;
import java.sql.SQLException;

import javax.annotation.Resource;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/action-servlet.xml"})
public class DataSourceTest {
	//byName 으로 주입 . 반면 @Autowired는 byType으로 주입
	@Resource(name="dataSource")
	private DataSource ds;
	@Test
	public void testDataSourecConnection() throws SQLException{
		Connection con=ds.getConnection();
		System.out.println("ds="+ds);
		System.out.println("con="+con);
		if(con!=null) con.close();
	}

}

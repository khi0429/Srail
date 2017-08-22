package test.db;

import static org.junit.Assert.fail;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/action-servlet.xml"})
public class MyBatisTest {
	@Resource(name="sqlSessionFactory")
	private SqlSessionFactory factory;
	
	@Test
	public void testFactory() {
		System.out.println("factory="+factory);
	}
	@Test
	public void testSqlSession(){
		SqlSession ses=factory.openSession();
		System.out.println("ses="+ses);
		if(ses!=null)ses.close();
	}

}

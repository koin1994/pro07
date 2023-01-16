package kr.go.mss;

import java.sql.Connection;
import java.sql.SQLException;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class JDBCConnectTest {
	private static final Logger logger = LoggerFactory.getLogger(JDBCTest.class);
	
	@Inject
	DataSource dataSource;
	
	@Test
	void test() throws SQLException{
		Connection con = dataSource.getConnection();
		logger.info(con.toString());
		con.close();
	}
}
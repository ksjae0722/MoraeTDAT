package MoraeTdat;

import org.apache.ibatis.session.ExecutorType;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Component;

@Component
public class CommonDao extends SqlSessionDaoSupport {
	public SqlSession getBatchSqlSession() {
		SqlSessionFactory sqlSessionFactory = ((SqlSessionTemplate)getSqlSession()).getSqlSessionFactory();
		return sqlSessionFactory.openSession(ExecutorType.BATCH, false);
	}
}

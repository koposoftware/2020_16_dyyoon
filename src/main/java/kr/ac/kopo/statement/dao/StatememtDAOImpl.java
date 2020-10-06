package kr.ac.kopo.statement.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.statement.vo.StatementVO;

@Repository
public class StatememtDAOImpl implements StatementDAO {

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public List<StatementVO> selectStatementByAccNo(String accNo) {
		return session.selectList("statement.dao.StatementDAO.selectStatementByAccNo", accNo);
	}

	@Override
	public void insertRemittanceStatement(StatementVO statement) {
		session.insert("statement.dao.StatementDAO.insertRemittanceStatement", statement);
	}

}

package kr.ac.kopo.statement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.statement.dao.StatementDAO;
import kr.ac.kopo.statement.vo.StatementVO;

@Service
public class StatementServiceImpl implements StatementService {

	@Autowired
	private StatementDAO statementDAO;
	
	@Override
	public List<StatementVO> selectStatementByAccNo(String accNo) {
		return statementDAO.selectStatementByAccNo(accNo);
	}

	@Override
	public void insertRemittanceStatement(StatementVO statement) {
		statementDAO.insertRemittanceStatement(statement);
	}
	

}

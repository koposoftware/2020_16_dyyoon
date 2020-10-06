package kr.ac.kopo.bank.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.bank.vo.BankVO;
@Repository
public class BankDAOImpl implements BankDAO {

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public BankVO selectBankByCode(String bankCode) {
		return session.selectOne("bank.dao.BankDAO.selectBankByCode", bankCode);
	}

}

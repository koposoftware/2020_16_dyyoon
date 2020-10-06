package kr.ac.kopo.account.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.account.vo.AccountVO;
import kr.ac.kopo.remittance.vo.RemittanceVO;
@Repository
public class AccountDAOImpl implements AccountDAO {

	@Autowired
	SqlSessionTemplate session;
	
	@Override
	public List<AccountVO> selectAccountList(String id) {
		return session.selectList("account.dao.AccountDAO.selectAccountList", id);
	}

	@Override
	public String selectAccountBalance(String accNo) {
		return session.selectOne("account.dao.AccountDAO.selectAccountBalance", accNo);
	}

	@Override
	public AccountVO selectAccountByAccNo(String accNo) {
		return session.selectOne("account.dao.AccountDAO.selectAccountByAccNo", accNo);
	}

	@Override
	public void updateRemittanceAmount(RemittanceVO remittanceVO) {
		session.update("account.dao.AccountDAO.updateRemittanceAmount", remittanceVO);
	}

	@Override
	public List<Map<String, Object>> selectBalanceSumGroupByCurrency(String id) {
		return session.selectList("account.dao.AccountDAO.selectBalanceSumGroupByCurrency", id);
	}

	@Override
	public AccountVO selectFavoriteAccount(String id) {
		return session.selectOne("account.dao.AccountDAO.selectFavoriteAccount", id);
	}

	@Override
	public void updatePlusAmount(Map<String, Object> amountAndAccNo) {
		session.update("account.dao.AccountDAO.updatePlusAmount", amountAndAccNo);
	}

	
}

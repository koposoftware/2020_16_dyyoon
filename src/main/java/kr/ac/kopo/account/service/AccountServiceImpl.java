package kr.ac.kopo.account.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.account.dao.AccountDAO;
import kr.ac.kopo.remittance.vo.RemittanceVO;
import kr.ac.kopo.account.vo.AccountVO;
import kr.ac.kopo.statement.vo.StatementVO;
@Service
public class AccountServiceImpl implements AccountService {
	
	@Autowired
	AccountDAO accountDAO;

	@Override
	public List<AccountVO> selectAccountList(String id) {
		return accountDAO.selectAccountList(id);
	}

	@Override
	public String selectAccountBalance(String accNo) {
		return accountDAO.selectAccountBalance(accNo);
	}

	@Override
	public AccountVO selectAccountByAccNo(String accNo) {
		return accountDAO.selectAccountByAccNo(accNo);
	}

	@Override
	public void updateRemittanceAmount(RemittanceVO remittanceVO) {
		accountDAO.updateRemittanceAmount(remittanceVO);
	}

	@Override
	public List<Map<String, Object>> selectBalanceSumGroupByCurrency(String id) {
		return accountDAO.selectBalanceSumGroupByCurrency(id);
	}

	@Override
	public AccountVO selectFavoriteAccount(String id) {
		return accountDAO.selectFavoriteAccount(id);
	}
	

}

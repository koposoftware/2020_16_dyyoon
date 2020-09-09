package kr.ac.kopo.account.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.account.dao.AccountDAO;
import kr.ac.kopo.account.vo.AccountVO;
@Service
public class AccountServiceImpl implements AccountService {
	
	@Autowired
	AccountDAO accountDAO;

	@Override
	public List<AccountVO> selectAccountList(String id) {
		return accountDAO.selectAccountList(id);
	}

	@Override
	public Float selectAccountBalance(String accNo) {
		return accountDAO.selectAccountBalance(accNo);
	}

}

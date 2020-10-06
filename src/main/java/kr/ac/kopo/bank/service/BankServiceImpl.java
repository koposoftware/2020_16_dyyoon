package kr.ac.kopo.bank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.bank.dao.BankDAO;
import kr.ac.kopo.bank.vo.BankVO;
@Service
public class BankServiceImpl implements BankService {
	
	@Autowired
	private BankDAO bankDAO;

	@Override
	public BankVO selectBankByCode(String bankCode) {
		return bankDAO.selectBankByCode(bankCode);
	}

}

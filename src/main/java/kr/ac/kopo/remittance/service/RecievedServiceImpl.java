package kr.ac.kopo.remittance.service;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.account.dao.AccountDAO;
import kr.ac.kopo.account.vo.AccountVO;
import kr.ac.kopo.remittance.dao.RecievedDAO;
import kr.ac.kopo.remittance.vo.RecievedVO;
import kr.ac.kopo.statement.dao.StatementDAO;
import kr.ac.kopo.statement.vo.StatementVO;

@Service
public class RecievedServiceImpl implements RecievedService {

	@Autowired
	private RecievedDAO recievedDAO;
	
	@Autowired
	private AccountDAO accountDAO;
	
	@Autowired
	private StatementDAO statementDAO;
	
	@Override
	public List<RecievedVO> selectRecieved(String id) {
		return recievedDAO.selectRecieved(id);
	}

	@Override
	public List<RecievedVO> selectReicevedOnlyApproved(String id) {
		return recievedDAO.selectReicevedOnlyApproved(id);
	}
	
	@Override
	public RecievedVO selectRecievedDetail(Integer recievedNo) {
		return recievedDAO.selectRecievedDetail(recievedNo);
	}
	
	
	
	
	/* -----------------------------------------
	 * 
	 * 			ADMIN PAGE
	 * 
	 ----------------------------------------- */
	@Override
	public List<RecievedVO> selectAllRecievedAdmin() {
		return recievedDAO.selectAllRecievedAdmin();
	}

	@Override
	public Map<String, Object> selectRecievedCount() {
		return recievedDAO.selectRecievedCount();
	}

	@Transactional
	@Override
	public void updateStatusRecieved(RecievedVO recieved) {
		
		Map<String, Object> amountAndAccNo = new HashMap<String, Object>();
			amountAndAccNo.put("amount", recieved.getAmount());
			amountAndAccNo.put("accNo", recieved.getGetAccNo());
		BigDecimal balance = accountDAO.selectAccountByAccNo(recieved.getGetAccNo()).getBalance();
		
		StatementVO recStatement = new StatementVO(recieved.getAmount(), balance.add(recieved.getAmount()), 
												recieved.getFromName(), recieved.getGetAccNo(), "입금");
		
		//받은 해외송금 승인
		recievedDAO.updateStatusRecieved(recieved);
		//계좌에 돈 입금
		accountDAO.updatePlusAmount(amountAndAccNo);
		//거래내역 기록
		statementDAO.insertRemittanceStatement(recStatement);
	}

}

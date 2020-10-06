package kr.ac.kopo.remittance.service;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.account.dao.AccountDAO;
import kr.ac.kopo.account.vo.AccountVO;
import kr.ac.kopo.remittance.dao.RemInfoDAO;
import kr.ac.kopo.remittance.dao.RemittanceDAO;
import kr.ac.kopo.remittance.vo.RemInfoVO;
import kr.ac.kopo.remittance.vo.RemittanceVO;
import kr.ac.kopo.statement.dao.StatementDAO;
import kr.ac.kopo.statement.vo.StatementVO;

@Service
public class RemittanceServiceImpl implements RemittanceService {

	@Autowired
	RemittanceDAO remittanceDAO;
	@Autowired
	AccountDAO accountDAO;
	@Autowired
	StatementDAO statementDAO;
	@Autowired
	RemInfoDAO remInfoDAO;

	@Override
	@Transactional
	public void insertRemittance(RemittanceVO remittanceVO) {
		//거래내역에 필요한 정보 불러옴
		Integer chargeTotal = (remittanceVO.getCableCharge() + remittanceVO.getInterCharge() + remittanceVO.getRemCharge());
		BigDecimal chargeTotalBig = new BigDecimal(String.valueOf(chargeTotal));
		RemInfoVO remInfo = remInfoDAO.selectRemInfoDetail(remittanceVO.getInfoNo());
		BigDecimal mainAccBalance = accountDAO.selectAccountByAccNo(remittanceVO.getAccNo()).getBalance();
		BigDecimal chargeAccBalance = accountDAO.selectAccountByAccNo(remittanceVO.getChargeAccNo()).getBalance();
		
		//송금내역 추가
		remittanceDAO.insertRemittance(remittanceVO);
		accountDAO.updateRemittanceAmount(remittanceVO);
		accountDAO.updateRemittanceAmount(new RemittanceVO(remittanceVO.getChargeAccNo(), chargeTotalBig));
		
		
		//거래내역 생성, 거래내역 insert
		StatementVO mainStatement = new StatementVO(remittanceVO.getAmount(), mainAccBalance.subtract(remittanceVO.getAmount()), 
													remInfo.getName(), remittanceVO.getAccNo(), "출금");
		StatementVO chargeStatement = new StatementVO(chargeTotalBig, chargeAccBalance.subtract(chargeTotalBig), 
													"해외송금 수수료", remittanceVO.getChargeAccNo(), "출금");
		statementDAO.insertRemittanceStatement(mainStatement);
		statementDAO.insertRemittanceStatement(chargeStatement);
		
	}

	@Override
	public void insertReservation(RemittanceVO remittanceVO) {
		remittanceDAO.insertReservation(remittanceVO);
	}

	@Override
	public List<Map<String, Object>> selectAllRemittance(String id) {
		return remittanceDAO.selectAllRemittance(id);
	}

	@Override
	public RemittanceVO selectRemittanceByRemNo(Integer remNo) {
		return remittanceDAO.selectRemittanceByRemNo(remNo);
	}
	
	@Scheduled(cron = "0 0 9 * * MON-FRI")
	@Override
	@Transactional
	public void insertRemittanceFromReservation() {
		System.out.println("스케줄러 실행중~~");
		
		//오늘 = 예약날짜 일 경우 모든 remittanceList를 가져옴
		List<RemittanceVO> remList = remittanceDAO.selectReservedTodayDateEqual();
		//각 remList를 돌며 모든 remittance 돈 나가게하고, 거래내역 넣기
		if(remList != null) {
			for(RemittanceVO remittanceVO : remList) {
				insertRemittance(remittanceVO);
			}
		}
	}
	
	/*-------------------------
		ADMIN PAGE
	-------------------------*/
	@Override
	public List<Map<String, Object>> selectAllRemittanceAdmin() {
		return remittanceDAO.selectAllRemittanceAdmin();
	}

	@Override
	public Map<String, Object> selectRemittanceCount() {
		return remittanceDAO.selectRemittanceCount();
	}

	@Override
	public void updateStatusRemittance(RemittanceVO remittance) {
		remittanceDAO.updateStatusRemittance(remittance);
	}

	
}

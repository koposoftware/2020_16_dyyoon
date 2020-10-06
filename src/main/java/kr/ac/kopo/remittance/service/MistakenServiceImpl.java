package kr.ac.kopo.remittance.service;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.taglibs.standard.extra.spath.Step;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.account.dao.AccountDAO;
import kr.ac.kopo.remittance.dao.MistakenDAO;
import kr.ac.kopo.remittance.dao.RemInfoDAO;
import kr.ac.kopo.remittance.dao.RemittanceDAO;
import kr.ac.kopo.remittance.vo.MistakenVO;
import kr.ac.kopo.remittance.vo.RemInfoVO;
import kr.ac.kopo.remittance.vo.RemittanceVO;
import kr.ac.kopo.statement.dao.StatementDAO;
import kr.ac.kopo.statement.vo.StatementVO;
@Service
public class MistakenServiceImpl implements MistakenService {

	@Autowired
	MistakenDAO mistakenDAO;
	@Autowired
	RemittanceDAO remittanceDAO;
	@Autowired
	AccountDAO accountDAO;
	@Autowired
	StatementDAO statementDAO;
	@Autowired
	RemInfoDAO remInfoDAO;
	
	@Override
	public void insertMistaken(MistakenVO mistakenVO) {
		mistakenDAO.insertMistaken(mistakenVO);
	}

	@Override
	public List<Map<String, Object>> selectAllMistaken(String id) {
		return mistakenDAO.selectAllMistaken(id);
	}

	
	
	/*------------------------------------
	 * 
	 * 			ADMIN PAGE
	 * 
	 * ----------------------------------*/
	@Override
	public List<Map<String, Object>> selectAllMistakenAdmin() {
		return mistakenDAO.selectAllMistakenAdmin();
	}

	@Override
	public Map<String, Object> selectMistakenCount() {
		return mistakenDAO.selectMistakenCount();
	}

	@Override
	public MistakenVO selectMistakenByMisNo(Integer misNo) {
		return mistakenDAO.selectMistakenByMisNo(misNo);
	}
	
	
	@Transactional
	@Override
	public void updateStatusMistaken(MistakenVO mistaken) {
		
		//반환완료일 경우 or 해당 은행 전문발송 완료 일 경우
				if(mistaken.getStatus().equals("반환완료")) {
					RemittanceVO remittanceVO = remittanceDAO.selectRemittanceByRemNo(mistaken.getRemNo());
					//거래내역에 필요한 정보 불러옴
					Integer chargeTotal = (remittanceVO.getCableCharge() + remittanceVO.getInterCharge() + remittanceVO.getRemCharge());
					BigDecimal chargeTotalBig = new BigDecimal(String.valueOf(chargeTotal));
					RemInfoVO remInfo = remInfoDAO.selectRemInfoDetail(remittanceVO.getInfoNo());
					BigDecimal mainAccBalance = accountDAO.selectAccountByAccNo(remittanceVO.getAccNo()).getBalance();
					BigDecimal chargeAccBalance = accountDAO.selectAccountByAccNo(remittanceVO.getChargeAccNo()).getBalance();
							
					//account에 돈 넣기 위한 map 생성
					Map<String, Object> mainMap = new HashMap<String, Object>();
					Map<String, Object> chargeMap = new HashMap<String, Object>();
					mainMap.put("accNo", remittanceVO.getAccNo());
					mainMap.put("amount", remittanceVO.getAmount());
					chargeMap.put("accNo", remittanceVO.getChargeAccNo());
					chargeMap.put("amount", chargeTotalBig);
					
					//statement객체 생성
					StatementVO mainStatement = new StatementVO(remittanceVO.getAmount(), mainAccBalance.add(remittanceVO.getAmount()), 
																"해외송금 반환", remittanceVO.getAccNo(), "입금");
					StatementVO chargeStatement = new StatementVO(chargeTotalBig, chargeAccBalance.add(chargeTotalBig), 
																"해외송금 수수료 반환", remittanceVO.getChargeAccNo(), "입금");
					
					//mistakenVO 고치기
					mistakenDAO.updateStatusMistaken(mistaken);
					//account 돈 넣기
					accountDAO.updatePlusAmount(mainMap);
					accountDAO.updatePlusAmount(chargeMap);
					//statement 추가하기
					statementDAO.insertRemittanceStatement(chargeStatement);
					statementDAO.insertRemittanceStatement(mainStatement);
					//remittance 상태 고치기 (status CA 취소로 고치기)
					remittanceDAO.updateStatusRemittance(new RemittanceVO(mistaken.getRemNo(), "CA"));
					
					
					
				}else if (mistaken.getStatus().equals("해당은행 반환대기")) {
					//mistakenVO 고치기
					mistakenDAO.updateStatusMistaken(mistaken);
					//remittance 상태 고치기 (status CA 취소로 고치기)
					remittanceDAO.updateStatusRemittance(new RemittanceVO(mistaken.getRemNo(), "CA"));
				}
	}
	

}

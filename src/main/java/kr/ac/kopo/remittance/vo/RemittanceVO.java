package kr.ac.kopo.remittance.vo;

import javax.validation.constraints.NotNull;

public class RemittanceVO {
	
	
	private Integer 	remNo;
	@NotNull(message = "필수 항목입니다~")
	private Integer 	infoNo;
	private String 		accType;
	private String 		accNo;
	private Float 		amount;
	private Float 		exchangeRate;
	private String		reason;
	private String		remDate;
	private String 		chargeAccNo;
//	5천달러 이하 3,000원 / 5천달러 이상 5,000원
	private Integer		remCharge;
//	
	private Integer		interCharge;
//	전신료 5,000원
	private Integer		cableCharge;
//	RM 수신인 부담 / RC 수취자부담
	private String	chargeCover;
//	RS(예약) / RM(수신은행) IN(중계은행) RC(수취은행)
	private String 	status;
	private String 	reservedDate;
	
	//이건 VO에만
	private String 	remInfoDesc;
	
	public RemittanceVO() {
		super();
	}
	
	
	public String getRemInfoDesc() {
		return remInfoDesc;
	}


	public void setRemInfoDesc(String remInfoDesc) {
		this.remInfoDesc = remInfoDesc;
	}


	public String getReservedDate() {
		return reservedDate;
	}


	public void setReservedDate(String reservedDate) {
		this.reservedDate = reservedDate;
	}


	public String getAccType() {
		return accType;
	}

	public void setAccType(String accType) {
		this.accType = accType;
	}

	public String getChargeAccNo() {
		return chargeAccNo;
	}

	public void setChargeAccNo(String chargeAccNo) {
		this.chargeAccNo = chargeAccNo;
	}

	public Integer getRemNo() {
		return remNo;
	}

	public void setRemNo(Integer remNo) {
		this.remNo = remNo;
	}

	public Integer getInfoNo() {
		return infoNo;
	}

	public void setInfoNo(Integer infoNo) {
		this.infoNo = infoNo;
	}

	public String getAccNo() {
		return accNo;
	}

	public void setAccNo(String accNo) {
		this.accNo = accNo;
	}

	public Float getAmount() {
		return amount;
	}

	public void setAmount(Float amount) {
		this.amount = amount;
	}

	public Float getExchangeRate() {
		return exchangeRate;
	}

	public void setExchangeRate(Float exchangeRate) {
		this.exchangeRate = exchangeRate;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getRemDate() {
		return remDate;
	}

	public void setRemDate(String remDate) {
		this.remDate = remDate;
	}

	public Integer getRemCharge() {
		return remCharge;
	}

	public void setRemCharge(Integer remCharge) {
		this.remCharge = remCharge;
	}

	public Integer getInterCharge() {
		return interCharge;
	}

	public void setInterCharge(Integer interCharge) {
		this.interCharge = interCharge;
	}

	public Integer getCableCharge() {
		return cableCharge;
	}

	public void setCableCharge(Integer cableCharge) {
		this.cableCharge = cableCharge;
	}

	public String getChargeCover() {
		return chargeCover;
	}

	public void setChargeCover(String chargeCover) {
		this.chargeCover = chargeCover;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}


	@Override
	public String toString() {
		return "RemittanceVO [remNo=" + remNo + ", infoNo=" + infoNo + ", accType=" + accType + ", accNo=" + accNo
				+ ", amount=" + amount + ", exchangeRate=" + exchangeRate + ", reason=" + reason + ", remDate="
				+ remDate + ", chargeAccNo=" + chargeAccNo + ", remCharge=" + remCharge + ", interCharge=" + interCharge
				+ ", cableCharge=" + cableCharge + ", chargeCover=" + chargeCover + ", status=" + status
				+ ", reservedDate=" + reservedDate + "]";
	}
	
}

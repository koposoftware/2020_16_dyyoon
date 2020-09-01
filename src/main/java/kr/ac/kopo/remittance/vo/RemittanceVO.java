package kr.ac.kopo.remittance.vo;

public class RemittanceVO {
	
	private int 	remNo;
	private int 	infoNo;
	private String 	accNo;
	private int 	amount;
	private int 	exchangeRate;
	private String	reason;
	private String	remDate;
	private int		remCharge;
	private int		interCharge;
	private int		cableCharge;
//	RM 수신인 부담 / RC 수취자부담
	private String	chargeCover;
//	RM 수신인 부담 / RC 수취자부담
	private String 	status;
	
	public RemittanceVO() {
		super();
	}

	public int getRemNo() {
		return remNo;
	}

	public void setRemNo(int remNo) {
		this.remNo = remNo;
	}

	public int getInfoNo() {
		return infoNo;
	}

	public void setInfoNo(int infoNo) {
		this.infoNo = infoNo;
	}

	public String getAccNo() {
		return accNo;
	}

	public void setAccNo(String accNo) {
		this.accNo = accNo;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getExchangeRate() {
		return exchangeRate;
	}

	public void setExchangeRate(int exchangeRate) {
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

	public int getRemCharge() {
		return remCharge;
	}

	public void setRemCharge(int remCharge) {
		this.remCharge = remCharge;
	}

	public int getInterCharge() {
		return interCharge;
	}

	public void setInterCharge(int interCharge) {
		this.interCharge = interCharge;
	}

	public int getCableCharge() {
		return cableCharge;
	}

	public void setCableCharge(int cableCharge) {
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
		return "RemittanceVO [remNo=" + remNo + ", infoNo=" + infoNo + ", accNo=" + accNo + ", amount=" + amount
				+ ", exchangeRate=" + exchangeRate + ", reason=" + reason + ", remDate=" + remDate + ", remCharge="
				+ remCharge + ", interCharge=" + interCharge + ", cableCharge=" + cableCharge + ", chargeCover="
				+ chargeCover + ", status=" + status + "]";
	}
	
}

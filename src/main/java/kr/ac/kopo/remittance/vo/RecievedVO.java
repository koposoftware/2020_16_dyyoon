package kr.ac.kopo.remittance.vo;

public class RecievedVO {

	private Integer recievedNo;
	private String fromName;
	private String fromPhone;
	private String fromEmail;
	private String fromNation;
	private String fromAddr;
	private String fromAddrDetail;
	private String fromBankCode;
	private String fromAccNo;
	private String currency;
	private Float amount;
	
	private String getAccNo;
	private String getName;
	private String getPhone;
	private String getEmail;
	private String getNation;
	private String getAddr;
	private String getAddrDetail;
//   -- 요청됨 / 비승인 / 승인 / 
	private String status;
	private String statusDesc;
	private String recievedDate;
	
	
	private String recievedDateWithoutTime;
	
	public RecievedVO() {
		super();
	}
	
	public String getStatusDesc() {
		return statusDesc;
	}

	public void setStatusDesc(String statusDesc) {
		this.statusDesc = statusDesc;
	}

	public String getRecievedDateWithoutTime() {
		return recievedDateWithoutTime;
	}

	public void setRecievedDateWithoutTime(String recievedDateWithoutTime) {
		this.recievedDateWithoutTime = recievedDateWithoutTime;
	}

	public String getRecievedDate() {
		return recievedDate;
	}

	public void setRecievedDate(String recievedDate) {
		this.recievedDate = recievedDate;
	}



	public Integer getRecievedNo() {
		return recievedNo;
	}

	public void setRecievedNo(Integer recievedNo) {
		this.recievedNo = recievedNo;
	}

	public String getFromName() {
		return fromName;
	}

	public void setFromName(String fromName) {
		this.fromName = fromName;
	}

	public String getFromPhone() {
		return fromPhone;
	}

	public void setFromPhone(String fromPhone) {
		this.fromPhone = fromPhone;
	}

	public String getFromEmail() {
		return fromEmail;
	}

	public void setFromEmail(String fromEmail) {
		this.fromEmail = fromEmail;
	}

	public String getFromNation() {
		return fromNation;
	}

	public void setFromNation(String fromNation) {
		this.fromNation = fromNation;
	}

	public String getFromAddr() {
		return fromAddr;
	}

	public void setFromAddr(String fromAddr) {
		this.fromAddr = fromAddr;
	}

	public String getFromAddrDetail() {
		return fromAddrDetail;
	}

	public void setFromAddrDetail(String fromAddrDetail) {
		this.fromAddrDetail = fromAddrDetail;
	}

	public String getFromBankCode() {
		return fromBankCode;
	}

	public void setFromBankCode(String fromBankCode) {
		this.fromBankCode = fromBankCode;
	}

	public String getFromAccNo() {
		return fromAccNo;
	}

	public void setFromAccNo(String fromAccNo) {
		this.fromAccNo = fromAccNo;
	}

	public String getCurrency() {
		return currency;
	}

	public void setCurrency(String currency) {
		this.currency = currency;
	}

	public Float getAmount() {
		return amount;
	}

	public void setAmount(Float amount) {
		this.amount = amount;
	}

	public String getGetAccNo() {
		return getAccNo;
	}

	public void setGetAccNo(String getAccNo) {
		this.getAccNo = getAccNo;
	}

	public String getGetName() {
		return getName;
	}

	public void setGetName(String getName) {
		this.getName = getName;
	}

	public String getGetPhone() {
		return getPhone;
	}

	public void setGetPhone(String getPhone) {
		this.getPhone = getPhone;
	}

	public String getGetEmail() {
		return getEmail;
	}

	public void setGetEmail(String getEmail) {
		this.getEmail = getEmail;
	}

	public String getGetNation() {
		return getNation;
	}

	public void setGetNation(String getNation) {
		this.getNation = getNation;
	}

	public String getGetAddr() {
		return getAddr;
	}

	public void setGetAddr(String getAddr) {
		this.getAddr = getAddr;
	}

	public String getGetAddrDetail() {
		return getAddrDetail;
	}

	public void setGetAddrDetail(String getAddrDetail) {
		this.getAddrDetail = getAddrDetail;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "RecievedVO [recievedNo=" + recievedNo + ", fromName=" + fromName + ", fromPhone=" + fromPhone
				+ ", fromEmail=" + fromEmail + ", fromNation=" + fromNation + ", fromAddr=" + fromAddr
				+ ", fromAddrDetail=" + fromAddrDetail + ", fromBankCode=" + fromBankCode + ", fromAccNo=" + fromAccNo
				+ ", currency=" + currency + ", amount=" + amount + ", getAccNo=" + getAccNo + ", getName=" + getName
				+ ", getPhone=" + getPhone + ", getEmail=" + getEmail + ", getNation=" + getNation + ", getAddr="
				+ getAddr + ", getAddrDetail=" + getAddrDetail + ", status=" + status + ", recievedDate=" + recievedDate
				+ "]";
	}

	
	
}

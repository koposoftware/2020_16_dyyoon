package kr.ac.kopo.reminfo.vo;

public class RemInfoVO {
	
	private int infoNo;
	private String name;
	private String phone;
	private String email;
	private String nation;
	private String addr;
	private String addrDetail;
	private String currency;
	private String bankName;
	private String bankCode;
	private String accNo;
	private String bankNation;
	private String bankAddr;
	private String bankAddrDetail;
	private String myDesc;
	private String status;
	private String statusDesc;
	private String id;
	
	public RemInfoVO() {
		super();
	}

	public int getInfoNo() {
		return infoNo;
	}

	public void setInfoNo(int infoNo) {
		this.infoNo = infoNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getAddrDetail() {
		return addrDetail;
	}

	public void setAddrDetail(String addrDetail) {
		this.addrDetail = addrDetail;
	}

	public String getCurrency() {
		return currency;
	}

	public void setCurrency(String currency) {
		this.currency = currency;
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public String getBankCode() {
		return bankCode;
	}

	public void setBankCode(String bankCode) {
		this.bankCode = bankCode;
	}

	public String getAccNo() {
		return accNo;
	}

	public void setAccNo(String accNo) {
		this.accNo = accNo;
	}

	public String getBankNation() {
		return bankNation;
	}

	public void setBankNation(String bankNation) {
		this.bankNation = bankNation;
	}

	public String getBankAddr() {
		return bankAddr;
	}

	public void setBankAddr(String bankAddr) {
		this.bankAddr = bankAddr;
	}

	public String getBankAddrDetail() {
		return bankAddrDetail;
	}

	public void setBankAddrDetail(String bankAddrDetail) {
		this.bankAddrDetail = bankAddrDetail;
	}

	public String getMyDesc() {
		return myDesc;
	}

	public void setMyDesc(String myDesc) {
		this.myDesc = myDesc;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getStatusDesc() {
		return statusDesc;
	}

	public void setStatusDesc(String statusDesc) {
		this.statusDesc = statusDesc;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "RemInfoVO [infoNo=" + infoNo + ", name=" + name + ", phone=" + phone + ", email=" + email + ", nation="
				+ nation + ", addr=" + addr + ", addrDetail=" + addrDetail + ", currency=" + currency + ", bankName="
				+ bankName + ", bankCode=" + bankCode + ", accNo=" + accNo + ", bankNation=" + bankNation
				+ ", bankAddr=" + bankAddr + ", bankAddrDetail=" + bankAddrDetail + ", myDesc=" + myDesc + ", status="
				+ status + ", statusDesc=" + statusDesc + ", id=" + id + "]";
	}
	
	
	

}

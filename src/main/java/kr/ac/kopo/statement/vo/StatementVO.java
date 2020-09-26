package kr.ac.kopo.statement.vo;

public class StatementVO {
	
	private Integer stateNo;
	private String type;
	private String stateDate;
	private Float amount;
	private Float balance;
	private String stateDesc;
	private String myDesc;
	private String accNo;
	
	public StatementVO() {
		super();
	}

	public Integer getStateNo() {
		return stateNo;
	}

	public void setStateNo(Integer stateNo) {
		this.stateNo = stateNo;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getStateDate() {
		return stateDate;
	}

	public void setStateDate(String stateDate) {
		this.stateDate = stateDate;
	}

	public Float getAmount() {
		return amount;
	}

	public void setAmount(Float amount) {
		this.amount = amount;
	}

	public Float getBalance() {
		return balance;
	}

	public void setBalance(Float balance) {
		this.balance = balance;
	}

	public String getStateDesc() {
		return stateDesc;
	}

	public void setStateDesc(String stateDesc) {
		this.stateDesc = stateDesc;
	}

	public String getMyDesc() {
		return myDesc;
	}

	public void setMyDesc(String myDesc) {
		this.myDesc = myDesc;
	}

	public String getAccNo() {
		return accNo;
	}

	public void setAccNo(String accNo) {
		this.accNo = accNo;
	}

	@Override
	public String toString() {
		return "StatementVO [stateNo=" + stateNo + ", type=" + type + ", stateDate=" + stateDate + ", amount=" + amount
				+ ", balance=" + balance + ", stateDesc=" + stateDesc + ", myDesc=" + myDesc + ", accNo=" + accNo + "]";
	}
	
	

}

package kr.ac.kopo.statement.vo;

import java.math.BigDecimal;

public class StatementVO {
	
	private Integer stateNo;
	private String type;
	private String stateDate;
	private BigDecimal amount;
	private BigDecimal balance;
	private String typeDesc;
	private String stateDesc;
	private String accNo;
	
	private String amountConvert;
	private String balanceConvert;
	
	public StatementVO() {
		super();
	}

	
	
	public StatementVO(BigDecimal amount, BigDecimal balance, String stateDesc, String accNo, String type) {
		super();
		this.amount = amount;
		this.balance = balance;
		this.stateDesc = stateDesc;
		this.accNo = accNo;
		this.type = type;
	}



	public String getAmountConvert() {
		return amountConvert;
	}

	public void setAmountConvert(String amountConvert) {
		this.amountConvert = amountConvert;
	}

	public String getBalanceConvert() {
		return balanceConvert;
	}


	public void setBalanceConvert(String balanceConvert) {
		this.balanceConvert = balanceConvert;
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

	public BigDecimal getAmount() {
		return amount;
	}

	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}

	public BigDecimal getBalance() {
		return balance;
	}

	public void setBalance(BigDecimal balance) {
		this.balance = balance;
	}

	public String getStateDesc() {
		return stateDesc;
	}

	public void setStateDesc(String stateDesc) {
		this.stateDesc = stateDesc;
	}

	public String getTypeDesc() {
		return typeDesc;
	}

	public void setTypeDesc(String typeDesc) {
		this.typeDesc = typeDesc;
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
				+ ", balance=" + balance + ", typeDesc=" + typeDesc + ", stateDesc=" + stateDesc + ", accNo=" + accNo
				+ ", amountConvert=" + amountConvert + ", balanceConvert=" + balanceConvert + "]";
	}


}

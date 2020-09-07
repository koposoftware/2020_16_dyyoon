package kr.ac.kopo.account.vo;

public class AccountVO {
	
	private String 	accNo;
	private String 	pwd;
	private String	type;
	private String 	currency;
	private String 	accName;
	private String 	alias;
	private String 	openDate;
	private Float	balance;
	private String 	id;
	
	public AccountVO() {
		super();
	}

	public String getAccNo() {
		return accNo;
	}

	public void setAccNo(String accNo) {
		this.accNo = accNo;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getCurrency() {
		return currency;
	}

	public void setCurrency(String currency) {
		this.currency = currency;
	}

	public String getAccName() {
		return accName;
	}

	public void setAccName(String accName) {
		this.accName = accName;
	}

	public String getAlias() {
		return alias;
	}

	public void setAlias(String alias) {
		this.alias = alias;
	}

	public String getOpenDate() {
		return openDate;
	}

	public void setOpenDate(String openDate) {
		this.openDate = openDate;
	}

	public Float getBalance() {
		return balance;
	}

	public void setBalance(Float balance) {
		this.balance = balance;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "AccountVO [accNo=" + accNo + ", pwd=" + pwd + ", type=" + type + ", currency=" + currency + ", accName="
				+ accName + ", alias=" + alias + ", openDate=" + openDate + ", balance=" + balance + ", id=" + id + "]";
	}
	
	

}

package kr.ac.kopo.exchange.vo;

public class ExchangeVO {
	
	private String currency;
	private Float  cashbuyrate;
	private String cashbuyspread;
	private String cashsellrate;
	private String cashsellspread;
	private String remittance;
	private String receive;
	private String tcbuy;
	private String fcsell;
	private String basicrate;
	private String conversion;
	private String usdrate;
	
	private String	regdate;
	
	public ExchangeVO() {
		super();
	}

	public String getCurrency() {
		return currency;
	}

	public void setCurrency(String currency) {
		this.currency = currency;
	}

	public Float getCashbuyrate() {
		return cashbuyrate;
	}

	public void setCashbuyrate(Float cashbuyrate) {
		this.cashbuyrate = cashbuyrate;
	}

	public String getCashbuyspread() {
		return cashbuyspread;
	}

	public void setCashbuyspread(String cashbuyspread) {
		this.cashbuyspread = cashbuyspread;
	}

	public String getCashsellrate() {
		return cashsellrate;
	}

	public void setCashsellrate(String cashsellrate) {
		this.cashsellrate = cashsellrate;
	}

	public String getCashsellspread() {
		return cashsellspread;
	}

	public void setCashsellspread(String cashsellspread) {
		this.cashsellspread = cashsellspread;
	}

	public String getRemittance() {
		return remittance;
	}

	public void setRemittance(String remittance) {
		this.remittance = remittance;
	}

	public String getReceive() {
		return receive;
	}

	public void setReceive(String receive) {
		this.receive = receive;
	}

	public String getTcbuy() {
		return tcbuy;
	}

	public void setTcbuy(String tcbuy) {
		this.tcbuy = tcbuy;
	}

	public String getFcsell() {
		return fcsell;
	}

	public void setFcsell(String fcsell) {
		this.fcsell = fcsell;
	}

	public String getBasicrate() {
		return basicrate;
	}

	public void setBasicrate(String basicrate) {
		this.basicrate = basicrate;
	}

	public String getConversion() {
		return conversion;
	}

	public void setConversion(String conversion) {
		this.conversion = conversion;
	}

	public String getUsdrate() {
		return usdrate;
	}

	public void setUsdrate(String usdrate) {
		this.usdrate = usdrate;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "ExchangeVO [currency=" + currency + ", cashbuyrate=" + cashbuyrate + ", cashbuyspread=" + cashbuyspread
				+ ", cashsellrate=" + cashsellrate + ", cashsellspread=" + cashsellspread + ", remittance=" + remittance
				+ ", receive=" + receive + ", tcbuy=" + tcbuy + ", fcsell=" + fcsell + ", basicrate=" + basicrate
				+ ", conversion=" + conversion + ", usdrate=" + usdrate + ", regdate=" + regdate + "]";
	}
	
	
}

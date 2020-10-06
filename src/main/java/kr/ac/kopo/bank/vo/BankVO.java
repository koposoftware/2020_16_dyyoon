package kr.ac.kopo.bank.vo;

public class BankVO {
	
	private String bankCode;
	private String bankName;
	private String branchName;
	private String countryCode;
	private String countryName;
	private String city;
	private String address;
	private String post;
	
	public BankVO() {
		super();
	}

	public String getBankCode() {
		return bankCode;
	}

	public void setBankCode(String bankCode) {
		this.bankCode = bankCode;
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	public String getCountryCode() {
		return countryCode;
	}

	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
	}

	public String getCountryName() {
		return countryName;
	}

	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	@Override
	public String toString() {
		return "BankVO [bankCode=" + bankCode + ", bankName=" + bankName + ", branchName=" + branchName
				+ ", countryCode=" + countryCode + ", countryName=" + countryName + ", city=" + city + ", address="
				+ address + ", post=" + post + "]";
	}
	
	

}

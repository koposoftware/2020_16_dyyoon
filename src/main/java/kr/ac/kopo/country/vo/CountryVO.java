package kr.ac.kopo.country.vo;

public class CountryVO {
	
	private String countryCode;
	private String countryName;
	private String countryEngName;
	private String currencyCode;
	private String currencyName;
	private String phoneCode;
	
	public CountryVO() {
		super();
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

	public String getCountryEngName() {
		return countryEngName;
	}

	public void setCountryEngName(String countryEngName) {
		this.countryEngName = countryEngName;
	}

	public String getCurrencyCode() {
		return currencyCode;
	}

	public void setCurrencyCode(String currencyCode) {
		this.currencyCode = currencyCode;
	}

	public String getCurrencyName() {
		return currencyName;
	}

	public void setCurrencyName(String currencyName) {
		this.currencyName = currencyName;
	}

	public String getPhoneCode() {
		return phoneCode;
	}

	public void setPhoneCode(String phoneCode) {
		this.phoneCode = phoneCode;
	}

	@Override
	public String toString() {
		return "CountryVO [countryCode=" + countryCode + ", countryName=" + countryName + ", countryEngName="
				+ countryEngName + ", currencyCode=" + currencyCode + ", currencyName=" + currencyName + ", phoneCode="
				+ phoneCode + "]";
	}
	
	

}

package kr.ac.kopo.remittance.vo;

public class MistakenVO {

	private Integer misNo;
	// 계좌번호 기재 착오 / 금액 입력 오류 / 이중 입금 / 기타 사유
	private String reason;
	private String reasonDesc;
	private String status;
	private Integer remNo;
	private String regDate;
	private String id;
	
	public MistakenVO() {
		super();
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Integer getMisNo() {
		return misNo;
	}

	public void setMisNo(Integer misNo) {
		this.misNo = misNo;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getReasonDesc() {
		return reasonDesc;
	}

	public void setReasonDesc(String reasonDesc) {
		this.reasonDesc = reasonDesc;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Integer getRemNo() {
		return remNo;
	}

	public void setRemNo(Integer remNo) {
		this.remNo = remNo;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "MistakenVO [misNo=" + misNo + ", reason=" + reason + ", reasonDesc=" + reasonDesc + ", status=" + status
				+ ", remNo=" + remNo + ", regDate=" + regDate + "]";
	}
	
	
}

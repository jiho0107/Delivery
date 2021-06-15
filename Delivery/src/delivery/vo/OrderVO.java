package delivery.vo;

public class OrderVO {
	private int oId; //주문번호
	private String pName; //제품명
	private int count; //총 수량
	private int totalSum; //총 금액
	private String date; //주문일자
	public OrderVO() {}
	public OrderVO(int oId,String pName,int count,int totalSum,String date){
		this.oId = oId;
		this.pName = pName;
		this.count = count;
		this.totalSum = totalSum;
		this.date = date;
	}
	public int getOId() {
		return oId;
	}
	public void setOId(int oId) {
		this.oId = oId;
	}
	public String getPName() {
		return pName;
	}
	public void setPName(String pName) {
		this.pName = pName;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getTotalSum() {
		return totalSum;
	}
	public void setTotalSum(int totalSum) {
		this.totalSum = totalSum;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
}

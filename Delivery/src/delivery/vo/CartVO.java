package delivery.vo;

public class CartVO {
	private int cNo; //장바구니 번호
	private String pId; //제품번호
	private String pName; //제품명
	private String pStore; //제조업체
	private int count; //수량
	private int sum; //총액
	public CartVO() {}
	public CartVO(int cNo,String pId,String pName,String pStore,int count,int sum) {
		this.cNo = cNo;
		this.pId = pId;
		this.pName = pName;
		this.pStore = pStore;
		this.count = count;
		this.sum = sum;
	}
	public int getCNo() {
		return cNo;
	}
	public void setCNo(int cNo) {
		this.cNo = cNo;
	}
	public String getPId() {
		return pId;
	}
	public void setPId(String pId) {
		this.pId = pId;
	}
	public String getPName() {
		return pName;
	}
	public void setPName(String pName) {
		this.pName = pName;
	}
	public String getPStore() {
		return pStore;
	}
	public void setPStore(String pStore) {
		this.pStore = pStore;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
}

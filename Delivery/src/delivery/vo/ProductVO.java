package delivery.vo;

public class ProductVO {
	private String no;
	private String name;
	private int price;
	private String store;
	private String type;
	private String img;
	public ProductVO() {}
	public ProductVO(String no,String name,int price,String store,String type,String img) {
		this.no = no;
		this.name = name;
		this.price = price;
		this.store = store;
		this.type = type;
		this.img = img;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getStore() {
		return store;
	}
	public void setStore(String store) {
		this.store = store;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
}

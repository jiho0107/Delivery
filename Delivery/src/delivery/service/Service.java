package delivery.service;

import java.util.ArrayList;

import delivery.dao.DeliveryDao;
import delivery.vo.CartVO;
import delivery.vo.OrderVO;
import delivery.vo.ProductVO;

public class Service {
	private static Service service = new Service();
	private Service() {}
	private DeliveryDao dao = DeliveryDao.getInstance();
	public static Service getInstance()
	{
		return service;
	}
	public boolean login(String id,String pwd)
	{
		return dao.login(id,pwd);
	}
	public boolean idCheck(String id) {
		// TODO Auto-generated method stub
		return dao.idCheck(id);
	}
	public void join(String id,String pwd,String nick,String name,String addr,String tel,String email,String birth){
		dao.join(id,pwd,nick,name,addr,tel,email,birth);
	}
	public ArrayList<String> showStores(String type) {
		// TODO Auto-generated method stub
		return dao.showStores(type);
	}
	public ArrayList<ProductVO> showItems(String store) {
		// TODO Auto-generated method stub
		return dao.showItems(store);
	}
	public void add(String id,String no, int count) {
		// TODO Auto-generated method stub
		dao.add(id,no,count);
	}
	public ArrayList<CartVO> cartList(String id) {
		// TODO Auto-generated method stub
		return dao.cartList(id);
	}
	public void delete(int cNo) {
		// TODO Auto-generated method stub
		dao.delete(cNo);
	}
	public void order(String id, int totalSum) {
		// TODO Auto-generated method stub
		dao.order(id,totalSum);
	}
	public ArrayList<OrderVO> orderList(String id) {
		// TODO Auto-generated method stub
		return dao.orderList(id);
	}
	
}

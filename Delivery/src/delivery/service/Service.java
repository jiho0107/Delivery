package delivery.service;

import delivery.dao.DeliveryDao;

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
	
}

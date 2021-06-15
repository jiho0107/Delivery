package delivery.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import delivery.vo.CartVO;
import delivery.vo.OrderVO;
import delivery.vo.ProductVO;

public class DeliveryDao {
	private static DeliveryDao dao = new DeliveryDao();
	private DeliveryDao() {}
	public static DeliveryDao getInstance()
	{
		return dao;
	}
	public Connection connect()
	{
		Connection conn=null;
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/delivery","root","1234");
		}catch(Exception e) {
			System.out.print("DAO Connect error"+e);
		}
		return conn;
	}
	public void close(Connection conn,PreparedStatement pstmt)
	{
		if(pstmt != null)
		{
			try {
				pstmt.close();
			}catch(Exception e) {
				System.out.print("Pstmt close error"+e);
			}
		}
		if(conn != null)
		{
			try {
				conn.close();
			}catch(Exception e) {
				System.out.print("Conn close error"+e);
			}
		}
	}
	public void close(Connection conn,PreparedStatement pstmt,ResultSet rs) 
	{
		if(rs != null)
		{
			try
			{
				rs.close();
			}catch(Exception e)
			{
				System.out.print("rs close error"+e);
			}
		}
		close(conn,pstmt);
	}
	public void close(Connection conn,PreparedStatement pstmt,ResultSet rs,ResultSet rs2) 
	{
		if(rs2 != null)
		{
			try
			{
				rs2.close();
			}catch(Exception e)
			{
				System.out.print("rs2 close error"+e);
			}
		}
		close(conn,pstmt,rs);
	}
	public boolean login(String id, String pwd) {
		// TODO Auto-generated method stub
		boolean result = false;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			conn = connect();
			pstmt = conn.prepareStatement("select * from 회원 where 아이디=? and 비밀번호=?;");
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				result = true;
			}
		}catch(Exception e) {
			System.out.print("Login error"+e);
		}finally {
			close(conn,pstmt,rs);
		}
		return result;
	}
	public boolean idCheck(String id) {
		// TODO Auto-generated method stub
		boolean result = false; //중복아님
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			conn = connect();
			pstmt = conn.prepareStatement("select * from 회원 where 아이디=?;");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				result = true; //중복임
			}
		}catch(Exception e) {
			System.out.print("IdCheck error"+e);
		}finally {
			close(conn,pstmt,rs);
		}
		return result;
	}
	public void join(String id, String pwd, String nick, String name, String addr, String tel, String email,
			String birth) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		try
		{
			conn = connect();
			pstmt = conn.prepareStatement("insert into 회원 values(?,?,?,?,?,?,?,?);");
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			pstmt.setString(3, nick);
			pstmt.setString(4, name);
			pstmt.setString(5, addr);
			pstmt.setString(6, tel);
			pstmt.setString(7, email);
			pstmt.setString(8, birth);
			pstmt.executeUpdate();
		}catch(Exception e) {
			System.out.print("Join error"+e);
		}finally {
			close(conn,pstmt);
		}
	}
	public ArrayList<String> showStores(String type) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<String> lists = new ArrayList<String>();
		String list = null;
		try
		{
			conn = connect();
			pstmt = conn.prepareStatement("select distinct 제조업체 from 제품 where 종류=?;");
			pstmt.setString(1, type);
			rs = pstmt.executeQuery();
			while(rs.next())
			{
				list = rs.getString(1);
				lists.add(list);
			}
		}catch(Exception e) {
			System.out.print("ShowStores error"+e);
		}finally {
			close(conn,pstmt,rs);
		}
		return lists;
	}
	public ArrayList<ProductVO> showItems(String store) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<ProductVO> lists = new ArrayList<ProductVO>();
		ProductVO list = null;
		String no;
		String name;
		int price;
		String istore;
		String type;
		String img;
		try
		{
			conn = connect();
			pstmt = conn.prepareStatement("select * from 제품 where 제조업체=?;");
			pstmt.setString(1, store);
			rs = pstmt.executeQuery();
			while(rs.next())
			{
				no = rs.getString(1);
				name = rs.getString(2);
				price = rs.getInt(3);
				istore = rs.getString(4);
				type = rs.getString(5);
				img = rs.getString(6);
				list = new ProductVO(no,name,price,istore,type,img);
				lists.add(list);
			}
		}catch(Exception e) {
			System.out.print("ShowItems error"+e);
		}finally {
			close(conn,pstmt,rs);
		}
		return lists;
	}
	public void add(String id,String no, int count) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int addNo=1;
		int price=0;
		int total=0;
		try
		{
			conn = connect();
			pstmt = conn.prepareStatement("select count(번호) from 장바구니;");
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				addNo = rs.getInt(1) + 1; //새로 담을 장바구니 번호
			}
			pstmt = conn.prepareStatement("select 가격 from 제품 where 제품번호=?;");
			pstmt.setString(1, no);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				price = rs.getInt(1); //제품 가격
			}
			total = price * count; //총 금액
			pstmt = conn.prepareStatement("insert into 장바구니 values(?,?,?,?,?);");
			pstmt.setInt(1,addNo); //장바구니 번호
			pstmt.setString(2,id); //고객id
			pstmt.setString(3,no); //제품id
			pstmt.setInt(4,count); //수량
			pstmt.setInt(5,total); //금액
			pstmt.executeUpdate();
		}catch(Exception e) {
			System.out.print("Add error"+e);
		}finally {
			close(conn,pstmt,rs);
		}
	}
	public ArrayList<CartVO> cartList(String id) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ResultSet rs2 = null;
		ArrayList<CartVO> lists = new ArrayList<CartVO>();
		CartVO list = null;
		int cNo;
		String pId = null;
		int count = 0;
		int sum = 0;
		String pName = null;
		String pStore = null;
		try
		{
			conn = connect();
			pstmt = conn.prepareStatement("select * from 장바구니 where 고객=?;");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next())
			{
				cNo = rs.getInt(1); //장바구니 번호
				pId = rs.getString(3); //제품id
				count = rs.getInt(4); //수량
				sum = rs.getInt(5); //금액
				pstmt = conn.prepareStatement("select * from 제품 where 제품번호=?;");
				pstmt.setString(1,pId);
				rs2 = pstmt.executeQuery();
				if(rs2.next()) 
				{
					pName = rs2.getString(2); //제품명
					pStore = rs2.getString(4); //제조업체
				}
				list = new CartVO(cNo,pId,pName,pStore,count,sum);
				lists.add(list);
			}
		}catch(Exception e) {
			System.out.print("CartList error"+e);
		}finally {
			close(conn,pstmt,rs,rs2);
		}
		return lists;
	}
	public void delete(int cNo) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		try
		{
			conn = connect();
			pstmt = conn.prepareStatement("delete from 장바구니 where 번호=?;");
			pstmt.setInt(1, cNo);
			pstmt.executeUpdate();
		}catch(Exception e) {
			System.out.print("Delete error"+e);
		}finally {
			close(conn,pstmt);
		}
	}
	public void order(String id, int totalSum) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ResultSet rs2 = null;
		int oId=1; //주문번호
		int count; //각 제품 수량
		int totalCount = 0; //총 수량
		String pId=null; //제품id
		String pName=null; //제품명
		String names=null; //외 제품명
		try
		{
			conn = connect();
			pstmt = conn.prepareStatement("select count(*) from 주문;");
			rs = pstmt.executeQuery();
			if(rs.next())
				oId= rs.getInt(1) + 1; //새로 주문하는 주문번호
			pstmt = conn.prepareStatement("select * from 장바구니 where 고객=?;");
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				pId = rs.getString(3); //제품id
				count = rs.getInt(4); //각 제품의 수량
				totalCount += count; //총 수량
				pstmt = conn.prepareStatement("select 제품명 from 제품 where 제품번호=?;");
				pstmt.setString(1,pId);
				rs2 = pstmt.executeQuery();
				if(rs2.next()) {
					pName = rs2.getString(1); //제품명
				}
			}
			names = pName + " 외 "+(totalCount-1)+"건"; //여러 제품명들
			pstmt = conn.prepareStatement("insert into 주문(주문번호,주문고객,주문제품,수량,총액) values(?,?,?,?,?);");
			pstmt.setInt(1,oId); //주문번호
			pstmt.setString(2,id); //회원id
			pstmt.setString(3,names); //주문제품명들
			pstmt.setInt(4,totalCount); //총 수량
			pstmt.setInt(5,totalSum); //총 금액
			pstmt.executeUpdate();
		}catch(Exception e) {
			System.out.print("Order error"+e);
		}finally {
			close(conn,pstmt,rs,rs2);
		}
	}
	public ArrayList<OrderVO> orderList(String id) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		OrderVO list = null;
		ArrayList<OrderVO> lists = new ArrayList<OrderVO>();
		int oId;
		String pNames=null;
		int totalCount=0;
		int totalSum=0;
		String date=null;
		try
		{
			conn = connect();
			pstmt = conn.prepareStatement("select * from 주문 where 주문고객=?;");
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			while(rs.next())
			{
				oId = rs.getInt(1); //주문번호
				pNames = rs.getString(3); //주문제품명들
				totalCount = rs.getInt(4); //총 수량
				totalSum = rs.getInt(5); //총액
				date = rs.getString(6); //주문날짜
				list = new OrderVO(oId,pNames,totalCount,totalSum,date);
				lists.add(list);
			}
		}catch(Exception e) {
			System.out.print("OrderList error"+e);
		}finally {
			close(conn,pstmt,rs);
		}
		return lists;
	}
	
}

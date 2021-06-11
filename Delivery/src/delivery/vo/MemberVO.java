package delivery.vo;

public class MemberVO {
	private String id;
	private String pwd;
	private String name;
	private String nickName;
	private String addr;
	private String tel;
	private String email;
	private String birth;
	
	public String getId()
	{
		return id;
	}
	public void setId(String tId)
	{
		this.id = tId;
	}
	public String getPwd()
	{
		return pwd;
	}
	public void setPwd(String tPwd)
	{
		this.pwd = tPwd;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String tName)
	{
		this.name = tName;
	}
	public String getNickName()
	{
		return nickName;
	}
	public void setNickName(String tNickName)
	{
		this.nickName = tNickName;
	}
	public String getAddr()
	{
		return addr;
	}
	public void setAddr(String addr)
	{
		this.addr = addr;
	}
	public String getTel()
	{
		return tel;
	}
	public void setTel(String tel)
	{
		this.tel = tel;
	}
	public String getEmail()
	{
		return email;
	}
	public void setEmail(String email)
	{
		this.email = email;
	}
	public String getBirth()
	{
		return birth;
	}
	public void setBirth(String birth)
	{
		this.birth = birth;
	}
}

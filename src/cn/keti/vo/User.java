package cn.keti.vo;

public class User {
	private int UserID;
	private String UserName;
	private String Password;
	private String Telephone;
	private String Email;
	public int getUserID() {
		return UserID;
	}
	public void setUserID(int userID) {
		UserID = userID;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getTelephone() {
		return Telephone;
	}
	public void setTelephone(String telephone) {
		Telephone = telephone;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	
	
	
	@Override
	public String toString() {
		return "User [UserID=" + UserID + ", UserName=" + UserName + ", Password=" + Password + ", Telephone="
				+ Telephone + ", Email=" + Email + "]";
	}
	
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}


}

package model;

public class Member {
	private String email; 
	private String pw;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	
	@Override
	public String toString() {
		return "Member [email=" + email + ", pw=" + pw + "]";
	}
	
}

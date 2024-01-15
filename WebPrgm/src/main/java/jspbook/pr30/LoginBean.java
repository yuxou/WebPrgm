package jspbook.pr30;

public class LoginBean {
	String id;
	String pw;
	Integer gender;
	String email;
	String birth;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public Integer getGender() {
		return gender;
	}
	public void setGender(Integer gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	
	public boolean isGrownUp() {
		String[] dArray = birth.split("-");
		if(Integer.parseInt(dArray[0]) <= 2003)
			return true;
		return false;
	}
}

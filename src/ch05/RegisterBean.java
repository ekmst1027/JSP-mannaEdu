package ch05;

import java.sql.Timestamp;

public class RegisterBean {
	private String id;
	private String passwd;
	private String name;
	private Timestamp reg_date;	// java.sql.Timestamp
	// 타임스탬프 : 1970.1.1 ~ 현재까지의 밀리세컨드값
	
	// Getters and Setters
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	
	
}

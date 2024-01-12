package com.financial;

public class salary {
	
	
	private int id;
	private String name;
	private String eid;
	private String email;
	private String phone;
	private String ot;
	private String bonus;
	private String salary;
	public salary(int id, String name, String eid, String email, String phone, String ot, String bonus, String salary) {
		super();
		this.id = id;
		this.name = name;
		this.eid = eid;
		this.email = email;
		this.phone = phone;
		this.ot = ot;
		this.bonus = bonus;
		this.salary = salary;
	}
	public int getId() {
		return id;
	}

	
	public String getName() {
		return name;
	}

	
	public String getEid() {
		return eid;
	}

	
	public String getEmail() {
		return email;
	}

	
	public String getPhone() {
		return phone;
	}

	public String getOt() {
		return ot;
	}

	public String getBonus() {
		return bonus;
	}
	public String getSalary() {
		return salary;
	}
	
	

}

package com.mono.ums.dto;

public class DestDTO {

	int msg_id;
	String dest_name;
	String dest_num;
	String var1;
	String var2;
	String var3;
	String var4;

	@Override
	public String toString() {
		return "DestDTO [msg_id=" + msg_id + ", dest_name=" + dest_name + ", dest_num=" + dest_num + ", var1=" + var1 + ", var2=" + var2 + ", var3="
				+ var3 + ", var4=" + var4 + "]";
	}

	public int getMsg_id() {
		return msg_id;
	}

	public void setMsg_id(int msg_id) {
		this.msg_id = msg_id;
	}

	public String getDest_name() {
		return dest_name;
	}

	public void setDest_name(String dest_name) {
		this.dest_name = dest_name;
	}

	public String getDest_num() {
		return dest_num;
	}

	public void setDest_num(String dest_num) {
		this.dest_num = dest_num;
	}

	public String getVar1() {
		return var1;
	}

	public void setVar1(String var1) {
		this.var1 = var1;
	}

	public String getVar2() {
		return var2;
	}

	public void setVar2(String var2) {
		this.var2 = var2;
	}

	public String getVar3() {
		return var3;
	}

	public void setVar3(String var3) {
		this.var3 = var3;
	}

	public String getVar4() {
		return var4;
	}

	public void setVar4(String var4) {
		this.var4 = var4;
	}

}

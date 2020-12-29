package com.mono.ums.dto;

public class Send_SelectDTO {
	
	int msg_id;
	String depart_num;
	String subject;
	int sch_type;
	String now_date;// 요청 일시
	String send_date;// 전송 일시
	int total_count;
	String msg_content;
	String attach_file;
	String reserved1;
	String reserved2;
	String dest_name;
	String dest_num;
	String var1;
	String var2;
	String var3;
	String var4;
	String dest_info;
	
	public String getDest_info() {
		return dest_info;
	}
	public void setDest_info(String dest_info) {
		this.dest_info = dest_info;
	}
	public int getMsg_id() {
		return msg_id;
	}
	public void setMsg_id(int msg_id) {
		this.msg_id = msg_id;
	}
	public String getDepart_num() {
		return depart_num;
	}
	public void setDepart_num(String depart_num) {
		this.depart_num = depart_num;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public int getSch_type() {
		return sch_type;
	}
	public void setSch_type(int sch_type) {
		this.sch_type = sch_type;
	}
	public String getNow_date() {
		return now_date;
	}
	public void setNow_date(String now_date) {
		this.now_date = now_date;
	}
	public String getSend_date() {
		return send_date;
	}
	public void setSend_date(String send_date) {
		this.send_date = send_date;
	}
	public int getTotal_count() {
		return total_count;
	}
	public void setTotal_count(int total_count) {
		this.total_count = total_count;
	}
	public String getMsg_content() {
		return msg_content;
	}
	public void setMsg_content(String msg_content) {
		this.msg_content = msg_content;
	}
	public String getAttach_file() {
		return attach_file;
	}
	public void setAttach_file(String attach_file) {
		this.attach_file = attach_file;
	}
	public String getReserved1() {
		return reserved1;
	}
	public void setReserved1(String reserved1) {
		this.reserved1 = reserved1;
	}
	public String getReserved2() {
		return reserved2;
	}
	public void setReserved2(String reserved2) {
		this.reserved2 = reserved2;
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

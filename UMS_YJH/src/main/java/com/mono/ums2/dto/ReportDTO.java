package com.mono.ums2.dto;

public class ReportDTO {
	
	int msgId;
	int schedule_type;
	String subject;
	String sms_msg;
	String now_date;
	String send_Date;
	String sendtype;
	int dest_count;
	String callback;
	int succ_count;
	int fail_count;
	public int getMsgId() {
		return msgId;
	}
	public void setMsgId(int msgId) {
		this.msgId = msgId;
	}
	public int getSchedule_type() {
		return schedule_type;
	}
	public void setSchedule_type(int schedule_type) {
		this.schedule_type = schedule_type;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getSms_msg() {
		return sms_msg;
	}
	public void setSms_msg(String sms_msg) {
		this.sms_msg = sms_msg;
	}
	public String getNow_date() {
		return now_date;
	}
	public void setNow_date(String now_date) {
		this.now_date = now_date;
	}
	public String getSend_Date() {
		return send_Date;
	}
	public void setSend_Date(String send_Date) {
		this.send_Date = send_Date;
	}
	public String getSendtype() {
		return sendtype;
	}
	public void setSendtype(String sendtype) {
		this.sendtype = sendtype;
	}
	public int getDest_count() {
		return dest_count;
	}
	public void setDest_count(int dest_count) {
		this.dest_count = dest_count;
	}
	public String getCallback() {
		return callback;
	}
	public void setCallback(String callback) {
		this.callback = callback;
	}
	public int getSucc_count() {
		return succ_count;
	}
	public void setSucc_count(int succ_count) {
		this.succ_count = succ_count;
	}
	public int getFail_count() {
		return fail_count;
	}
	public void setFail_count(int fail_count) {
		this.fail_count = fail_count;
	}
	
	
}

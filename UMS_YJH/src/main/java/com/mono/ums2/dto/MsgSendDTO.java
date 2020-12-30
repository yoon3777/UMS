package com.mono.ums2.dto;

import java.io.Serializable;

public class MsgSendDTO implements Serializable{
	
	private static final long serialVersionUID = -8743510853291273555L;
	
	int msgId;
	String sendType;
	int schdType;
	String subject;
	String departNum;
	String nowDate;// 요청 일시
	String sendDate;// 전송 일시
	int MsgCnt;
	String msgContent;
	String attachFile;
	String reserved1;
	String reserved2;
	
	public int getMsgId() {
		return msgId;
	}
	public void setMsgId(int msgId) {
		this.msgId = msgId;
	}
	public String getDepartNm() {
		return departNum;
	}
	public void setDepartNm(String departNm) {
		this.departNum = departNm;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public int getSchdType() {
		return schdType;
	}
	public void setSchdType(int schdType) {
		this.schdType = schdType;
	}
	public String getNowDate() {
		return nowDate;
	}
	public void setNowDate(String nowDate) {
		this.nowDate = nowDate;
	}
	public String getSendDate() {
		return sendDate;
	}
	public void setSendDate(String sendDate) {
		this.sendDate = sendDate;
	}
	public int getMsgCnt() {
		return MsgCnt;
	}
	public void setMsgCnt(int msgCnt) {
		MsgCnt = msgCnt;
	}
	public String getMsgContent() {
		return msgContent;
	}
	public void setMsgContent(String msgContent) {
		this.msgContent = msgContent;
	}
	public String getAttachFile() {
		return attachFile;
	}
	public void setAttachFile(String attachFile) {
		this.attachFile = attachFile;
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
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}

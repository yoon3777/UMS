package com.mono.ums.dto;

import java.io.Serializable;

public class SDKSendDTO implements Serializable{
	
	private static final long serialVersionUID = -2161128004115726228L;
	
	private int msgId;
	private String sendType;
	private int schdType;
	private String subject;
	private String departNum;
	private String nowDate;// 요청 일시
	private String sendDate;// 전송 일시
	private int msgCnt;
	private String msgContent;
	private String attachFile;
	private String reserved1;
	private String reserved2;
	private String destNm;
	private String destNum;
	private String var1;
	private String var2;
	private String var3;
	private String var4;
	private String destInfo;
	
	
	
	@Override
	public String toString() {
		return "SDKSendDTO [msgId=" + msgId + ", sendType=" + sendType + ", schdType=" + schdType + ", subject=" + subject + ", departNum="
				+ departNum + ", nowDate=" + nowDate + ", sendDate=" + sendDate + ", msgCnt=" + msgCnt + ", msgContent=" + msgContent
				+ ", attachFile=" + attachFile + ", reserved1=" + reserved1 + ", reserved2=" + reserved2 + ", destNm=" + destNm + ", destNum="
				+ destNum + ", var1=" + var1 + ", var2=" + var2 + ", var3=" + var3 + ", var4=" + var4 + ", destInfo=" + destInfo + "]";
	}
	public int getMsgId() {
		return msgId;
	}
	public void setMsgId(int msgId) {
		this.msgId = msgId;
	}
	public String getSendType() {
		return sendType;
	}
	public void setSendType(String sendType) {
		this.sendType = sendType;
	}
	public int getSchdType() {
		return schdType;
	}
	public void setSchdType(int schdType) {
		this.schdType = schdType;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getDepartNum() {
		return departNum;
	}
	public void setDepartNum(String departNum) {
		this.departNum = departNum;
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
		return msgCnt;
	}
	public void setMsgCnt(int msgCnt) {
		this.msgCnt = msgCnt;
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
	public String getDestNm() {
		return destNm;
	}
	public void setDestNm(String destNm) {
		this.destNm = destNm;
	}
	public String getDestNum() {
		return destNum;
	}
	public void setDestNum(String destNum) {
		this.destNum = destNum;
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
	public String getDestInfo() {
		return destInfo;
	}
	public void setDestInfo(String destInfo) {
		this.destInfo = destInfo;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}

package com.mono.ums2.dto;

import java.io.Serializable;

public class DestTempDTO implements Serializable {

	private static final long serialVersionUID = -1114617366403463653L;

	private String destNm;
	private String destNum;
	private String var1;
	private String var2;
	private String var3;
	private String var4;


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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}

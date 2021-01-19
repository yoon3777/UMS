package com.mono.ums.dto;

import java.io.Serializable;

public class SchReportDTO implements Serializable{

	private static final long serialVersionUID = -5274256696832004431L;
	
	private String schType;
	private String startDate;
	private String endDate;
	private String schContent;
	
	@Override
	public String toString() {
		return "SchReportDTO [schType=" + schType + ", startDate=" + startDate + ", endDate=" + endDate + ", schContent=" + schContent + "]";
	}

	public String getSchType() {
		return schType;
	}

	public void setSchType(String schType) {
		this.schType = schType;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getSchContent() {
		return schContent;
	}

	public void setSchContent(String schContent) {
		this.schContent = schContent;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}

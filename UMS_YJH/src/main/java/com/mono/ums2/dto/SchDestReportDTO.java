package com.mono.ums2.dto;

import java.io.Serializable;

public class SchDestReportDTO implements Serializable{

	private static final long serialVersionUID = -7119286969206418409L;
	
		private int id;
		private String dest_name;
		private String phone_number;
		private String deliver_date;
		private String report_res_date;
		private String tcs_result;
		
		@Override
		public String toString() {
			return "SchDestReportDTO [id=" + id + ", dest_name=" + dest_name + ", phone_number=" + phone_number + ", deliver_date=" + deliver_date
					+ ", report_res_date=" + report_res_date + ", tcs_result=" + tcs_result + "]";
		}
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getDest_name() {
			return dest_name;
		}
		public void setDest_name(String dest_name) {
			this.dest_name = dest_name;
		}
		public String getPhone_number() {
			return phone_number;
		}
		public void setPhone_number(String phone_number) {
			this.phone_number = phone_number;
		}
		public String getDeliver_date() {
			return deliver_date;
		}
		public void setDeliver_date(String deliver_date) {
			this.deliver_date = deliver_date;
		}
		public String getReport_res_date() {
			return report_res_date;
		}
		public void setReport_res_date(String report_res_date) {
			this.report_res_date = report_res_date;
		}
		public String getTcs_result() {
			return tcs_result;
		}
		public void setTcs_result(String tcs_result) {
			this.tcs_result = tcs_result;
		}
		public static long getSerialversionuid() {
			return serialVersionUID;
		}
		
		

}

package Beans;

import java.sql.Date;

public class TransactionBean {
	private long tId;
	private String from;
	private String to;
	private String action;
	private float amount;
	private Date date;
	public long gettId() {
		return tId;
	}
	public void settId(long tId) {
		this.tId = tId;
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	public String getAction() {
		return action;
	}
	public void setAction(String action) {
		this.action = action;
	}
	public float getAmount() {
		return amount;
	}
	public void setAmount(float amount) {
		this.amount = amount;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}

}

package cn.keti.vo;

import java.util.Date;

public class Bid {
	private int bidId;
	private User buyer;
	private Goods goods;
	private Date bidTime;
	private Float bidPrice;
	private int bidStatus;
	public int getBidId() {
		return bidId;
	}
	public void setBidId(int bidId) {
		this.bidId = bidId;
	}
	public User getBuyer() {
		return buyer;
	}
	public void setBuyer(User buyer) {
		this.buyer = buyer;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public Date getBidTime() {
		return bidTime;
	}
	public void setBidTime(Date bidTime) {
		this.bidTime = bidTime;
	}
	public Float getBidPrice() {
		return bidPrice;
	}
	public void setBidPrice(Float bidPrice) {
		this.bidPrice = bidPrice;
	}
	public int getBidStatus() {
		return bidStatus;
	}
	public void setBidStatus(int bidStatus) {
		this.bidStatus = bidStatus;
	}
	@Override
	public String toString() {
		return "BId [bidId=" + bidId + ", buyer=" + buyer + ", goods=" + goods + ", bidTime=" + bidTime + ", bidPrice="
				+ bidPrice + ", bidStatus=" + bidStatus + "]";
	}
	public Bid() {
		super();
	
	}
	public Bid(int bidId, User buyer, Goods goods, Date bidTime, Float bidPrice, int bidStatus) {
		super();
		this.bidId = bidId;
		this.buyer = buyer;
		this.goods = goods;
		this.bidTime = bidTime;
		this.bidPrice = bidPrice;
		this.bidStatus = bidStatus;
	}
	

}

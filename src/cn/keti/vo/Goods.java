package cn.keti.vo;

import java.util.HashSet;
import java.util.Set;

public class Goods {
	private int goodsId;
	private User buyer;
	private User saler;
	private String goodsName;
	private Float goodsPrice;
	private String goodsPic;
	private String goodsDesc;
	private int goodsStatus;
	private Set<Bid> bids = new HashSet<Bid>(0);
	public int getGoodsId() {
		return goodsId;
	}

	
	public Goods() {
		super();
	}


	public Goods(int goodsId, User buyer, User saler, String goodsName, Float goodsPrice, String goodsPic,
			String goodsDesc, int goodsStatus) {
		super();
		this.goodsId = goodsId;
		this.buyer = buyer;
		this.saler = saler;
		this.goodsName = goodsName;
		this.goodsPrice = goodsPrice;
		this.goodsPic = goodsPic;
		this.goodsDesc = goodsDesc;
		this.goodsStatus = goodsStatus;
	}



	public Goods(int goodsId, User buyer, User saler, String goodsName, Float goodsPrice, String goodsPic,
			String goodsDesc, int goodsStatus, Set<Bid> bids) {
		super();
		this.goodsId = goodsId;
		this.buyer = buyer;
		this.saler = saler;
		this.goodsName = goodsName;
		this.goodsPrice = goodsPrice;
		this.goodsPic = goodsPic;
		this.goodsDesc = goodsDesc;
		this.goodsStatus = goodsStatus;
		this.bids = bids;
	}


	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}
	public User getBuyer() {
		return buyer;
	}
	public void setBuyer(User buyer) {
		this.buyer = buyer;
	}
	public User getSaler() {
		return saler;
	}
	public void setSaler(User saler) {
		this.saler = saler;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public Float getGoodsPrice() {
		return goodsPrice;
	}
	public void setGoodsPrice(Float goodsPrice) {
		this.goodsPrice = goodsPrice;
	}
	public String getGoodsPic() {
		return goodsPic;
	}
	public void setGoodsPic(String goodsPic) {
		this.goodsPic = goodsPic;
	}
	public String getGoodsDesc() {
		return goodsDesc;
	}
	public void setGoodsDesc(String goodsDesc) {
		this.goodsDesc = goodsDesc;
	}
	public int getGoodsStatus() {
		return goodsStatus;
	}
	public void setGoodsStatus(int goodsStatus) {
		this.goodsStatus = goodsStatus;
	}
	public Set<Bid> getBids() {
		return bids;
	}
	public void setBids(Set<Bid> bids) {
		this.bids = bids;
	}
	@Override
	public String toString() {
		return "Goods [goodsId=" + goodsId + ", buyer=" + buyer + ", saler=" + saler + ", goodsName=" + goodsName
				+ ", goodsPrice=" + goodsPrice + ", goodsPic=" + goodsPic + ", goodsDesc=" + goodsDesc
				+ ", goodsStatus=" + goodsStatus + ", bids=" + bids + "]";
	}

	
	
	
	
}

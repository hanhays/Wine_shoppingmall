package ca.project.DTO;

import java.io.Serializable;

public class WineDTO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String wine_code;
	private String wine_name;
	private String wine_img;
	private String wine_type;
	private int wine_price;
	private int wine_cost;
	private int wine_stock;
	private String wine_regdate;
	private String wine_producer;
	private String wine_kind;
	private String wine_temp;
	private String wine_sugar;
	private String wine_body;
	private String wine_info;
	
	public WineDTO() {
		// TODO Auto-generated constructor stub
	}

	public String getWine_code() {
		return wine_code;
	}

	public void setWine_code(String wine_code) {
		this.wine_code = wine_code;
	}

	public String getWine_name() {
		return wine_name;
	}

	public void setWine_name(String wine_name) {
		this.wine_name = wine_name;
	}

	public String getWine_img() {
		return wine_img;
	}

	public void setWine_img(String wine_img) {
		this.wine_img = wine_img;
	}

	public String getWine_type() {
		return wine_type;
	}

	public void setWine_type(String wine_type) {
		this.wine_type = wine_type;
	}

	public int getWine_price() {
		return wine_price;
	}

	public void setWine_price(int wine_price) {
		this.wine_price = wine_price;
	}

	public int getWine_cost() {
		return wine_cost;
	}

	public void setWine_cost(int wine_cost) {
		this.wine_cost = wine_cost;
	}

	public int getWine_stock() {
		return wine_stock;
	}

	public void setWine_stock(int wine_stock) {
		this.wine_stock = wine_stock;
	}

	public String getWine_regdate() {
		return wine_regdate;
	}

	public void setWine_regdate(String wine_regdate) {
		this.wine_regdate = wine_regdate;
	}

	public String getWine_producer() {
		return wine_producer;
	}

	public void setWine_producer(String wine_producer) {
		this.wine_producer = wine_producer;
	}

	public String getWine_kind() {
		return wine_kind;
	}

	public void setWine_kind(String wine_kind) {
		this.wine_kind = wine_kind;
	}

	public String getWine_temp() {
		return wine_temp;
	}

	public void setWine_temp(String wine_temp) {
		this.wine_temp = wine_temp;
	}

	public String getWine_sugar() {
		return wine_sugar;
	}

	public void setWine_sugar(String wine_sugar) {
		this.wine_sugar = wine_sugar;
	}

	public String getWine_body() {
		return wine_body;
	}

	public void setWine_body(String wine_body) {
		this.wine_body = wine_body;
	}

	public String getWine_info() {
		return wine_info;
	}

	public void setWine_info(String wine_info) {
		this.wine_info = wine_info;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((wine_code == null) ? 0 : wine_code.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		WineDTO other = (WineDTO) obj;
		if (wine_code == null) {
			if (other.wine_code != null)
				return false;
		} else if (!wine_code.equals(other.wine_code))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "WineDTO [wine_code=" + wine_code + ", wine_name=" + wine_name + ", wine_type=" + wine_type
				+ ", wine_kind=" + wine_kind + "]";
	}
	

}

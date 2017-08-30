package com.train.model;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

public class TrainVO implements Serializable {

	private String placename;

	public String getPlacename() {
		return placename;
	}

	public void setPlacename(String placename) {
		this.placename = placename;
	}

	public TrainVO(String placename) {
		super();
		this.placename = placename;
	}

	public TrainVO() {
		super();
	}
	
	
}//////////////////////////////

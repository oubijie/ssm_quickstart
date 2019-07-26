package com.veryoo.ssmqs.utils;

import java.util.List;

import com.baomidou.mybatisplus.core.metadata.IPage;

public class EasyuiPage {

	private Long total;
	private List rows;
	
	public EasyuiPage(IPage page) {
		this.total = page.getTotal();
		this.rows = page.getRecords();
	}
	public EasyuiPage() {
		super();
	}
	public Long getTotal() {
		return total;
	}
	public void setTotal(Long total) {
		this.total = total;
	}
	public List getRows() {
		return rows;
	}
	public void setRows(List rows) {
		this.rows = rows;
	}
	
	
}

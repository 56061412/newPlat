package com.system.common;

import java.util.HashMap;
import java.util.Map;

public class Page {
	public static long MAXREC=10;
	public static String DESC=" DESC";
	public static String ASC=" ASC";
	/**
	 * 当前页开始行号
	 */
	private long offset=1;

	/**
	 * 页显示行数
	 */
	private long limit=10;

	/**
	 * 总记录数
	 */
	private long count;

	/**
	 * 当前页号
	 */
	private long currentPage=1;

	/**
	 * 总页数
	 */
	private long pageCount=1;
	/**
	 * 排序列domain变量名
	 */
	private String orderBy;
	/**
	 * 排序列数据库字段名
	 */
	private String orderByReplace;
	/**
	 * 升序或降序
	 */
	private String order;
	
	private String defaultFullOrder;
	
    /**
     * 是否有上一页
     */
    private boolean hasNextPage;
    
    /**
     * 是否有下一页
     */
    private boolean hasPreviousPage;
    
    
	public boolean isHasNextPage() {
		this.hasNextPage = (currentPage == pageCount || pageCount==0) ? false : true;
		return hasNextPage;
	}
	public void setHasNextPage(boolean hasNextPage) {
		this.hasNextPage = hasNextPage;
	}
	public boolean isHasPreviousPage() {
		this.hasPreviousPage = currentPage == 1 ? false : true;
		return hasPreviousPage;
	}
	public void setHasPreviousPage(boolean hasPreviousPage) {
		this.hasPreviousPage = hasPreviousPage;
	}
	public String getDefaultFullOrder() {
		return defaultFullOrder;
	}
	public void setDefaultFullOrder(String defaultFullOrder) {
		this.defaultFullOrder = defaultFullOrder;
	}
	/**
	 * 构造函数
	 * 设置当前页开始行号与页显示行数
	 * @param limit
	 *            the limit
	 * @param offset
	 *            the offset
	 */
	public Page(long offset,long limit){
		setOffset(offset);
		setLimit(limit);
	}
	public Page(Map page){
		this.fromMap(page);
	}
	public Map<Object,Object> toMap(){
		Map<Object,Object> page=new HashMap<Object,Object>();
		page.put("offset", String.valueOf(getOffset()));
		page.put("limit", String.valueOf(getLimit()));
		page.put("count", String.valueOf(getCount()));
		page.put("currentPage", String.valueOf(getCurrentPage()));
		page.put("pageCount", String.valueOf(getPageCount()));
		page.put("orderBy", getOrderBy());
		page.put("orderByReplace", getOrderByReplace());
		page.put("order", getOrder());
		return page;
	}
	
	public void fromMap(Map page){
		if(page==null){
			setOffset(1);
			setLimit(10);
			setCount(0);
		}else{
			if(page.get("offset")!=null){
				String offset=page.get("offset").toString();
				if(offset.equals(""))
					setOffset(1);
				else
					setOffset(Integer.parseInt(offset));
			}else
				setOffset(1);
			
			if(page.get("limit")!=null){
				String limit=page.get("limit").toString();
				if(limit.equals(""))
					setLimit(MAXREC);
				else
					setLimit(Integer.parseInt(limit));
			}else
				setLimit(MAXREC);
			
			if(page.get("count")!=null){
				String count=page.get("count").toString();
				if(count.equals(""))
					setCount(0);
				else
					setCount(Integer.parseInt(count));
			}
			setOrderBy((String)page.get("orderBy"));
			setOrderByReplace((String)page.get("orderByReplace"));
			setOrder((String)page.get("order"));
		}
	}
	/**
	 * 获取总记录数
	 * 
	 * @return the count
	 */
	public long getCount() {
		return count;
	}

	/**
	 * 设置总记录数
	 * 同时设置当前页及总页数
	 * @param count
	 *            the count
	 */
	public void setCount(long count) {
		this.count = count;
		
		if(count<=0){
			this.currentPage=1;
			this.pageCount=1;
			this.offset=1;
		}else{
//			this.pageCount=count/limit+1;
			this.pageCount = (long)Math.ceil((float)count/limit);
			this.currentPage=offset/limit+1;
			if(this.offset>((this.currentPage-1)*this.limit+1))
				this.offset=(this.currentPage-1)*this.limit+1;
		}
	}

	/**
	 * 获取当前页号
	 * 
	 * @return the current page
	 */
	public long getCurrentPage() {
		if(currentPage<=0)
			currentPage=1;
		return currentPage;
	}

	/**
	 * 设置当前页号
	 * 
	 * @param currentPage
	 *            the current page
	 */
	public void setCurrentPage(long currentPage) {
		if(currentPage<=0)
			currentPage=1;
		this.currentPage = currentPage;
	}

	/**
	 * 获取每页显示行数
	 * 
	 * @return the limit
	 */
	public long getLimit() {
		if(limit<=0)
			limit=MAXREC;
		return limit;
	}

	/**
	 * 设置每页行数
	 * 
	 * @param limit
	 *            the limit
	 */
	public void setLimit(long limit) {
		if(limit<=0)
			limit=MAXREC;
		this.limit=limit;
	}

	/**
	 * 获取当前页起始行号
	 * 
	 * @return the offset
	 */
	public long getOffset() {
		if(offset <1)
			offset=1;
		return offset;
	}

	/**
	 * 设置当前页其实行号
	 * 
	 * @param offset
	 *            the offset
	 */
	public void setOffset(long offset) {
		if(offset <1)
			offset=1;
		this.offset = offset;
	}

	/**
	 * 获取总页数
	 * 
	 * @return the page count
	 */
	public long getPageCount() {
		if(pageCount<=0)
			pageCount=1;
		return pageCount;
	}

	/**
	 * 设置总页数
	 * 
	 * @param pageCount
	 *            the page count
	 */
	public void setPageCount(long pageCount) {
		if(pageCount<=0)
			pageCount=1;
		this.pageCount = pageCount;
	}
	public String getOrderBy() {
		if(orderBy==null)
			orderBy="";
		return orderBy;
	}
	public void setOrderBy(String orderBy) {
		if(orderBy==null)
			orderBy="";
		this.orderBy = orderBy;
	}
	
	public String getOrderByReplace() {
		if(orderByReplace==null)
			orderByReplace="";
		return orderByReplace;
	}
	public void setOrderByReplace(String orderByReplace) {
		if(orderByReplace==null)
			orderByReplace="";
		this.orderByReplace = orderByReplace;
	}
	
	public String getFullOrderBy(){
		if(!"".equals(getOrderByReplace()))
			return getOrderByReplace()+getOrder();
		else if(!"".equals(getOrderBy()))
			return getOrderBy()+" " +getOrder();
		else if(getDefaultFullOrder()!=null&&getDefaultFullOrder().equals(""))
			return getDefaultFullOrder();
		else
			return null;
	}
	public String getOrder() {
		return order;
	}
	public void setOrder(String order) {
		if(order==null||order.equals(""))
			order=DESC;
		this.order = order;
	}
	public String toString() {
		StringBuffer sp=new StringBuffer();
		sp.append("起始行:").append(getOffset()).append(",每页显示:").append(getLimit()).append(",当前页:").append(getCurrentPage());
		sp.append(",共").append(getPageCount()).append("页").append(",共").append(getCount()).append("条记录");
		sp.append(",表替换字段:").append(getOrderByReplace()).append(",字段:").append(getOrderBy()).append(",顺序:").append(getOrder());
		return sp.toString();
	}
	
	
}

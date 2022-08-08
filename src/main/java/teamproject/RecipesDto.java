package teamproject;

import java.sql.Date;

public class RecipesDto {
	private int bd_no;
	private String bd_title;
	private String bd_content;
	private Date bd_date;
	private String bd_id;
	private String bd_pw;
	private String bd_imge;
	private int bd_views;

	public RecipesDto(){
		super();
	}
	

	public RecipesDto(int bd_no, String bd_title, String bd_content, Date bd_date, String bd_id, String bd_pw, String bd_imge, int bd_views) {
		super();
		this.bd_no=bd_no;
		this.bd_title=bd_title;
		this.bd_content=bd_content;
		this.bd_date=bd_date;
		this.bd_id=bd_id;
		this.bd_pw=bd_pw;
		this.bd_imge=bd_imge;
		this.bd_views=bd_views;

	}

	
	public int getBd_no() {
		return bd_no;
	}


	public void setBd_no(int bd_no) {
		this.bd_no = bd_no;
	}


	public String getBd_title() {
		return bd_title;
	}


	public void setBd_title(String bd_title) {
		this.bd_title = bd_title;
	}


	public String getBd_content() {
		return bd_content;
	}


	public void setBd_content(String bd_content) {
		this.bd_content = bd_content;
	}


	public Date getBd_date() {
		return bd_date;
	}


	public void setBd_date(Date bd_date) {
		this.bd_date = bd_date;
	}


	public String getBd_id() {
		return bd_id;
	}


	public void setBd_id(String bd_id) {
		this.bd_id = bd_id;
	}


	public String getBd_pw() {
		return bd_pw;
	}


	public void setBd_pw(String bd_pw) {
		this.bd_pw = bd_pw;
	}


	public String getBd_imge() {
		return bd_imge;
	}


	public void setBd_imge(String bd_imge) {
		this.bd_imge = bd_imge;
	}


	public int getBd_views() {
		return bd_views;
	}


	public void setBd_views(int bd_views) {
		this.bd_views = bd_views;
	}


	
}

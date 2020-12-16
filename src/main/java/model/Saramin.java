package model;

public class Saramin {
	private String URL = "http://www.saramin.co.kr";
	private int page;
	private String cat_cd;
	
	//조건 2개를 선택했을때 40404는 java ','는 2C, 백엔드는 40430
	//http://www.saramin.co.kr/zf_user/search?search_area=main&search_done=y&search_optional_item=n&searchType=default_mysearch&cat_key=40404%2C40430	

	public String getCat_cd() {
		return cat_cd;
	}

	public void setCat_cd(String cat_cd) {
		this.cat_cd = cat_cd;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	//기본 직종조건(사람인 특성상 조건없이는 검색이 불가능하므로 default조건을 웹 개발로 하기로 함)
	public String getParameter(){
		System.out.println("S 파람없을때 테스트: "+this.cat_cd +"  "+ cat_cd + ", page: "+this.page +"  "+page);
		return URL + "/zf_user/search?company_cd=0%2C1%2C2%2C3%2C4%2C5%2C6%2C7%2C9%2C10&panel_type=&search_optional_item=y&search_done=y&panel_count=y"
				+"&cat_cd=" + this.cat_cd + "&recruitPage=" + this.page;
	}

	public String getParameter(String cat_cd, int page){
		//System.out.println("S 파람테스트: "+this.cat_cd +"  "+ cat_cd + ", page: "+this.page +"  "+page);
		return URL + "/zf_user/search?company_cd=0%2C1%2C2%2C3%2C4%2C5%2C6%2C7%2C9%2C10&panel_type=&search_optional_item=y&search_done=y&panel_count=y"
				+ "&cat_cd=" + cat_cd + "&recruitPage=" + page;
	}

	//직종조건 + 키워드검색 있을경우
	public String getParameter(String cat_cd, int page, String searchword){
		//System.out.println("직종조건 + 키워드검색 출력 : "+ URL + cat_cd + "&recruitPage=" + page + "&searchword=" + searchword);
		return URL + "/zf_user/search?company_cd=0%2C1%2C2%2C3%2C4%2C5%2C6%2C7%2C9%2C10&panel_type=&search_optional_item=y&search_done=y&panel_count=y"
				+ "&cat_cd=" + cat_cd + "&recruitPage=" + page + "&searchword=" + searchword;
	}
	
	//http://www.saramin.co.kr/zf_user/search?loc_mcd=106000&cat_key=40404%2C40430&company_cd=0%2C1%2C2%2C3%2C4%2C5%2C6%2C7%2C9%2C10
	//		&exp_cd=1&panel_type=&search_optional_item=y&search_done=y&panel_count=y
	//http://www.saramin.co.kr/zf_user/jobs/relay/view?isMypage=no&rec_idx=39225368
	//		&recommend_ids=eJxtkLsNQzEMA6dJL%2Bpr1hnE%2B2%2BRV9iWH5DyfIRI2KgFGTIj8amvXTh9PUgQMxjbe9ofPHHg7fH2loWa5bmv08cV37jiYND1rBN1ivfYJ5BtVYujESkOXmgKNMJM9AyRtIC1DR9W3Zuu7E9CldbVC1Y8RVynQkrsoIoO50zRHyP8T6Y%3D
	//		&view_type=search&searchType=search&gz=1&t_ref_content=generic&t_ref=search&paid_fl=n#seq=0
	
	//상세페이지
	public String getParameterDetail(String detail_URL) {
		
		return URL + detail_URL ;
	}
	

}

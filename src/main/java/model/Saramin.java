package model;

public class Saramin {
	private static String URL = "http://www.saramin.co.kr/zf_user/search?company_cd=0%2C1%2C2%2C3%2C4%2C5%2C6%2C7%2C9%2C10&panel_type=&search_optional_item=y&search_done=y&panel_count=y"
			+"&cat_cd=";
	
	//조건 2개를 선택했을때 40404는 java ','는 2C, 백엔드는 40430
	//http://www.saramin.co.kr/zf_user/search?search_area=main&search_done=y&search_optional_item=n&searchType=default_mysearch&cat_key=40404%2C40430	
	
	//requested url 페이지3
	//http://www.saramin.co.kr/zf_user/search/get-recruit-list?company_cd=0%2C1%2C2%2C3%2C4%2C5%2C6%2C7%2C9%2C10&cat_key=40404&panel_type=&search_optional_item=y&search_done=y&panel_count=y&recruitPage=3&recruitSort=relation&recruitPageCount=40&inner_com_type=&searchword=&quick_apply=&except_read=&mainSearch=n
	//http://www.saramin.co.kr/zf_user/search/get-recruit-list?company_cd=0%2C1%2C2%2C3%2C4%2C5%2C6%2C7%2C9%2C10&cat_key=40404&panel_type=&search_optional_item=y&search_done=y&panel_count=y&recruitPage=2&recruitSort=relation&recruitPageCount=40&inner_com_type=&searchword=&quick_apply=&except_read=&mainSearch=n

	//보이는 url
	//http://www.saramin.co.kr/zf_user/search?company_cd=0%2C1%2C2%2C3%2C4%2C5%2C6%2C7%2C9%2C10&cat_key=40404&panel_type=&search_optional_item=y&search_done=y&panel_count=y
	
	//웹개발전체
	//http://www.saramin.co.kr/zf_user/search?search_area=main&search_done=y&search_optional_item=n&searchType=default_mysearch&cat_cd=404
	//http://www.saramin.co.kr/zf_user/search?company_cd=0%2C1%2C2%2C3%2C4%2C5%2C6%2C7%2C9%2C10&cat_cd=404&panel_type=&search_optional_item=y&search_done=y&panel_count=y
	
	//게임
	//http://www.saramin.co.kr/zf_user/search?company_cd=0%2C1%2C2%2C3%2C4%2C5%2C6%2C7%2C9%2C10&cat_cd=405&panel_type=&search_optional_item=y&search_done=y&panel_count=y
	
	//서버네트워크보안
	//http://www.saramin.co.kr/zf_user/search?company_cd=0%2C1%2C2%2C3%2C4%2C5%2C6%2C7%2C9%2C10&cat_cd=402&panel_type=&search_optional_item=y&search_done=y&panel_count=y
	
	//서버네트워크보안 + Java/JSP
	//http://www.saramin.co.kr/zf_user/search?company_cd=0%2C1%2C2%2C3%2C4%2C5%2C6%2C7%2C9%2C10&cat_cd=402&cat_key=40404&panel_type=&search_optional_item=y&search_done=y&panel_count=y
	
	//기본 직종조건(사람인 특성상 조건없이는 검색이 불가능하므로 default조건을 웹 개발로 하기로 함)
	public String getParameter(String cat_cd,int page){
		System.out.println("기본 직종조건 출력 : "+ URL + cat_cd + "&recruitPage=" + page);

		if(cat_cd.equals(null)) {
			return URL+"404" + "&recruitPage=" + 1;			
		}
		
		return URL+cat_cd + "&recruitPage=" + page;
	}

	//직종조건 + 키워드검색 있을경우
	public String getParameter(String cat_cd,int page,String searchword){
		System.out.println("직종조건 + 키워드검색 출력 : "+ URL + cat_cd + "&recruitPage=" + page + "&searchword=" + searchword);
		
		if(cat_cd.equals(null)) {
			return URL+"404" + "&recruitPage=" + 1;			
		}
		
		return URL+cat_cd + "&recruitPage=" + page + "&searchword=" + searchword;
	}

}

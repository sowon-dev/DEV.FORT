package com.devfort.Application;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import model.Saramin;

import java.io.IOException;
import java.util.Collections;
import java.util.Comparator;

import javax.servlet.http.HttpServletRequest;

import org.jsoup.Jsoup;
import org.jsoup.nodes.*;
import org.jsoup.select.Elements;

@Controller
@RequestMapping(value = "/jobAreas/*")
public class JobAreasController {
	
	Saramin saramin = new Saramin();
	
	//default 웹개발
	@RequestMapping(value = "/")
	public void jobAreas(@RequestParam(value = "cat_cd", required = false, defaultValue = "404") String cat_cd, 
			@RequestParam(value = "page", required = false, defaultValue = "1") Integer page, String searchword, Model model) throws IOException {
		//기본 직종조건(사람인 특성상 조건없이는 검색이 불가능하므로 default조건을 웹 개발로 하기로 함)
		//Document doc = Jsoup.connect(saramin.getParameter()).get();
		//Document saraminDoc = Jsoup.connect(saramin.getParameter("404",2)).get();
		
		System.out.println("C jobAreas에서 파람체크: "+cat_cd + "  " +page);
		Document saraminDoc = Jsoup.connect(saramin.getParameter(cat_cd, page)).get();
		Elements saraminAll = saraminDoc.select("#recruit_info_list .content .item_recruit");
		/*
		System.out.println("사람인all정렬전: "+saraminAll.text());
		
		//sort 마감일순
		
		Collections.sort(saraminAll, new Comparator<Element>() {
		    @Override
		    public int compare(Element e1, Element e2) {
		    	int result=0;
		    	Elements comp1 = e1.select("#recruit_info_list .content .item_recruit .area_job .job_date .date");
		    	Elements comp2 = e2.select("#recruit_info_list .content .item_recruit .area_job .job_date .date");
		    	for(int i=0; i<comp1.size(); i++) {
		    		result = comp1.get(i).text().compareTo(comp2.get(i+1).text());
		    	}
		    	return result;
		    }
		});
		
		System.out.println("사람인all정렬후: "+saraminAll.text());
		*/
		
		Elements job_date = saraminAll.select(".area_job .job_date .date");
		Elements corp_name = saraminAll.select(".area_corp .corp_name");
		Elements job_tit = saraminAll.select(".area_job .job_tit");
		Elements job_condition = saraminAll.select(".area_job .job_condition");
		
		System.out.println("job_date: "+job_date.get(0).text());
		
		Elements cnt_result = saraminDoc.select(".section_search .header .cnt_result");
		
		model.addAttribute("corp_name", corp_name);
		model.addAttribute("job_tit", job_tit);
		model.addAttribute("job_condition", job_condition);
		model.addAttribute("job_date", job_date);
		model.addAttribute("cnt_result", cnt_result);
	}
	
	//QUICK BAR(사이드바)
	@RequestMapping(value = "/sidebar")
	public String jobAreasSidebar(HttpServletRequest req, RedirectAttributes redirect) throws IOException {
		System.out.println("C: req.cat_cd: "+ req.getParameter("cat_cd"));
		System.out.println("C: req.recruitPage: "+ req.getParameter("recruitPage"));
		
		redirect.addAttribute("cat_cd", req.getParameter("cat_cd"));
		redirect.addAttribute("page", Integer.parseInt(req.getParameter("recruitPage")));
		
		return "redirect:/jobAreas/";
	}
	
	//페이지	
	@RequestMapping(value = "/page")
	public String jobAreasPage(HttpServletRequest req, RedirectAttributes redirect) throws IOException {
		String cat_cd = req.getParameter("cat_cd");
		
		if(cat_cd == null) {
			cat_cd = "404";
		}
		
		System.out.println("C jobAreasPage에서 파람체크: "+cat_cd + "  " +Integer.parseInt(req.getParameter("recruitPage")));
		
		redirect.addAttribute("cat_cd", cat_cd);
		redirect.addAttribute("page", Integer.parseInt(req.getParameter("recruitPage")));
		
		return "redirect:/jobAreas/";
	}
	
	//상세정보
	@RequestMapping(value = "/detail")
	public String jobAreasDetail(@RequestParam(value = "detail_URL", required = false, defaultValue = "") String detail_URL, 
			Model model) throws IOException {
		
		System.out.println("C detail에서 파람체크: "+ detail_URL);
		Document saraminDetailDoc = Jsoup.connect(saramin.getParameterDetail(detail_URL)).get();
		Elements saraminDetailAll = saraminDetailDoc.select(".wrap_jv_cont");
		System.out.println("C detail에서 doc체크: "+ saraminDetailAll.text());
		
		return "jobAreasDetail";
	}
	
	
}

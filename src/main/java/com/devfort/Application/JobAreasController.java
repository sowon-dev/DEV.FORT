package com.devfort.Application;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import model.Saramin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import org.jsoup.Jsoup;
import org.jsoup.nodes.*;
import org.jsoup.select.Elements;

@Controller
@RequestMapping(value = "/jobAreas/*")
public class JobAreasController {
	
	Saramin saramin = new Saramin();
	
	//웹개발
	@RequestMapping(value = "/")
	public void jobAreas(Model model) throws IOException {
		//기본 직종조건(사람인 특성상 조건없이는 검색이 불가능하므로 default조건을 웹 개발로 하기로 함)
		Document doc = Jsoup.connect(saramin.getParameter("404",1)).get();
		Elements all = doc.select("#recruit_info_list .content .item_recruit");
		
		Elements corp_name = all.select(".area_corp .corp_name");
		Elements job_tit = all.select(".area_job .job_tit");
		Elements job_condition = all.select(".area_job .job_condition");
		Elements job_date = all.select(".area_job .job_date .date");
		
		model.addAttribute("corp_name", corp_name);
		model.addAttribute("job_tit", job_tit);
		model.addAttribute("job_condition", job_condition);
		model.addAttribute("job_date", job_date);
	}
}

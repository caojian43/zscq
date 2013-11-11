package com.dx.zscq.controller;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.cj.bo.BaseHibernateBo;
import org.cj.common.StringUtils;
import org.cj.ro.ResultEntityWithPageInfo;
import org.hibernate.search.errors.EmptyQueryException;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.dx.zscq.bo.IndexBo;
import com.dx.zscq.bo.SearchBo;
import com.dx.zscq.entity.LawService;
import com.dx.zscq.entity.TeamMember;

@Controller
@Scope("prototype")
@SessionAttributes()
public class IndexController {
	
	private final Logger log = Logger.getLogger(IndexController.class);
	
	@Resource(name="indexBo")
	private IndexBo indexBo;
	@Resource(name="baseBo")
	private BaseHibernateBo baseBo;
	@Resource(name="searchBo")
	private SearchBo searchBo;

	@RequestMapping(value={"home",""})
	public String home(Model model){
		model.addAttribute("pic_infos", indexBo.getHomeInfoPic());
		return "zscq/home";
	}
	
	@RequestMapping(value="team")
	public String team(Model model) {
		model.addAttribute("team_infos", indexBo.getTeamInfo());
		model.addAttribute("msg", "团队");
		return "zscq/team";
	}
	
	@RequestMapping(value="team/{id}")
	public String team(Model model,@PathVariable("id")Long id) {
		model.addAttribute("team_info", baseBo.getById(TeamMember.class, id));
		return "zscq/teammem";
	}
	
	/**
	 * 无条件分页查询
	 * @param model
	 * @return
	 */
	@RequestMapping(value="lawservice")
	public String lawService(Model model) {
		ResultEntityWithPageInfo<LawService> pageResult = baseBo.getPageResult(
				LawService.class, 0, 2, "id");
		model.addAttribute("entities", pageResult.getResult());
		model.addAttribute("totalPage", pageResult.getPageInfo().getTotalPages());
		return "zscq/lawservice";
	}
	
	/**
	 * 异步分页
	 * @param pageNo
	 * @return
	 */
	@RequestMapping(value="lawservice/{pageNo}")
	public @ResponseBody List<LawService> lawService(
			@PathVariable("pageNo")int pageNo) {
		
		ResultEntityWithPageInfo<LawService> pageResult = baseBo.getPageResult(
				LawService.class, pageNo, 2, "id");
		
		return (List<LawService>) pageResult.getResult();
	}
	
	@RequestMapping(value="lawservicedetails/{id}")
	public String lawService(Model model,
			@PathVariable("id")Long id) {
		LawService entity = baseBo.loadById(LawService.class, id); //load lazily,出发openSessionInview
		model.addAttribute("entity", entity);
		return "zscq/lawservicedetails";
	}
	
	/**
	 * 照片单独请求
	 * @param id
	 * @return
	 */
	@RequestMapping(value="photo/{id}")
	@ResponseBody
	public byte[] showPhoto(@PathVariable("id")Long id){
		
		byte[] image = baseBo.getById(TeamMember.class, id).getPhoto();
		
		return image;
	}
	
	@RequestMapping(value="patent/{id}")
	public String patentService(Model model,
			@PathVariable("id")Long id) {
		
		if(id == null) {
			id = 1l;
		}
		return "zscq/patent/"+id;
	}
	
	@RequestMapping(value="brand/{id}")
	public String brand(Model model,
			@PathVariable("id")Long id){
		
		if(id == null) {
			id = 1l;
		}
		return "zscq/brand/" + id;
	}
	
	@RequestMapping(value="contact")
	public String contact(Model model) {
		
		return "zscq/contact";
	}
	
	@RequestMapping(value="details/{id}")
	public String details(Model model,
			@PathVariable("id")Long id){
		
		if(id == null) {
			id = 1l;
		}
		
		return "zscq/details";
	}
	
	@RequestMapping(value="sendContact")
	public String sendContact(){
		return "zscq/contact";
	}
	
	/**
	 * standard Lucene english stopwords(will be filtered out of your query by the StandardAnalyzer)：
	 * <p>"a", "an", "and", "are", "as", "at", "be", "but", "by",
	 *	"for", "if", "in", "into", "is", "it",
	 *	"no", "not", "of", "on", "or", "such",
	 *	"that", "the", "their", "then", "there", "these",
	 *	"they", "this", "to", "was", "will", "with" </p>
	 *
	 * @return
	 */
	@RequestMapping(value="search")
	public String search(@RequestParam("searchString")String searchString, 
			Model model) {
		
		if(!StringUtils.hasText(searchString))
			return "zscq/searchresult";
		
		try {
			List<TeamMember> entities = indexBo.getSearchResult(searchString);
			log.info("search result: " + entities);
			model.addAttribute("entities", entities);
			return "zscq/searchresult";
		} catch (EmptyQueryException e) {
			log.error("stopwords occur");
			return "zscq/searchresult";
		}
	}
	
	/**
	 * google map test
	 * @return
	 */
	@RequestMapping(value="map")
	public String map() {
		return "zscq/map";
	}
}

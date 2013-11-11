package com.dx.zscq.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.cj.bo.BaseHibernateBo;
import org.cj.dao.rdb.hibernate.query.parameter.Param;
import org.cj.dao.rdb.hibernate.query.parameter.Type;
import org.cj.ro.ResultEntityWithPageInfo;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.context.annotation.Scope;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dx.zscq.entity.Case;
import com.dx.zscq.entity.Home;
import com.dx.zscq.entity.LawService;
import com.dx.zscq.entity.TeamMember;

/**
 * <p>SecurityContext:允许快速访问SecurityContext</p>
 * <p>SecurityContextHolder:允许快速访问Authentication 对象，而后者允许快速访问用户详情</p>
 * @author caoj
 *
 */
@Controller
@Scope("prototype")
@RequestMapping("/admin")
@SessionAttributes
public class AdminController {
	
	private final Logger log = Logger.getLogger(AdminController.class);

	@Resource(name="baseBo")
	private BaseHibernateBo baseBo;
	
	@RequestMapping(value="home",method=RequestMethod.GET)
	public String home(Model model) {
		// 获取 UserDetails a test
		UserDetails user = (UserDetails) SecurityContextHolder.getContext()
								.getAuthentication().getPrincipal();
		String name = user.getUsername();
		log.info("登录用户名为：================" + name);
		List<Home> h = baseBo.find("from Home");
		model.addAttribute("homes", h);
		return "zscq/admin/home";
	}
	
	@RequestMapping(value="home/{id}",method=RequestMethod.GET)
	public String home(Model model,@PathVariable("id")Long id) {
		
		Home h = baseBo.loadById(Home.class, id);
		model.addAttribute("home", h);
		return "zscq/admin/edithome";
	}
	
	@RequestMapping(value="edithome",method=RequestMethod.POST)
	public String editHome(@ModelAttribute("home")Home home) {
		baseBo.update(home);
		return "redirect:/admin/home";
	}
	
	@RequestMapping(value="newhome",method=RequestMethod.GET)
	public String newHome(Model model) {
		model.addAttribute("home", new Home());
		return "zscq/admin/newhome";
	}
	
	@RequestMapping(value="savehome",method=RequestMethod.POST)
	public String saveHome(@ModelAttribute("home")Home home) {
		baseBo.save(home);
		return "redirect:/admin/home";
	}
	
	@RequestMapping(value="deletehome/{id}",method=RequestMethod.DELETE)
	public String deleteHome(@PathVariable("id")Long id) {
		
		baseBo.delete(Home.class, id);
		return "redirect:/admin/home";
	}
	
	@RequestMapping(value="user")
	public String user(Model model) {
//		List<String> users = baseBo.getUserInfoByJDBC();
//		model.addAttribute("users", users);
		return "zscq/admin/user";
	}
	
	@RequestMapping("debug")
	public String debug(){
		return "zscq/admin/secure/debug";
	}
	
	/**
	 * query
	 * @param model
	 * @return
	 */
	@RequestMapping(value="teamlist",method=RequestMethod.GET)
	public String team(Model model){
		List<TeamMember> list = baseBo.
				find("from TeamMember order by rank asc",true); 
		model.addAttribute("list", list);
		return "zscq/admin/teamlist";
	}
	
	/**
	 * edit
	 * @param id
	 * @param team
	 * @param result
	 * @return
	 */
	@RequestMapping(value="teamlist/{id}",method={RequestMethod.GET})
	public String member(@PathVariable("id")Long id,
			Model model){
		TeamMember m = baseBo.getById(TeamMember.class, id);
		model.addAttribute("mem", m);
		return "zscq/admin/editmem";
	}
	
	/**
	 * saveOrUpdate
	 * @param model
	 * @param team
	 * @param result
	 * @return
	 */
	@RequestMapping(value="editmem", method=RequestMethod.PUT)
	public String editMem(Model model, @Valid @ModelAttribute("team")TeamMember mem,
			BindingResult result, RedirectAttributes redirect) {
		if(result.hasErrors()){
			List<ObjectError> errors = result.getAllErrors();
			for (ObjectError e : errors) {
				log.info(e);
			}
			model.addAttribute("mem", mem);
			return "zscq/admin/editmem";
		}
		baseBo.update(mem);
		redirect.addFlashAttribute("msg", "success");
		return "redirect:/admin/teamlist";
	}
	
	@RequestMapping(value="newmem")
	public String newMem(Model model){
		model.addAttribute("team", new TeamMember());
		return "zscq/admin/newmem";
	}
	
	/**
	 * saveOrUpdate,在servlet3.0中，我们可以使用javax.servlet.http.Part代替MultipartFile
	 * @param model
	 * @param team
	 * @param result
	 * @return
	 */
	@RequestMapping(value="savemem", method=RequestMethod.POST)
	public String saveMem(Model model, @Valid @ModelAttribute("team")TeamMember mem,
			BindingResult result, RedirectAttributes redirect,
			@RequestParam(value="file" ,required=false) MultipartFile file) {
		if(result.hasErrors()){
			model.addAttribute("mem", mem);
			return "zscq/admin/newmem";
		}
		if(file !=null && !file.isEmpty() && file.getSize() < 1024 * 100) { // < 100kb
			try {
				mem.setPhoto(file.getBytes());
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		baseBo.save(mem);
		redirect.addFlashAttribute("msg", "success");
		return "redirect:/admin/teamlist";
	}
	
	@RequestMapping("deletemem/{id}")
	@ResponseStatus(value=HttpStatus.NO_CONTENT)
	public String deleteMem(@PathVariable("id")Long id) {
		
		try {
			baseBo.executeHql("delete from TeamMember where id=:id", 
					Param.getCommonParam("id", id, Type.LONG));
		} catch (Exception e) {
			log.error("实体删除失败，可能是由于重复删除导致！");
		}
		return "redirect:/admin/teamlist";
	}
	
	@RequestMapping("lawservice")
	public String lawservice(Model model) {
		
		ResultEntityWithPageInfo<LawService> pageResult = 
				baseBo.getPageResult(LawService.class, 0, 5, "id");
		model.addAttribute("entities", pageResult.getResult());
		model.addAttribute("pageInfo", pageResult.getPageInfo());
		return "/admin/lawservice";
	}
	
	@RequestMapping("lawservice/{id}")
	public @ResponseBody LawService lawservice(
			@PathVariable("id")Long id) {
		LawService entity = baseBo.loadById(LawService.class, id);
		return entity;
	}
	
	/**
	 * 案例管理
	 * @return
	 */
	@RequestMapping(value="portfoliolist",method=RequestMethod.GET)
	public String portfolioList(Model model,@RequestParam(defaultValue="")String name,
			@RequestParam(defaultValue="")String client){
		
		//TODO 如何让其做到智能而不抛空指针！~因为这么一做Param不为空，而参数值可能为空串。
		ResultEntityWithPageInfo<Case> cs = baseBo.getPageResult(Case.class,
				0, 2, 
				Param.getVarParam("name", name),
				Param.getVarParam("client", client));
		
		model.addAttribute("cs", cs.getResult());
		model.addAttribute("totalPage", cs.getPageInfo().getTotalPages());
		return "zscq/admin/portfolio";
	}
	
	@RequestMapping(value="portfoliolist/{pageNo}")
	public @ResponseBody List<Case> portfolioList(
			@PathVariable("pageNo")int pageNo) {
		
		ResultEntityWithPageInfo<Case> pageResult = baseBo.getPageResult(
				Case.class, pageNo, 2, "id");
		
		return (List<Case>) pageResult.getResult();
	}
	
	/**
	 * 照片单独请求
	 * @param id
	 * @return
	 */
	@RequestMapping(value="photo/{id}")
	@ResponseBody
	public byte[] showPhoto(@PathVariable("id")Long id){
		
		byte[] image = baseBo.loadById(Case.class, id).getPic();
		
		return image;
	}
	
	@RequestMapping("newportfolio")
	public String newPortfolio(Model model){
		
		model.addAttribute("case", new Case());
		return "zscq/admin/newportfolio";
	}
	
	@RequestMapping(value="saveportfolio",method=RequestMethod.POST)
	public String savePortfolio(@Valid @ModelAttribute("case")Case c,
			BindingResult result,RedirectAttributes redirect,Model model,
			@RequestParam(value="file", required=false) MultipartFile file) {
		
		if(result.hasErrors()) {
			model.addAttribute("case", c);
			return "zscq/admin/newportfolio";
		}
		
		baseBo.save(c);
		
		return "redirect:/admin/portfoliolist";
	}
	
	@RequestMapping(value="portfolio/{id}",method=RequestMethod.GET)
	public String portfolio(@PathVariable("id")Long id, Model model){
		
		Case c = baseBo.loadById(Case.class, id);
		model.addAttribute("case", c);
		return "zscq/admin/editportfolio";
	}
	
	@RequestMapping(value="editportfolio",method=RequestMethod.PUT)
	public String editPortfolio(@Valid @ModelAttribute("case")Case c,
			BindingResult result,RedirectAttributes redirect,Model model,
			@RequestParam("file") MultipartFile file) {
		
		if(result.hasErrors()) {
			model.addAttribute("case", c);
			return "zscq/admin/editportfolio";
		}
		
		baseBo.update(c);
		
		return "redirect:/admin/portfoliolist";
	}
	
	@RequestMapping(value="deleteportfolio/{id}",method=RequestMethod.DELETE)
	public String deletePortfolio(@PathVariable("id")Long id){
		
		baseBo.delete(Case.class, id);
		return "redirect:/admin/portfoliolist";
	}
	
	@RequestMapping("help")
	public String help() {
		return "zscq/admin/help";
	}
	
	@RequestMapping("faq")
	public String faq() {
		return "zscq/admin/faq";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				new SimpleDateFormat("yyyy-MM-dd"), true));
	}
	
}

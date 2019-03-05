package com.test.SoccerForum.web.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.SynchronousQueue;

import javax.management.modelmbean.ModelMBeanAttributeInfo;
import javax.naming.event.NamespaceChangeListener;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.javassist.compiler.ast.MethodDecl;
import org.junit.runners.Parameterized.Parameter;
import org.junit.validator.PublicClassValidator;
import org.omg.PortableServer.IdAssignmentPolicy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.metadata.PostgresCallMetaDataProvider;
import org.springframework.jdbc.datasource.UserCredentialsDataSourceAdapter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.mysql.fabric.xmlrpc.base.Data;
import com.test.SoccerForum.dao.CollectorDao;
import com.test.SoccerForum.dao.MemberDao;
import com.test.SoccerForum.dao.PostDao;
import com.test.SoccerForum.dao.UserDao;
import com.test.SoccerForum.dao.VisitDao;
import com.test.SoccerForum.domain.po.Collector;
import com.test.SoccerForum.domain.po.Member;
import com.test.SoccerForum.domain.po.Post;
import com.test.SoccerForum.domain.po.User;
import com.test.SoccerForum.domain.po.Visit;
import com.test.SoccerForum.service.MemberService;
import com.test.SoccerForum.service.UserService;


@Controller
public class TestController {
	@Autowired
	UserService userService;
	@Autowired
	UserDao userDao;
	@Autowired
	MemberService memberService;
	@Autowired
	PostDao postDao;
	@Autowired
	VisitDao visitDao;
	@Autowired
	CollectorDao collectorDao;
	//转到登录页
	@RequestMapping("/login")
	public String toLogin(){
		return "login";
	}
	String uname;
	//转到首页
	@RequestMapping("/demo")
	public String toTest(User user,Model model,String name){
		uname = name;
		if(userDao.findByName(uname) == null){
			userService.insertOne(user);
		}
		List<String> list = new ArrayList<String>();
		//System.out.println(res);
		for(int i = 1;i <= 52;i++){
			String post = postDao.findTitleById(i).getTitle();
			list.add(post);
		}
//		System.out.println(list);
//		System.out.println(posts);
//		System.out.println(list);
		model.addAttribute("posts",list);
 		return "demo";
	}
	
	//转到帖子详情页
	@RequestMapping("/content")
	public String toContent(User user,String title,Model model){
		Post post = postDao.findByTitle(title);
		visitDao.updateById(post.getVisitid());
//		Gson gson = new Gson();
//		String jsString = gson.toJson(post);
		model.addAttribute("post",post);
		return "content";
	}
	//点赞功能
	@RequestMapping("/like")
	@ResponseBody
	public String toLike(String name){
		Post post = postDao.findByTitle(name);
		visitDao.updateLikeById(post.getVisitid());
		Visit visit = visitDao.findById(post.getVisitid());
		int likenum = visit.getLike();
		
		Map< Object, Object> map=new HashMap<Object, Object>();
		map.put("likenum", likenum);
		Gson gson = new Gson();
		String jsString = gson.toJson(map);
		return jsString;
	}
	//收藏功能
		@RequestMapping("/collector")
		@ResponseBody
		public String toCollector(User user,String tname,String uname){
			//System.out.println(tname);
			int userId = userDao.findByName(uname).getId();
			Collector collector = new Collector();
			collector.setName(tname);
			collector.setUserid(userId);
			if(collectorDao.findByNameAndId(tname,userId) != null){
				return "failed";
			}
			else{
				collectorDao.insert(collector);
				return "success";
			}
		}
	
	//对应demo中#1的ajax，实现筛选后替换原来的帖子内容
//	@RequestMapping("/category")
//	@ResponseBody
//	public String toCategory(String categoryid){
//		int id = Integer.parseInt(categoryid);
//		List<Post> posts = postDao.findByLeagueId(3);
//		//System.out.println(posts);
//		Gson gson = new Gson();
//		String jsString = gson.toJson(posts);
//		//System.out.println(jsString);
//		return jsString;
//	}
	//转到英超界面
	@RequestMapping("/yingchao")
	public String toYingchao(User user,Model model,String name){
		List<Post> post = postDao.findByLeagueId(1);
		//System.out.println(post);
		List<String> posts = new ArrayList<String>();
		for(int i = 0;i < post.size();i++){
			String a = post.get(i).getTitle();
			//System.out.println(a);
			posts.add(a);
		}
		model.addAttribute("posts",posts);
 		return "yingchao";
	}
	//转到西甲界面
	@RequestMapping("/xijia")
	public String toXijia(User user,Model model,String name){
		List<Post> post = postDao.findByLeagueId(3);
		//System.out.println(post);
		List<String> posts = new ArrayList<String>();
		for(int i = 0;i < post.size();i++){
			String a = post.get(i).getTitle();
			//System.out.println(a);
			posts.add(a);
		}
		model.addAttribute("posts",posts);
 		return "xijia";
	}
	//转到意甲界面
	@RequestMapping("/yijia")
	public String toYijia(User user,Model model,String name){
		List<Post> post = postDao.findByLeagueId(2);
		//System.out.println(post);
		List<String> posts = new ArrayList<String>();
		for(int i = 0;i < post.size();i++){
			String a = post.get(i).getTitle();
			//System.out.println(a);
			posts.add(a);
		}
		model.addAttribute("posts",posts);
 		return "yijia";
	}
	//转到德甲界面
	@RequestMapping("/dejia")
	public String toDejia(User user,Model model,String name){
		List<Post> post = postDao.findByLeagueId(4);
		//System.out.println(post);
		List<String> posts = new ArrayList<String>();
		for(int i = 0;i < post.size();i++){
			String a = post.get(i).getTitle();
			//System.out.println(a);
			posts.add(a);
		}
		model.addAttribute("posts",posts);
 		return "dejia";
	}
	//转到个人首页
	@RequestMapping("/user")
	public String toUser(){
		return "user";
	}
	//转到我的空间
	@RequestMapping("/about")
	public String toAbout(Model model){
		User user = userDao.findByName(uname);
		int userId = userDao.findByName(uname).getId();
		List<Collector> collector = collectorDao.findByUserId(userId);
		//System.out.println(collector);
		model.addAttribute("user",user);
		List<String> collectors = new ArrayList<String>();
		for(int i = 0;i < collector.size();i++){
			String a = collector.get(i).getName();
			//System.out.println(a);
			collectors.add(a);
		}
		model.addAttribute("collectors",collectors);
		return "about";
	}
	
	@RequestMapping(value = "/uploadHead.do", method = RequestMethod.POST)
    @ResponseBody
    public int uploadHead(@RequestParam("file") MultipartFile file, HttpSession session) {
        try {
            if (file != null) {
                //获取文件名
                String fileName = file.getOriginalFilename();
                //截取扩展名
                String extName = fileName.substring(fileName.lastIndexOf("."));
                List list = new ArrayList();
                list.add(".jpg");
                list.add(".png");
                list.add(".jpeg");
                list.add(".gif");
                if(list.contains(extName.toLowerCase())){
                
                    //01获取服务器项目部署的路径，并在根目录下创建 myphoto 目录
                    //String realPath = session.getServletContext().getRealPath("myphoto");
                    //02也可以直接定义文件路径
                    String realPath = "C:\\Users\\11491\\Desktop\\workspace\\SoccerForum\\photo";

                    String photoFileName = new Date().getTime()+extName;
                    String descPath = realPath + "\\" + photoFileName;
                    file.transferTo(new File(realPath,photoFileName));
                    User user = new User();
                    user.setName(uname);
                    user.setAvatar(descPath);
                    userDao.update(user);
                    return 1;//成功
                }else {
                    return -1;//文件类型不正确
                }
            }else {
                return 0;//上传文件为空
            }
        } catch (Exception e) {
            e.printStackTrace();
            return -1;//上传异常
        }
    }
}
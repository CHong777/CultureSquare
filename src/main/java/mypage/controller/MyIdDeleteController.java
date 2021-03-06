package mypage.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import mypage.service.face.MyPageService;
import user.dto.User_table;
import util.PwSha256;

@Controller
public class MyIdDeleteController {
	
	@Autowired private MyPageService mypageService;
	
	private static final Logger logger = LoggerFactory.getLogger(MyIdDeleteController.class);
	
//	@RequestMapping(value="/mypage/deleteuser", method=RequestMethod.GET)
//	public void deleteuser(User_table user, HttpSession session, Model model) {
//		
//		user.setUserid(session.getAttribute("userid").toString());
//		user.setUsernick(session.getAttribute("usernick").toString());
//		
//		if(session.getAttribute("userno") != null) {
//
//			user.setUserno((Integer)session.getAttribute("userno"));
//			
//		}
//		
//		User_table getUser = mypageService.getUserInfo(user);
//		
//		model.addAttribute("getUser", getUser);
//		
//		User_table userInfo = new User_table();
//		
//		userInfo = mypageService.getFindUserPw(user);
//		
//		model.addAttribute("userinfo", userInfo);
//	}
	
	@RequestMapping(value="/mypage/deleteuser", method=RequestMethod.GET)
	public String deleteuser(HttpSession session, User_table user) {
		
		user.setUserid(session.getAttribute("userid").toString());
		user.setUserno((Integer)session.getAttribute("userno"));
		
		
//		user.setOriginname(session.getAttribute("originname").toString()); //사진 원본
//		user.setStoredname(session.getAttribute("storedname").toString()); //사진 저장본
		
		//새로운 userInfo객체 생성
		User_table userInfo = new User_table();
		
		//로그인한 사용자의 비밀번호 조회해서 userInfo객체에 담기
//		System.out.println(user);
		userInfo = mypageService.getFindUserPw(user); // DB에 있는 비밀번호
		System.out.println(userInfo);
		System.out.println("디비에 있는 암호화된 비밀번호 : " + userInfo.getUserpw());
		
		mypageService.deleteUser(userInfo);
		session.invalidate();
		
		return "redirect:/main/main";
		
	}

	@RequestMapping(value="/mypage/deletePwCheck", method=RequestMethod.POST)
	public ModelAndView currentPwCheck(ModelAndView mav, HttpSession session, User_table user) {
		
		//세션에서 로그인한 사용자의 userno와 userid, usernick 가져와서 user객체에 담기
		user.setUserno((Integer)session.getAttribute("userno"));
		
		//암호화
		String encPw = user.getUserpw();
		user.setUserpw(PwSha256.userPwEncSHA256(encPw)); // 현재비밀번호를 암호화 한거
		
		boolean lock = mypageService.comparedPw(user);
		
		mav.addObject("lock", lock);
		//viewName지정하기
		mav.setViewName("jsonView");
		 
		return mav;
	}
	
}

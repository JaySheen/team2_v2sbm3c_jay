package dev.mvc.member;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberCont {
    @Autowired
    @Qualifier("dev.mvc.member.MemberProc")
    private MemberProcInter memberProc = null;
    
    public MemberCont(){
        System.out.println("-> MemberCont created.");
      }
    
    // http://localhost:9091/member/create.do
    /**
    * 등록 폼
    * @return
    */
    @RequestMapping(value="/member/create.do", method=RequestMethod.GET )
    public ModelAndView create() {
      ModelAndView mav = new ModelAndView();
      mav.setViewName("/member/create"); // webapp/member/create.jsp
     
      return mav; // forward
    }
    
    // http://localhost:9091/member/checkID.do?id=user1
    /**
    * ID 중복 체크, JSON 출력
    * @return
    */
    @ResponseBody
    @RequestMapping(value="/member/checkID.do", method=RequestMethod.GET ,
                           produces = "text/plain;charset=UTF-8" )
    public String checkID(String id) {
      int cnt = this.memberProc.checkID(id);
     
      JSONObject json = new JSONObject();
      json.put("cnt", cnt);
     
      return json.toString(); 
    }
    
    // http://localhost:9091/member/checkNICKNAME.do?nickname=회원1
    /**
    * NICKNAME 중복 체크, JSON 출력
    * @return
    */
    @ResponseBody
    @RequestMapping(value="/member/checkNICKNAME.do", method=RequestMethod.GET ,
                           produces = "text/plain;charset=UTF-8" )
    public String checkNICKNAME(String nickname) {
      int cnt = this.memberProc.checkNICKNAME(nickname);
     
      JSONObject json = new JSONObject();
      json.put("cnt", cnt);
     
      return json.toString(); 
    }
    
    /**
     * 등록 처리
     * @param memberVO
     * @return
     */
    @RequestMapping(value="/member/create.do", method=RequestMethod.POST)
    public ModelAndView create(MemberVO memberVO){
      ModelAndView mav = new ModelAndView();
      
      System.out.println("id: " + memberVO.getId());
      
      memberVO.setGradeno(10); // 기본 회원 가입 등록 10(씨앗) 지정
      memberVO.setTel("000-0000-0000"); // 기본 값 지정->정보 등록 시 등급 상승
      memberVO.setEmail("Insert@Email.address"); // 기본 값 지정->정보 등록 시 등급 상승     
      
      int cnt= memberProc.create(memberVO);
      
      if (cnt == 1) {
        mav.addObject("code", "create_success");
        mav.addObject("Nickname", memberVO.getNickname());  // 홍길동님(user4) 회원 가입을 축하합니다.
        mav.addObject("id", memberVO.getId());
      } else {
        mav.addObject("code", "create_fail");
      }
      
      mav.addObject("cnt", cnt); // request.setAttribute("cnt", cnt)
      
      mav.addObject("url", "/member/msg");  // /member/msg -> /member/msg.jsp
      
      mav.setViewName("redirect:/member/msg.do");


      
      return mav;
    }
    
    /**
     * 새로고침 방지, EL에서 param으로 접근
     * @return
     */
    @RequestMapping(value="/member/msg.do", method=RequestMethod.GET)
    public ModelAndView msg(String url){
      ModelAndView mav = new ModelAndView();

      mav.setViewName(url); // forward
      
      return mav; // forward
    }

}

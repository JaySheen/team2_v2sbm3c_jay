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
    
    // http://localhost:9091/member/checkNICKNAME.do?nickname=빵덕1
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

}

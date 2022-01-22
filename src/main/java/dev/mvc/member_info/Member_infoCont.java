package dev.mvc.member_info;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dev.mvc.member.MemberProcInter;


@Controller
public class Member_infoCont {
    @Autowired
    @Qualifier("dev.mvc.member.MemberProc")
    private MemberProcInter memberProc;
    
    @Autowired
    @Qualifier("dev.mvc.member_info.Member_infoProc")
    private Member_infoProcInter member_infoProc;
    
    public Member_infoCont() {
        System.out.println("-> Member_infoCont created.");
    }
    
    /**
     * 권한그룹별 상세 권한 목록
     * http://localhost:9091/member_info/list_by_memberno.do?memberno=3 
     * @return
     */
    @RequestMapping(value="/member_info/list_by_memberno.do", method=RequestMethod.GET )
    public ModelAndView list_by_memberno(int memberno) {
      ModelAndView mav = new ModelAndView();
      
      List<Member_infoVO> list = this.member_infoProc.list_by_memberno(memberno);
      mav.addObject("list", list); // request.setAttribute("list", list);

      Member_infoVO  member_infoVO = member_infoProc.read(memberno); // 회원번호
      mav.addObject("member_infoVO", member_infoVO); 
      
      mav.setViewName("/member_info/list_by_memberno"); // /member_info/list_by_memberno.jsp
      
      return mav;
    }

    /**
     * 회원+회원상세 join
     * http://localhost:9091/member_info/my_info.do
     * list_all_join개념
     * @return
     */
    @RequestMapping(value="/member_info/my_info.do", method=RequestMethod.GET )
    public ModelAndView my_info() {
      ModelAndView mav = new ModelAndView();
      
      List<Member_Member_infoVO> list = this.member_infoProc.my_info();
      mav.addObject("list", list); // request.setAttribute("list", list);
            
            
      mav.setViewName("/member_info/my_info"); // /member_info/my_info.jsp
      return mav;
    }
    

}

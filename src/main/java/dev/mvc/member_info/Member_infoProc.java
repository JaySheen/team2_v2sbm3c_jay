package dev.mvc.member_info;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("dev.mvc.member_info.Member_infoProc")
public class Member_infoProc implements Member_infoProcInter {
    @Autowired
    private Member_infoDAOInter member_infoDAO;
    
    public Member_infoProc() {
        System.out.println("-> Member_infoProc created.");
    }

    @Override
    public int create(Member_infoVO member_infoVO) {
        int cnt = this.member_infoDAO.create(member_infoVO);
        return cnt;
    }

    @Override
    public int update(Member_infoVO member_infoVO) {
        int cnt = this.member_infoDAO.create(member_infoVO);
        return cnt;
    }

    @Override
    public Member_infoVO read(int memberno) {
        Member_infoVO member_infoVO = this.member_infoDAO.read(memberno);
        return member_infoVO;
    }

    @Override
    public List<Member_Member_infoVO> my_info() {
        List<Member_Member_infoVO> list = this.member_infoDAO.my_info();
        return list;
    }

    @Override
    public List<Member_infoVO> list_by_memberno(int memberno) {
        List<Member_infoVO> list = this.member_infoDAO.list_by_memberno(memberno);
        return list;
    }
   

}

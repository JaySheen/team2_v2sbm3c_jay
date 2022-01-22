package dev.mvc.member_info;

import java.util.List;


public interface Member_infoDAOInter {
    
    /**
     * 회원상세 정보 등록
     * @param member_infoVO
     * @return
     */
    public int create(Member_infoVO member_infoVO);
    
    /**
     * 회원상세 수정
     * @param member_infoVO
     * @return
     */
    public int update(Member_infoVO member_infoVO);
    
    /**
     * 회원상세 조회
     * @param member_infoVO
     * @return
     */
    public Member_infoVO read(int memberno);
    
    /**
     *  memberno별 목록
     * @return
     */
    public List<Member_infoVO> list_by_memberno(int memberno);
    
    /**
     * Member + Member_info join
     * @return
     */
    public List<Member_Member_infoVO> my_info();
    
    
}

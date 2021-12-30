package dev.mvc.member;

import java.util.List;

public interface MemberProcInter {
    /**
     * 회원 가입
     * @param memberVO
     * @return
     */
    public int create(MemberVO memberVO);
    
    /**
     * 중복 아이디 검사
     * @param id
     * @return 중복 아이디 갯수
     */
    public int checkID(String id);
    
    /**
     * 중복 닉네임 검사
     * @param nickname
     * @return 중복 닉네임 갯수
     */
    public int checkNICKNAME(String nickname);
    
    /**
     * 회원 전체 목록
     * @return
     */
    public List<MemberVO> list();
    
    /**
     * memberno로 회원 정보 조회
     * @param memberno
     * @return
     */
    public MemberVO read(int memberno);
    
    /**
     * id로 회원 정보 조회
     * @param id
     * @return
     */
    public MemberVO readById(String id);
    
    /**
     * 수정 처리
     * @param memberVO
     * @return
     */
    public int update(MemberVO memberVO);
    
    /**
     * 회원 삭제 처리
     * @param memberno
     * @return
     */
    public int delete(int memberno);

}

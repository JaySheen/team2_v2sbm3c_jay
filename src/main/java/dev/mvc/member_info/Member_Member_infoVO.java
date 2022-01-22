package dev.mvc.member_info;

public class Member_Member_infoVO {
    
    /** 회원 번호 */
    private int r_memberno;
    /** 아이디 */
    private String r_id = "";
    /** 패스워드 */
    private String r_passwd = "";
    /** 닉네임 */
    private String r_nickname = "";
    /** 전화 번호 */
    private String r_tel = "";
    /** 이메일 */
    private String r_email = "";
    /** 가입일 */
    private String r_mdate = "";
    /** 등급 번호 */
    private int r_gradeno = 0;
    
    /** 회원 번호 */
    private int memberno;
    /** 취향1 */
    private String taste1 = "";
    /** 취향2 */
    private String taste2 = "";
    /** 등급 번호 */
    private int surveyno= 0;
    
    
    public int getR_memberno() {
        return r_memberno;
    }
    public void setR_memberno(int r_memberno) {
        this.r_memberno = r_memberno;
    }
    public String getR_id() {
        return r_id;
    }
    public void setR_id(String r_id) {
        this.r_id = r_id;
    }
    public String getR_passwd() {
        return r_passwd;
    }
    public void setR_passwd(String r_passwd) {
        this.r_passwd = r_passwd;
    }
    public String getR_nickname() {
        return r_nickname;
    }
    public void setR_nickname(String r_nickname) {
        this.r_nickname = r_nickname;
    }
    public String getR_tel() {
        return r_tel;
    }
    public void setR_tel(String r_tel) {
        this.r_tel = r_tel;
    }
    public String getR_email() {
        return r_email;
    }
    public void setR_email(String r_email) {
        this.r_email = r_email;
    }
    public String getR_mdate() {
        return r_mdate;
    }
    public void setR_mdate(String r_mdate) {
        this.r_mdate = r_mdate;
    }
    public int getR_gradeno() {
        return r_gradeno;
    }
    public void setR_gradeno(int r_gradeno) {
        this.r_gradeno = r_gradeno;
    }
    public int getMemberno() {
        return memberno;
    }
    public void setMemberno(int memberno) {
        this.memberno = memberno;
    }
    public String getTaste1() {
        return taste1;
    }
    public void setTaste1(String taste1) {
        this.taste1 = taste1;
    }
    public String getTaste2() {
        return taste2;
    }
    public void setTaste2(String taste2) {
        this.taste2 = taste2;
    }
    public int getSurveyno() {
        return surveyno;
    }
    public void setSurveyno(int surveyno) {
        this.surveyno = surveyno;
    }
    @Override
    public String toString() {
        return "Member_Member_infoVO [r_memberno=" + r_memberno + ", r_id=" + r_id + ", r_passwd=" + r_passwd
                + ", r_nickname=" + r_nickname + ", r_tel=" + r_tel + ", r_email=" + r_email + ", r_mdate=" + r_mdate
                + ", r_gradeno=" + r_gradeno + ", memberno=" + memberno + ", taste1=" + taste1 + ", taste2=" + taste2
                + ", surveyno=" + surveyno + "]";
    }

}

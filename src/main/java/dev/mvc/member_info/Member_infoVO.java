package dev.mvc.member_info;

public class Member_infoVO {
    /*
  memberno NUMBER(10) NOT NULL,
  taste1 VARCHAR(20)     NOT NULL,
  taste2 VARCHAR(20)     NOT NULL,
  surveyno NUMBER(10)  NULL ,
  FOREIGN KEY (MEMBERNO) REFERENCES member(MEMBERNO),
  FOREIGN KEY (SURVEYNO) REFERENCES survey(SURVEYNO)
    */
    
    /** 회원 번호 */
    private int memberno;
    /** 취향1 */
    private String taste1 = "";
    /** 취향2 */
    private String taste2 = "";
    /** 등급 번호 */
    private int surveyno= 0;
    
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
        return "Member_infoVO [memberno=" + memberno + ", taste1=" + taste1 + ", taste2=" + taste2 + ", surveyno="
                + surveyno + "]";
    }

}

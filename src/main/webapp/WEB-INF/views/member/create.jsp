<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">

<title>Project Team2</title>
<link href="/css/style.css" rel="Stylesheet" type="text/css">
<script type="text/JavaScript"
          src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<style type="text/css">

  *{ font-family: Malgun Gothic; font-size: 26px;}
</style>
</head>

<body>
<jsp:include page="../menu/top.jsp" flush='false' />

  <!-- ******************** Modal 알림창 시작 ******************** -->
  <div id="modal_panel" class="modal fade"  role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">×</button>
          <h4 class="modal-title" id='modal_title'></h4><!-- 제목 -->
        </div>
        <div class="modal-body">
          <p id='modal_content'></p>  <!-- 내용 -->
        </div>
        <div class="modal-footer">
          <button type="button" id="btn_close" data-focus="" class="btn btn-default" 
                      data-dismiss="modal">닫기</button>
        </div>
      </div>
    </div>
  </div>
  <!-- ******************** Modal 알림창 종료 ******************** -->
  
  <DIV class='title_line'>
    Create account
  </DIV>
  
  <DIV class='content_body'>  
  
    <FORM name='frm' id='frm' method='POST' action='./create.do' class="form-horizontal">
    
    
    
    <div class="form-group">
      <div class="col-6-6 text-center">
        <text style="color: darkgrey; font-size: 8px;">약관 & 개인정보처리방침에 동의하며 빵파고에 가입합니다.</text>
        <br>
        <button type="button" id='btn_send' class="btn btn-primary btn-md">Create your 빵파고 account</button>
      </div>
    </div>  
    </FORM>  
    
  </DIV>

 <jsp:include page="../menu/bottom.jsp" flush='false' />
</body>
</html>
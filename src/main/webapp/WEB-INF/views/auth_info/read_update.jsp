<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html> 
<html lang="ko"> 
<head> 
<meta charset="UTF-8"> 
<meta name="viewport" content="user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, width=device-width" /> 
<title>team2 빵파고</title>
 
<link href="/css/style.css" rel="Stylesheet" type="text/css">
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    
<script type="text/javascript">
 
  
</script>
 
</head> 
 
<body>
<jsp:include page="../menu/top.jsp" />
 
<DIV class='title_line'>
  <A href="../authgrp/list.do" class='title_link'>권한그룹</A> > 
  <!-- <A href="./list_by_authno.do?authno=${auth_infoVO.authno }" class='title_link'>${authgrpVO.authname }</A> > 상세권한 수정 -->
  권한번호: ${auth_infoVO.authno } > ${authgrpVO.authname } > 상세권한 수정 
</DIV>

<DIV class='content_body'>

  <DIV id='panel_update' style='padding: 10px 0px 10px 0px; background-color: #F9F9F9; width: 100%; text-align: center;'>
    <FORM name='frm' id='frm' method='POST' action='./update.do'>
      <input type="hidden" name="authno" value="${param.authno }">
      
      <label>권한그룹 번호</label>
      <input type='number' name='authno' value='${auth_infoVO.authno }' 
                 required="required" min="1" max="100" step="1" autofocus="autofocus">   
                      
      <label>권한그룹이름</label>
      <input type='text' name='authname' value='${authgrpVO.authname }' required="required" style='width: 25%;'
          autofocus="autofocus">
    
      <label>등록권한</label>
      <select name='create_auth'>
          <option value='Y' selected="selected">Y</option>
          <option value='N'>N</option>
      </select>
      <label>수정권한</label>
      <select name='update_auth'>
          <option value='Y' selected="selected">Y</option>
          <option value='N'>N</option>
      </select>
      <label>삭제권한</label>
      <select name='delete_auth'>
          <option value='Y' selected="selected">Y</option>
          <option value='N'>N</option>
      </select>
      <label>읽기권한</label>
      <select name='read_auth'>
          <option value='Y' selected="selected">Y</option>
          <option value='N'>N</option>
      </select>

  
      <button type="submit" id='submit'>저장</button>
      <button type="button" onclick="location.href='./list_by_authno.do?authno=${auth_infoVO.authno}'">취소</button>
    </FORM>
  </DIV>

  <TABLE class='table table-striped'>
    <colgroup>
      <col style='width: 10%;'/>
      <col style='width: 20%;'/>
      <col style='width: 20%;'/>
      <col style='width: 20%;'/>    
      <col style='width: 20%;'/>
      <col style='width: 10%;'/>
    </colgroup>
   
    <thead>  
    <TR>
      <TH class="th_bs">권한번호</TH>
      <TH class="th_bs">등록권한</TH>
      <TH class="th_bs">수정권한</TH>
      <TH class="th_bs">삭제권한</TH>
      <TH class="th_bs">읽기권한</TH>
      <TH class="th_bs">기타</TH>
    </TR>
    </thead>
    
    <tbody>
    <c:forEach var="auth_infoVO" items="${list}">
      <c:set var="authno" value="${auth_infoVO.authno }" />
      <c:set var="create_auth" value="${auth_infoVO.create_auth }" />
      <c:set var="update_auth" value="${auth_infoVO.update_auth }" />
      <c:set var="delete_auth" value="${auth_infoVO.delete_auth }" />
      <c:set var="read_auth" value="${auth_infoVO.read_auth }" />
      <TR>
        <TD class="td_bs">${authno }</TD>
        <TD class="td_bs">${create_auth }</TD>
        <TD class="td_bs">${update_auth }</TD>
        <TD class="td_bs">${delete_auth }</TD>
        <TD class="td_bs">${read_auth }</TD>
        <TD class="td_bs">
          <A href="./read_update.do?authno=${authno }" title="수정"><span class="glyphicon glyphicon-pencil"></span></A>
          <A href="./read_delete.do?authno=${authno }" title="삭제"><span class="glyphicon glyphicon-trash"></span></A>
        </TD>   
      </TR>   
    </c:forEach> 
    </tbody>
   
  </TABLE>
  
</DIV>

 
<jsp:include page="../menu/bottom.jsp" />
</body>
 
</html>
  
  
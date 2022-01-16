<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="dev.mvc.authgrp.AuthgrpVO" %>
 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, width=device-width" /> 
<title>Project 빵파고</title>
<link href="/css/style.css" rel="Stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    
<script type="text/javascript">

</script>

</head>

<body>
<jsp:include page="../menu/top.jsp" />
<DIV class='title_line'>권한그룹 관리(관리자)</DIV>
<DIV class='content_body'>
    <DIV id='panel_create' style='padding: 10px 0px 10px 0px; background-color: #goldenrod; width: 100%; text-align: center;'>
        <FORM>
            <label>권한그룹이름</label>
            <input type='text' name='name' value='' required="required" style='width: 25%;'
                autofocus="autofocus">
            
            <label>Create권한</label>
            <select name='create_auth'>
                <option value='Y' selected="selected">Y</option>
                <option value='N'>N</option>
            </select>
            
            <label>Read권한</label>
            <select name='read_auth'>
                <option value='Y' selected="selected">Y</option>
                <option value='N'>N</option>
            </select>
            
            <label>Update권한</label>
            <select name='update_auth'>
                <option value='Y' selected="selected">Y</option>
                <option value='N'>N</option>
            </select>
            
            <label>Delete권한</label>
            <select name='delete_auth'>
                <option value='Y' selected="selected">Y</option>
                <option value='N'>N</option>
            </select>        
            
           <button type="submit" id='submit' class='btn btn-primary btn-xs' style="height: 22px; margin-bottom: 3px;">등록</button>
           <button type="button" onclick="cancel();" class='btn btn-primary btn-xs' style="height: 22px; margin-bottom: 3px;">취소</button>
        </FORM>     
    </DIV>
    
    
    <TABLE class='table table-striped'>
        <colgroup>
        
        </colgroup>
        
        
        <thead>
        <TR>
            <TH class="th_bs">권한번호</TH>
            <TH class="th_bs">권한그룹명</TH>
            <TH class="th_bs">create_auth</TH>
            <TH class="th_bs">read_auth</TH>
            <TH class="th_bs">update_auth</TH>
            <TH class="th_bs">delete_auth</TH>
            <TH class="th_bs">기타</TH>
        
        </TR>
        </thead>
        
        
        <tbody>
            <c:forEach var="authgrpVO" items="${list}">
                <c:set var="authno" value="${authgrpVO.authno }" />
                <c:set var="authname" value="${authgrpVO.authname }" />
                <c:set var="create_auth" value="${authgrpVO.create_auth }" />
                <c:set var="read_auth" value="${authgrpVO.read_auth }" />
                <c:set var="update_auth" value="${authgrpVO.update_auth }" />
                <c:set var="delete_auth" value="${authgrpVO.delete_auth }" />
                <TR>
                    <TD class="td_bs">${authno }</TD>
                    <TD class="td_bs">${authname }</TD>
                    <TD class="td_bs">${create_auth }</TD>
                    <TD class="td_bs">${read_auth }</TD>
                    <TD class="td_bs">${update_auth }</TD>
                    <TD class="td_bs">${delete_auth }</TD>
                    <TD class="td_bs">
                        <A href="./read_update.do?authhrp=${authno }" title="수정"><span class="glyphicon glyphicon-pencil"></span></A>
                        <A href="./read_delete.do?authhrp=${authno }" title="삭제"><span class="glyphicon glyphicon-trash"></span></A>
                    </TD>   
                </TR>   
            </c:forEach>        
        </tbody>
        
    </TABLE>   
</DIV> 
</body>
</html>
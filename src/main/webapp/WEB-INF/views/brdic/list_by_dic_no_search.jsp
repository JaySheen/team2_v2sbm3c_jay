<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
<!DOCTYPE html> 
<html lang="ko"> 
<head> 
<meta charset="UTF-8"> 
<meta name="viewport" brdic="user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, width=device-width" /> 
<title>Bread recommended</title>
 
<link href="/css/style.css" rel="Stylesheet" type="text/css">
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    
<script type="text/javascript">
 
  
</script>
 
</head> 
 
<body>
<jsp:include page="../menu/top.jsp" />
 
<DIV class='title_line'> πλΉ΅ λ°±κ³Όμ¬μ π </DIV>

<DIV class='brdic_body'>
  <ASIDE class="aside_right">
    <A href="./create.do">λ±λ‘</A>
    <span class='menu_divide' >β</span>
    <A href="javascript:location.reload();">μλ‘κ³ μΉ¨</A>
    <span class='menu_divide' >β</span>
    <A href="./list_by_brdic_no_grid1.do">κ°€λ¬λ¦¬ν</A>
  </ASIDE> 

  <%-- ******************** κ²μ μμ ******************** --%>
  <DIV style="text-align: right; clear: both;">  
    <form name='frm' id='frm' method='get' action='./list_by_brdic_no_search.do'>
      <input type='text' name='brdic_word' id='brdic_word' value='${param.brdic_word }' style='width: 20%;'>
      <button type='submit'>κ²μ</button>
      <c:if test="${param.brdic_word.length() > 0 }">
        <button type='button' 
                     onclick="location.href='./list_by_brdic_no_search.do&brdic_word='">κ²μ μ·¨μ</button>  
      </c:if>    
    </form>
  </DIV>
  <%-- ******************** κ²μ μ’λ£ ******************** --%>
  
  <DIV class='menu_line'></DIV>
  
  <table class="table table-striped" style='width: 100%;'>
    <colgroup>
      <col style="width: 10%;"></col>
      <col style="width: 20%;"></col>
      <col style="width: 20%;"></col>
      <col style="width: 10%;"></col>
    </colgroup>
    <%-- table μ»¬λΌ --%>
     <thead>
      <tr>
       <th style='text-align: center;'> </th> 
       <th style='text-align: center;'> </th>
        <th style='text-align: center;'>λ±λ‘μΌ</th>
       <th style='text-align: center;'> </th> 
      </tr>
    
    </thead>  
    
    <%-- table λ΄μ© --%>
    <tbody>
      <c:forEach var="brbrdicVO" items="${list }">
        <c:set var="brdic_no" value="${brbrdicVO.brdic_no }" />
        <c:set var="thumb1" value="${brbrdicVO.thumb1 }" />
        <c:set var="brdic_name" value="${brbrdicVO.brdic_name }" />
        <c:set var="brdic_post" value="${brbrdicVO.brdic_post }" />
        <c:set var="brdic_crtime" value="${brbrdicVO.brdic_crtime.substring(0, 10) }" />
        
        <tr> 
          <td style='vertical-align: middle; text-align: center;'>
            <c:choose>
              <c:when test="${thumb1.endsWith('jpg') || thumb1.endsWith('png') || thumb1.endsWith('gif')}">
                <%-- /static/brdics/storage/ --%>
               <a href="./read.do?brdic_no=${brdic_no}&now_page=${param.now_page }"><IMG src="/brbrdic/storage/${thumb1 }" style="width: 120px; height: 80px;"> 
              </c:when>
              <c:otherwise> <!-- κΈ°λ³Έ μ΄λ―Έμ§ μΆλ ₯ -->
                <IMG src="/brbrdic/images/none1.png" style="width: 120px; height: 80px;">
              </c:otherwise>
            </c:choose>
          <td style='vertical-align: middle;'>
            <a href="./read.do?brdic_no=${brdic_no}"><strong>${brdic_name}</strong> ${brdic_post}</a> 
          </td> 
          <td style='vertical-align: middle; text-align: center;'>${brbrdicVO.brdic_crtime.substring(0, 10)}</td>
           <td style='vertical-align: middle; text-align: center;'>μμ /μ­μ </td>
        </tr>
      </c:forEach>
      
    </tbody>
  </table>
</DIV>

 
<jsp:include page="../menu/bottom.jsp" />
</body>
 
</html>



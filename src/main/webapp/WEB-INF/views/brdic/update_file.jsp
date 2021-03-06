<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="dic_no" value="${brdicVO.dic_no }" />
<c:set var="dic_name" value="${brdicVO.dic_name }" />
 
<!DOCTYPE html> 
<html lang="ko"> 
<head> 
<meta charset="UTF-8"> 
<meta name="viewport" dic="user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, width=device-width" /> 
<title>Bread recommended</title>
 
<link href="/css/style.css" rel="Stylesheet" type="text/css">
 
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    
<script type="text/javascript">
  $(function(){
 
  });
</script>
 
</head> 
 
<body>
<jsp:include page="../menu/top.jsp" flush='false' />
 
<DIV class='title_line'> πλΉ΅ λ°±κ³Όμ¬μ π >[${dic_name }] κ²μκΈ μ¬μ§ μμ </DIV>

<DIV class='dic_body'>
  <ASIDE class="aside_right">
    <A href="./create.do">λ±λ‘</A>
    <span class='menu_divide' >β</span>
    <A href="javascript:location.reload();">μλ‘κ³ μΉ¨</A>
    <span class='menu_divide' >β</span>
    <A href="./list_by_dic_no_search_paging.do">HOME</A>    
    <span class='menu_divide' >β</span>
    <A href="./list_by_dic_no_grid.do">κ°€λ¬λ¦¬ν</A>
    <span class='menu_divide' >β</span>
    <A href="./update_text.do?dic_no=${dic_no}">μμ </A>
    <span class='menu_divide' >β</span>
    <A href="./update_file.do?dic_no=${dic_no}">νμΌ μμ </A>  
  </ASIDE> 
  
    <DIV style="text-align: right; clear: both;">  
    <form name='frm' id='frm' method='get' action='./list_by_dic_no_search_paging.do'>
      <input type='text' name='dic_word' id='dic_word' value='${param.dic_word }' style='width: 20%;'>
      <button type='submit'>κ²μ</button>
      <c:if test="${param.dic_word.length() > 0 }">
        <button type='button' 
                     onclick="location.href='./list_by_dic_no_search_paging.do&dic_word='">κ²μ μ·¨μ</button>  
      </c:if>    
    </form>
  </DIV>
  
  <DIV class='menu_line'></DIV>

  <fieldset class="fieldset_basic">
    <ul>
      <li class="li_none">
        <DIV style='text-align: center; width: 50%; float: left;'>
          <c:set var="file1saved" value="${brdicVO.file1saved.toLowerCase() }" />
          <c:set var="thumb1" value="${brdicVO.thumb1 }" />
          <c:choose>
            <c:when test="${thumb1.endsWith('jpg') || thumb1.endsWith('png') || thumb1.endsWith('gif')}">
              <IMG src="/brdic/storage/${file1saved }" style='width: 90%;'> 
            </c:when>
            <c:otherwise> <!-- μ΄λ―Έμ§κ° μμ -->
               <IMG src="/brdic/images/none1.png" style="width: 90%;"> 
            </c:otherwise>
          </c:choose>
          
        </DIV>

        <DIV style='text-align: left; width: 47%; float: left;'>
          <span style='font-size: 1.5em;'>${dic_name}</span>
          <br>
          <FORM name='frm' method='POST' action='./update_file.do' 
              enctype="multipart/form-data">
            <input type="hidden" name="dic_no" value="${dic_no }">
            <input type='hidden' name='now_page' value='${param.now_page }'>
                
            <br><br> 
            λ³κ²½ μ΄λ―Έμ§ μ ν<br>  
            <input type='file' name='file1MF' id='file1MF' value='' placeholder="νμΌ μ ν"><br>
            ν¨μ€μλ<br>
            <input type='password' name='passwd' value='' required="required" style='width: 30%;'>
            <br>
            <div style='margin-top: 20px; clear: both;'>  
              <button type="submit" class="btn btn-primary">νμΌ λ³κ²½ μ²λ¦¬</button>
              <button type="button" onclick="history.back();" class="btn btn-primary">μ·¨μ</button>
            </div>  
          </FORM>
        </DIV>
      </li>
      <li class="li_none">

      </li>   
    </ul>
  </fieldset>

</DIV>
 
<jsp:include page="../menu/bottom.jsp" flush='false' />
</body>
 
</html>



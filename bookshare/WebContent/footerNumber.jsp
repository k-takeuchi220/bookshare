<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" type="text/css" href="./css/footerNumber.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
<div id="footerNumber">

<table>
<tr>
<td>
<s:if test="#session.postListNum == 1">
1
</s:if>
<s:else>
	<s:form action="PostListAction"><s:submit type="button">1</s:submit></s:form>
</s:else>
</td>

<td>
<s:if test="#session.postListNum == 2">
2
</s:if>
<s:else>
	<s:form action="PostListAction2"><s:submit type="button">2</s:submit></s:form>
</s:else>
</td>

<td>
<s:if test="#session.postListNum == 3">
3
</s:if>
<s:else>
	<s:form action="PostListAction3"><s:submit type="button">3</s:submit></s:form>
</s:else>
</td>
</tr>
</table>



</div>

</body>
</html>
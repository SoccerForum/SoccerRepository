<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	 <form action="<%=request.getContextPath() %>/update.do" method="post">
    	用户名：<input type="text" name="username" value="${add.username}">
		密码：<input type="password" name="password" value="${add.password}">
				<input type="hidden" name="id" value="${add.id }">
   				 <input type="submit" value="提交数据">
      </form>
</body>
</html>
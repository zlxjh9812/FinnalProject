<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    			<li class="item item1">
                   
                    <div class="cont">
                        <strong>${ board.title }</strong>
                        ${board.content }
                        <p>작성자:${board.nickname }</p>
                        <p>추천:${board.like_num} &nbsp&nbsp 비추:	 ${board.unlike_num}</p>
                       
                    </div>
         
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <title>Post</title>
    <link href="img/favicon.ico" rel="shortcut icon"/>
    <script src="http://ajax.googleapis.com/ajax/libs/prototype/1.7.3.0/prototype.js" type="text/javascript"></script>
    <script src="post.js" type="text/javascript"></script>
    <link href="home.css" rel="stylesheet" type="text/css">
    
</head>


<body>
    <div id="topline">
			<div id="header">
					<form id="form" name="logoImg" method="get">
	                <div class="logo">
	                    <img id="logoImg2" src="img/hand512.png" alt="logo Hihy" height="20" width="20">
	                    <a>HiHY</a>
	             	</div>
            	</form>

					<form id="topcontent" name="searchPost" method="post">
							<select id="t_color" name="t_color">
									<option value="null_color">상의</option>
			                        <option value="black">검정</option>
			                        <option value="gray">회색</option>
			                        <option value="brown">갈색</option>
			                        <option value="beige">베이지</option>
			                        <option value="green">초록</option>
			                        <option value="blue">파랑</option>
			                        <option value="denim">데님</option>
			                        <option value="purple">보라</option>
			                        <option value="yellow">노랑</option>
			                        <option value="pink">분홍</option>
			                        <option value="orange">주황</option>
			                        <option value="red">빨강</option>
			                        <option value="check">체크</option>
			                        <option value="sprite">줄무늬</option>
			                        <option value="dot">도트</option>
			                        <option value="camo">카모</option>
			                        <option value="sky">하늘</option>
			                        <option value="white">흰색</option>

							</select>
							<select id="b_color" name="b_color">
									<option value="null_color">하의</option>
									<option value="black">검정</option>
			                        <option value="gray">회색</option>
			                        <option value="brown">갈색</option>
			                        <option value="beige">베이지</option>
			                        <option value="green">초록</option>
			                        <option value="blue">파랑</option>
			                        <option value="denim">데님</option>
			                        <option value="purple">보라</option>
			                        <option value="yellow">노랑</option>
			                        <option value="pink">분홍</option>
			                        <option value="orange">주황</option>
			                        <option value="red">빨강</option>
			                        <option value="check">체크</option>
			                        <option value="sprite">줄무늬</option>
			                        <option value="dot">도트</option>
			                        <option value="camo">카모</option>
			                        <option value="sky">하늘</option>
			                        <option value="white">흰색</option>

							</select>
                    <div class="search_box">
                        <input id="search" type="text" name="search_contents" placeholder="Search...">
                        <input id="searchButton" type="image" src="img/mainsearch.png" alt="search">
                    </div>
                </form>
                <div class="loginarea">
                    <form id="login" name="login" method="post">
                        <input id="logid" type="text" name="login_id" placeholder="ID">
                        <input id="logpw" type="password" name="login_password" placeholder="Password">
                        <input id="logsm" type="image" src="img/login.png" class="button" value="Login">
                    </form>
                </div>
			</div>
	</div>
    <div class="postmain">
	    <div class="postmainbox">
	      	<img id="postimg" src="uploadDirectory/${photo }" width="300px;" height="460px;"><!--업로드한 이미지-->
	      	<div>
	        	<table>
	          	<tr>
	            	<td>${post.u_id } </td><!--작성자 -->
	          	</tr>
	          	<tr>
	            	<td>${post.p_date } </td><!--작성일-->
	          	</tr>
	          	<tr>
	            	<td>${post.p_contents }</td><!--태그-->
	          	</tr>
	          	<tr>
	            	<td>
	            	<img id="likes" src="img/like.png">
	            	<span id="like">${post.likes }</span>
	            	</td>
	          	</tr>
	        	</table>
	        	<hr>
	      	</div>
	     	<div>
	
	     		<form name = "comment" action="" method="post">
	     			<input type="hidden" name="p_id" value="${post.p_id }">
	        		<input id="textcomment" type="text" name="comment">
	    			<input class="button" type="button"  id="comment" value="댓글">
	
	    		</form>
	
	      	</div>
	    	<c:forEach items="${commentsList }" var="comment" varStatus="status">
				${status.count}. ${comment.c_contents }		${comment.u_id }	${comment.c_date }<br>
			</c:forEach>
	    </div>
    </div>

	<div class="aboutus">

            <div class="info">
                <img id="likeImg"src="img/like.png">HiHY<br><br>
                HiHY : Hi! HanYang Fashion People <br>
                Hanyang UNIV Student<br>
                Web Project<br>
                <span class="Tname">TEAM HIHY</span> © 2017 All rights reserved
                
            </div>

            <div class="info">
                About us<br><br>
               	 김민상 :<span class="email"> kms2698@hanyang.ac.kr</span><br>
		               이성준 :<span class="email"> cmkjhop3@hanyang.ac.kr</span><br>
		               이원정 :<span class="email"> vnfma@hanyang.ac.kr</span><br>
		               위대한 :<span class="email"> jjuo12@hanyang.ac.kr</span><br>
		               김승래 :<span class="email"> ksl0718@hanyang.ac.kr</span>
                
            </div>

            <div class="info">
                Stay Updated<br><br>
                Subscribe to stay informed of rolling updates and new products.
            </div>
        </div>
</body>
</html>

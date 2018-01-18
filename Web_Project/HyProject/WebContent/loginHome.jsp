<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
	<head>
	    <meta charset="utf-8">
	    <title>Home</title>
	    <link href="img/favicon.ico" rel="shortcut icon"/>
	    <script src="http://ajax.googleapis.com/ajax/libs/prototype/1.7.3.0/prototype.js" type="text/javascript"></script>
	    <script src="loginHome.js" type="text/javascript"></script>
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


	            <form id="topcontent" name="searchPost" action="" method="post">
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
                        <input id="searchButton" type="image" src="img/mainsearch.png" alt="search" value="검색" >
                    </div>
                </form>
                <div id="tomypage">
                    <form class="afterlogin" name="myPost" method="get">
                        <input id="gotomyPage" type="button" class="button" value="My Page">
                    </form>
                    <form class="afterlogin" name="logout" method="get">
                        <input id="logoutbutton" type="button" class="button" value="Logout">
                    </form>
                </div>
           </div>
       </div>

       <div>
           <form class="" name="write" action="write.jsp" method="post">
               <input id="write" type="image" src="img/write.png" width="60" height="60">
           </form>
       </div>

        <div id="top10">
            <c:forEach items="${photoTop }" var="phototop" varStatus="status">
                <a href="postDetailServlet?p_id=${postTop[status.index].p_id }">
                    <div class="top">
                        <img src="uploadDirectory/${phototop }" width="216px" height="300px"><br>
                        <img id="likeImg"src="img/like.png">${postTop[status.index].likes }<br>
                        ${postTop[status.index].p_contents }
                    </div>
                </a>
            </c:forEach>
        </div>



       <div class="posts">
    	<div class="row">
    		<c:forEach items="${photoLast }" var="photolast" varStatus="status">
    			<a href="postDetailServlet?p_id=${postLast[status.index].p_id }">
				<div class ="post">

					<img src="uploadDirectory/${photolast }" width="216px" height="300px"><br>
					<img id="likeImg"src="img/like.png">${postLast[status.index].likes }<br>
					${postLast[status.index].p_contents }
				</div>
				</a>
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

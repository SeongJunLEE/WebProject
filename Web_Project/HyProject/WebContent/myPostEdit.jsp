<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Edit</title>
    <link href="img/favicon.ico" rel="shortcut icon"/>
    <script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/prototype/1.7.3.0/prototype.js" type="text/javascript"></script>
    <script src="edit.js" type="text/javascript"></script>
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



    <form action="editPostServlet?p_id=${post.p_id }" method="post" name="edit" id ="inform" enctype="multipart/form-data">
    <div class="titbox">
      <div class="title">
        <span class="name">
        	게시물 작성</span>
      </div>
    </div>
    <div class="main">
    <div class="left">
      <img id="blah" src="uploadDirectory/${photo }" alt="your image" width="300" height="460"><br>
      <input type="file" id = "imgInp" name="filename"><br>
       </div>
       <div class="right">   
          <div>
            <br>글내용 <input type="text" id="p_contents" name="p_contents" value="${post.p_contents }">
          </div>
        <div class="table1">
          <br><img src="img/${post.t_color }TopColor.png" id="top_color" width="150">
          <table>
            <tbody>
              <tr>
              	<td><img class="topc" src="img/black.png" alt="블랙" width="20" name="color" value="black" />
                <td><img class="topc" src="img/gray.png" alt="회색" width="20"  name="color" value="gray" /></td>
                <td><img class="topc" src="img/brown.png" alt="갈색" width="20" name="color" value="brown"/></td>
                <td><img class="topc" src="img/beige.png" alt="베이지" width="20" name="color" value="beige"/></td>
                <td><img class="topc" src="img/green.png" alt="초록" width="20" name="color" value="green"/></td>
                <td><img class="topc" src="img/blue.png" alt="파랑" width="20" name="color" value="blue"/></td>
                <td><img class="topc" src="img/denim.png" alt="데님" width="20" name="color" value="denim"/></button></td>
                <td><img class="topc" src="img/purple.png" alt="보라" width="20" name="color" value="purple"/></button></td>
                <td><img class="topc" src="img/yellow.png" alt="노랑" width="20" name="color" value="yellow"/></button></td>
              </tr>
              <tr>
                <td><img class="topc" src="img/pink.png" alt="분홍" width="20" name="color" value="pink"/></td>
                <td><img class="topc" src="img/orange.png" alt="주황" width="20" name="color" value="orange"/></td>
                <td><img class="topc" src="img/red.png" alt="빨강" width="20" name="color" value="red"/></td>
                <td><img class="topc" src="img/check.png" alt="체크" width="20" name="color" value="check"/></td>
                <td><img class="topc" src="img/sprite.png" alt="줄무늬" width="20" name="color" value="sprite"/></td>
                <td><img class="topc" src="img/dot.png" alt="도트" width="20" name="color" value="dot"/></td>
                <td><img class="topc" src="img/camo.png" alt="카모" width="20" name="color" value="camo"/></td>
                <td><img class="topc" src="img/sky.png" alt="하늘" width="20" name="color" value="sky"/></td>
                <td><img class="topc" src="img/white.png" alt="흰색" width="20" name="color" value="white"/></td>
              </tr>
            </tbody>
          </table>
        </div>
        <div class="table2">
          <br><img src="img/${post.b_color }BottomColor.png" id="bottom_color" width="150">
            <table>
              <tbody>
                  <tr>
                      <td><img class="bottom" src="img/black.png" alt="블랙" width="20" name="color" value="black" />
                          <td><img class="bottom" src="img/gray.png" alt="회색" width="20"  name="color" value="gray" /></td>
                          <td><img class="bottom" src="img/brown.png" alt="갈색" width="20" name="color" value="brown"/></td>
                          <td><img class="bottom" src="img/beige.png" alt="베이지" width="20" name="color" value="beige"/></td>
                          <td><img class="bottom" src="img/green.png" alt="초록" width="20" name="color" value="green"/></td>
                          <td><img class="bottom" src="img/blue.png" alt="파랑" width="20" name="color" value="blue"/></td>
                          <td><img class="bottom" src="img/denim.png" alt="데님" width="20" name="color" value="denim"/></button></td>
                          <td><img class="bottom" src="img/purple.png" alt="보라" width="20" name="color" value="purple"/></button></td>
                          <td><img class="bottom" src="img/yellow.png" alt="노랑" width="20" name="color" value="yellow"/></button></td>
                          </tr>
                  <tr>
                      <td><img class="bottom" src="img/pink.png" alt="분홍" width="20" name="color" value="pink"/></td>
                      <td><img class="bottom" src="img/orange.png" alt="주황" width="20" name="color" value="orange"/></td>
                      <td><img class="bottom" src="img/red.png" alt="빨강" width="20" name="color" value="red"/></td>
                      <td><img class="bottom" src="img/check.png" alt="체크" width="20" name="color" value="check"/></td>
                      <td><img class="bottom" src="img/sprite.png" alt="줄무늬" width="20" name="color" value="sprite"/></td>
                      <td><img class="bottom" src="img/dot.png" alt="도트" width="20" name="color" value="dot"/></td>
                      <td><img class="bottom" src="img/camo.png" alt="카모" width="20" name="color" value="camo"/></td>
                      <td><img class="bottom" src="img/sky.png" alt="하늘" width="20" name="color" value="sky"/></td>
                      <td><img class="bottom" src="img/white.png" alt="흰색" width="20" name="color" value="white"/></td>
                  </tr>
              </tbody>
            </table>
          </div>
        <div>
          <input id="p_id" type="hidden" value="${post.p_id }">
          <input id="button2" type="button" value="수정">
        </div>
      </div>
      </div>
    </form>
    
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

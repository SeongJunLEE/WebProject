window.onload=function(){
	$("comment").onclick=detail;
	$("likes").onclick=detail;
	$("logsm").onclick=loginCheck;
	$("searchButton").onclick=call;
	$("logoImg2").onclick=call2;

};

function loginCheck() {
    login.action="loginServlet";
    login.submit();
}

function call(){
	searchPost.action="homeServlet";
	searchPost.submit();
}
function call2(){
	logoImg.action="homeServlet";
	logoImg.submit();

}
function detail(){
	 alert("로그인이 필요합니다.");
}

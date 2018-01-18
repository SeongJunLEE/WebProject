window.onload=function(){
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

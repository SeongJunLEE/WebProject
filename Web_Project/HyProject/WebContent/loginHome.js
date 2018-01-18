window.onload=function(){
    $("logoutbutton").onclick=logoutCheck;
    $("gotomyPage").onclick=myPage;
    $("searchButton").onclick=call;
	$("logoImg2").onclick=call2;

};

function call(){
	searchPost.action="homeServlet";
	searchPost.submit();
}


function logoutCheck() {
	 logout.action="logoutServlet";
	 logout.submit();
}

function write() {
	write.action="write.jsp"
	write.submit();
}

function myPage() {
	myPost.action="myPostServlet";
	myPost.submit();

}

function call2(){
	logoImg.action="homeServlet";
	logoImg.submit();

}

window.onload=function(){
	$("comment").onclick=detail;

	$("logoutbutton").onclick=logoutCheck;
	$("gotomyPage").onclick=myPage;

	$("searchButton").onclick=call;
	$("logoImg2").onclick=call2;
};


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
	function call(){
		searchPost.action="homeServlet";
		searchPost.submit();
	}
	function call2(){
		logoImg.action="homeServlet";
		logoImg.submit();
	}

	function detail(){
	 comment.action="postDetailServlet";
	 comment.submit();
}

var top_color = "";
var bottom_color = "";
window.onload =function(){

	$("logoutbutton").onclick=logoutCheck;
    $("gotomyPage").onclick=myPage;
    $("searchButton").onclick=call;
	$("logoImg2").onclick=call2;
	$("button1").onclick=call3;

    var file = document.querySelector('#imgInp');
    $("imgInp").observe("change", function(){
    	var fileList = file.files ;
        var reader = new FileReader();
        reader.readAsDataURL(fileList [0]);
        reader.onload = function  () {
        document.querySelector('#blah').src = reader.result ;
        };

        }  ) ;


    var topcolor = $$(".topc");
    for(var i = 0; i < topcolor.length; i++){
        topcolor[i].observe("click", function(){
                            top_color = this.getAttribute("value");
                            var colTop = "img/" + top_color + "TopColor.png";
                            $("top_color").src=colTop;
                            }
                            );
    }

    var bottomcolor = $$(".bottom");
    for(var i = 0; i < bottomcolor.length; i++){
        bottomcolor[i].observe("click", function(){
           bottom_color = this.getAttribute("value");
           var colBottom = "img/" + bottom_color + "BottomColor.png";
           document.getElementById("bottom_color").src=colBottom;}
           );
    }



}


function call3(){
    write.action="postServlet?t_color="+ top_color +"&b_color=" + bottom_color;
    write.submit();
}

function logoutCheck() {
	 logout.action="logoutServlet";
	 logout.submit();
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

var top_color = "";
var bottom_color = "";
var p_id ="";
window.onload =function(){
	$("logoutbutton").onclick=logoutCheck;
    $("gotomyPage").onclick=myPage;
    $("searchButton").onclick=call;
	$("logoImg2").onclick=call2;


    var topcolor = $$(".topc");
    var file = document.querySelector('#imgInp');
    for(var i = 0; i < topcolor.length; i++){
        topcolor[i].observe("click", function(){
                            top_color = this.getAttribute("value");
                            var colTop = "img/" + top_color + "TopColor.png";
                            document.getElementById("top_color").src=colTop;}
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
    p_id = $("p_id").getAttribute("value");



    $("button2").onclick=call3;

    $("imgInp").observe("change", function(){

        var fileList = file.files ;

        var reader = new FileReader();
        reader.readAsDataURL(fileList [0]);
        reader.onload = function  () {
        document.querySelector('#blah').src = reader.result ;
        };

        }  ) ;



}


function call3(){
    edit.action="editPostServlet?p_id="+ p_id +"&t_color="+ top_color +"&b_color=" + bottom_color;
    edit.submit();
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

//var selected_name;
$(document).ready(function(){
	console.log("document ready");
    /*$("button").click(function(){
        $.get("demo_test.asp", function(data, status){
            alert("Data: " + data + "\nStatus: " + status);
        });
    });*/
	/*$.get("/baselist", function(data, status){
		debugger;
		var length = data.length;
        alert("get data");
    });*/
	$.ajax({
        type: "GET",
        contentType: 'application/x-www-form-urlencoded; charset=utf-8;', 
        url: "/baselist",
        dataType:"json",
        data: null,//{"startNum":startNum, "endNum":endNum},
        async: true, 
        cache: false,
        success: function(data){
        	for(var i = 0; i < data.length;i++){		
        		var html = "";
        		// data-rel="popup" class="ui-btn" data-transition="slide"
        		/*html += "<tr>";
        		html += 	"<td>";
        		html += 	i + 1;
        		html += 	"</td>";

        		html += 	"<td  href='#myPopup' data-rel='popup' class='ui-btn' data-transition='slide' >";
        		html += 	data[i].name;
        		html += 	"</td>";
        		html += "</tr>";
        		$("#tbodyList").append(html);*/
        		html += "<a href='#pagetwo' class='ui-btn' onclick='myClick(this)' >" + data[i].name + "</a>";
        		$("#myContent").append(html);
        	}
        	/*$(".ui-btn").unbind('click').bind('click',function(a,b,c,d){
        		debugger;
        		console.log("asd");
            });*/
        	
        },
        error:function (){
            alert("서버와 통신중 에러가 발생하였습니다.");
        }
        
	});
	$(document).on('pagebeforeshow', '#pagetwo', function(a,b,c){
	    console.log("page before show");
	    //$("#name").html("");
	});
});
function myClick(objButton){ 
	//alert(objButton.innerText);asd
	var selected_name = objButton.innerText;
	$("#selected_name")[0].innerText = "( " + objButton.innerText + " ) 의 생일을 입력하세요";
	console.log("selected_name : " + selected_name);
	//$("#name").html('<option value="' + selected_name + '" >' + selected_name + '</option>');
	$("#name")[0].value=selected_name;
	$("#name").hide();
}

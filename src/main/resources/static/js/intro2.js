$(document).ready(function(){
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
        		html += "<tr style='border:1px solid black'>";
        		//html += 	"<td style='cursor:pointer;' onclick='fn_commissionDetail(" + '"' + commissionList[i].LOAN_COMMISSION_CD + '","' +commissionList[i].DEALING_COMP_CD + '","' + commissionList[i].FINANCIAL_INSTITUTION_CD + '"' + ")'>";
        		html += 	"<td>";
        		html += 	data[i].name;
        		//html += 	data[i].FINANCIAL_INSTITUTION_NM + "은행<br/>";
        		html += 	"</td>";

        		html += 	"<td>";
        		html += 	data[i].name;
        		html += 	"</td>";
        		html += "</tr>";
        		$("#tbodyList").append(html);

        	}  
        },
        error:function (){
            alert("서버와 통신중 에러가 발생하였습니다.");
        }
	});

});
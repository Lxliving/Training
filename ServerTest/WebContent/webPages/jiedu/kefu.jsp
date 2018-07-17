<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<title>安徽省国家税务局税企互助交流平台</title>
	<meta name="viewport" content="width=device-width"/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script type="text/javascript" src="js/jquery.min.js"></script>	
	<script type="text/javascript" src="js/jqpaginator.min.js"></script>
	<script type="text/javascript" src="js/jquery-2.2.3.min.js"></script> 
	<link rel="icon" href="image/home/favicon.gif" type="image/x-icon" />
	<link rel="stylesheet" type="text/css" href="css/kefu.css"/>
	<script type="text/javascript" src="js/zeroModal.min.js" charset="utf-8"></script>
  	<link rel="stylesheet" href="css/zeroModal.css"/>
  	 <style type="text/css">  
	
</style>  
</head>
<body>
	<div class="cs_wrap" id="wrap">
		<div class="dialogue">
			<!-- 	image  -->
			<div class="titleImg">
				<img src="image/icon/top.png" />
			</div>
			<!-- nav -->
			<div class="title">
				<img src="image/icon/robot.png" /> 
				<span class="zaixian">安徽国税税企客服在线 </span> 
				<span class="telnum">咨询热线：0551-12366</span>
				<span class="close fr">
					<!-- <a onClick="javascript :history.back(-1);">×</a> -->
				</span>
			</div>
			<!-- 整个window -->
			<div class="chatwindow clearfix">
				<!-- 聊天窗口 左部分 -->
				<div class="left_all" style="background:white;">
					<div id="scrolldIV" class="chatleft">	 
					<div class="message clearfix"> <!-- 每条对话总框 -->  
			            <p class="content-time"><span class="content-time-span"> <span class="firstTime"><span>2018-07-17 15:17:48</span></span> </span></p><!-- 对话时间 -->  
			            <img class="pic-left" src="image/icon/robothead.png">  
			            <div class="text-style-left">  
			                <div class="pos-left">  
			                    <div class="bubble">  
			                        <div class="plain">用户您好！我是智能机器人小安，24小时为您服务，请将您的问题告诉我!</div>  
			                    </div>  
			                </div>  
			            </div>  
			        </div> 
			        <div class="mess_news"></div> 
					</div>
					<!-- 请输入 -->
					 <div class="placeinputImgs">
						  <img src="image/icon/cs.png">  
					</div>
					<!-- 上下分割线 -->
				<div class="chatbottomline"></div>
				<!-- 底部发送 -->
				<div class="chatbottom">
					<textarea id="question_message" class="send_message"></textarea>
					<button id="sendBtn" class="send" onclick="sendClick()" style="background: rgb(153, 153, 153);">发送</button>
				</div>
				</div>
				<!-- 聊天窗口 右部分 -->
				<div class="chatright">
					<p class="hotquestion">热点问题</p>
					<div class="tax_type">
					<ul>
					<li style="padding:2px;">
					<a onclick="question(0)" href="#">开票系统无法正常工作怎么办？</a></li>
					<li style="padding:2px;">
					<a onclick="question(1)" href="#">冠名发票第一次是如何申请领购？</a></li>
					<li style="padding:2px;">
					<a onclick="question(2)" href="#">国税发票代开需要什么资料？</a></li>
					<li style="padding:2px;">
					<a onclick="question(3)" href="#">手工发票怎么开？</a></li>
					<li style="padding:2px;">
					<a onclick="question(4)" href="#">怎么开具开具红字增值税专用发票?</a></li>
					<li style="padding:2px;">
					<a onclick="question(5)" href="#">增值税纳税申报表申报有误能否作废？</a></li>
					<li style="padding:2px;">
					<a onclick="question(6)" href="#">一般纳税人资格认定标准是什么？</a></li>
					</ul>
					</div>
					<div id="demo1" class="clearfix">
					<ul>
					<li class="prev disabled" style="padding:0px;border-radius: 5px;" jp-role="prev" jp-data="0">
					<a href="javascript:void(0);">上一页</a></li>
					<li class="page active" jp-role="page" jp-data="1">
					<a href="javascript:void(0);"> 1 / 1 </a></li>
					<li class="next" style="padding:0px;border-radius: 5px;" jp-role="next" jp-data="2">
					<a href="javascript:void(0);">下一页</a></li>
					</ul>
					</div>
					<!-- 分页 end-->					
				</div>
				<!-- 请输入 imge -->
			</div>
		</div>
	</div>
	<!-- 页面高度  -->
	<script type="text/javascript">
		// alert($(window).height()); 
		var pagecount = 7;
		var aa = $(window).height();
		var aaheight = aa - 0;
		$('#wrap').css('height',aaheight);
		 var total = '12'; 
		/*  console.log(total);  */
		 var page = Math.ceil(total/pagecount);
		 var  qustions=[];
		  $("#demo1").jqPaginator({
	            totalPages: page,		//分页总页数 
	            visiblePages: 1,	//最多显示的页码数
	            currentPage: 1,		//当前的页码
	        	/* pageSize: total,			//总条目数 
	            totalCounts: 10,		//每一页的条目数 */
	            prev: '<li class="prev" style="padding:0px;border-radius: 5px;"><a href="javascript:void(0);">上一页<\/a><\/li>',
	            next: '<li class="next" style="padding:0px;border-radius: 5px;"><a href="javascript:void(0);">下一页<\/a><\/li>',
	            page: '<li class="page"><a href="javascript:void(0);"> {{page}} / {{totalPages}} <\/a><\/li>',
	            onPageChange: function (page) {
	                $.get("/lagsms/customer/searchCustomer",{
	                	page: page,
	                	rows:pagecount,
	            }, function(data) {
	            	qustions = data
	            	/* console.log(JSON.stringify(data) ); */
	            	 var dataHTML = data.map(function(value, index, array){
	            		return '<li style="padding:2px;"><a onclick="question('+ index  +')" href="#">'+value.hotIssue+'</a></li>';
	        		 }); 
	            	/*  console.log(dataHTML); */
	        		$(".tax_type").html(dataHTML); 
	            });
	            }
	        });
		/* } */
		  //点击热门咨询列表
		  function question(index){
			  console.log("选择----",JSON.stringify(qustions[index].hotIssue));
			  var selcteQuestion= qustions[index].hotIssue
			  sendClick(selcteQuestion);
		  }
		  //获取输入值 改变sendbtn 颜色
		  $('textarea').bind('input propertychange', function() {
	            var buttons = document.getElementById("sendBtn");
	             buttons.style.background='#2e71d0';
	             if(!$("#question_message").val()){
	            	 buttons.style.background='#999';
	             }
	        });
		  //时间格式化
		    function formatDateTime(inputTime) {    
	            var date = new Date(inputTime);  
	            var y = date.getFullYear();    
	            var m = date.getMonth() + 1;    
	            m = m < 10 ? ('0' + m) : m;    
	            var d = date.getDate();    
	            d = d < 10 ? ('0' + d) : d;    
	            var h = date.getHours();  
	            h = h < 10 ? ('0' + h) : h;  
	            var minute = date.getMinutes();  
	            var second = date.getSeconds();  
	            minute = minute < 10 ? ('0' + minute) : minute;    
	            second = second < 10 ? ('0' + second) : second;   
	            return y + '-' + m + '-' + d+' '+h+':'+minute+':'+second;    
	        }; 
		  //初始化聊天信息
		  var chatTime = new Date();
		  var dataArr=new Array();
		  var obj={
				  times:formatDateTime(chatTime),
		  }
		  dataArr.push(obj);
		  var setTime = dataArr.map(function(value, index, array){
			  return '<span>'+ value.times +'</span>' ;
		  });
	     $(".firstTime").html(setTime); 
		  
		  //发送问题请求
		  function sendClick() {	
			 
		     var nowTimes =  new Date().getTime(); 
			 var userId= '';
			 if(!userId){
				 userId = "user_"+nowTimes;
			 }
			  //获取问题值
			  var questionMess =$("#question_message").val();
			  if(!mess){
				  var questionMess =$("#question_message").val();
				  if(!questionMess){
					  alert("请输入您咨询的问题！");
					  return;
				  }
			  }else{
				  questionMess = mess;
			  }
			  //字典 配置请求值
			  var http_List = [{"dictData":"12","dictName":"requestNo"},{"dictData":"1","dictName":"fromUserName"},{"dictData":"2","dictName":"msgType"},{"dictData":"3","dictName":"content"},{"dictData":"4","dictName":"createTime"},{"dictData":"5","dictName":"userNickName"},{"dictData":"6","dictName":"customerName"},{"dictData":"7","dictName":"paperNo"},{"dictData":"8","dictName":"customerType"},{"dictData":"9","dictName":"customerLevel"},{"dictData":"10","dictName":"telphoneNo"},{"dictData":"11","dictName":"provice"},{"dictData":"12","dictName":"city"},{"dictData":"13","dictName":"brand"},{"dictData":"189665AD","dictName":"appid"},{"dictData":"http://79.12.115.2:8080/pq-usp-web/USPServlet?","dictName":"httpUrl"}]; 
			  //去空格
			  questionMess.replace("/(^\s+)|(\s+$)/g","");
			  //时间戳
			  var timestamp = (new Date()).valueOf(); 
			   var liushuiData,messtypeData,httpUrl,appidname,appidData;
			    liushuiData = http_List[0].dictData ;
			    messtypeData = http_List[2].dictData ; 
			    httpUrl = http_List[15].dictName ;
			    appidname =  http_List[14].dictName ;
			    appidData = http_List[14].dictData ; 
			     var dataJson = [{
			    	   "requestNo" : liushuiData ,                    //业务流水号
					   "content" : questionMess ,                 //问题
					   "fromUserName" : userId ,                  //用户ID
					   "msgType" : messtypeData ,                 //消息类型 默认 text
					   "createTime":timestamp ,                   //创建时间 int	
					   "url":httpUrl,
					   "appid":appidData
		            }]    
			     var url = httpUrl+appidname + '=' + appidData;
			  
			     $.ajax({
			         url:"/lagsms/sendCustomer?questions="+ questionMess ,
			   		type:'post',
			   		dataType:'json',
			   		error: function(XMLHttpRequest, textStatus, errorThrown) {
			   			console.log("响应状态:["+XMLHttpRequest.status+"]-");
			   			console.log("完成状态:["+XMLHttpRequest.readyState+"]-");
			   			console.log("异常情况:["+textStatus+"]");
			   			console.log("抛出错误:["+ errorThrown+"]");
			   			
			   			},
			   		success:function(data){
			   			console.log("返回---",JSON.stringify(data));
			   		 if (data.responseCode == "000000") {
	                      //返回的模拟数据
	      		          var dataArray = new Array();
	      		          dataArray.push(data);
	      		        //创建时间
	      		        var date =  new Date();
	      		        console.log("格式化时间--",formatDateTime(date));
	      		        var dataHTML = dataArray.map(function(value, index, array){
	      				return	'<div class="message clearfix">' +
	            			    '<p class="content-time"><span class="content-time-span">'+  formatDateTime(date) +'</span></p>'+
	            			    '<img class="pic" src="image/icon/user_avatar.png">'+
	            			   '<div class="text-style">' +
	            			       ' <div class="pos">'+
	            			           '<div class="bubble">' +
	            			             '<div class="plain">' +  value.rawtext + '</div>'+
	            			           '</div>' +
	            			       '</div>' + 
	            			    '</div>'+
	            			'</div>' +
	            			'<div class="message clearfix">'+
	            			 '<p class="content-time"><span class="content-time-span">'+ formatDateTime(date) +'</span></p>'+
	            			   '<img class="pic-left" src="image/icon/robothead.png">'+ 
	            			   ' <div class="text-style-left">'+
	            			      '<div class="pos-left">'+  
	            			         '<div class="bubble">' +  
	            			              '<div class="plain">' +  value.content + '</div>'+
	            			           '</div>' +
	            			        '</div>'+
	            			   '</div>'+ 
	            			'</div>'  ;
	            		}) ;
	      		        $(".mess_news").html(dataHTML);  
	      		      //滚动条到底部
	      			  var boxId="scrolldIV";
	      			  var boxElement=document.getElementById(boxId);
	      			  boxElement.scrollTop=boxElement.scrollHeight-boxElement.clientHeight;
	                    } else if(data.responseCode == '100001') {
	                      alert("请求数据为空！");
	                    }else if(data.responseCode == '100002') {
	                      alert("请求渠道号为空！");
	                    }else if(data.responseCode == '100003') {
	                      alert("请求渠道号不正确或已经禁用！");
	                    }else if(data.responseCode == '10000') {
	                      alert("指令不存在或非法指令！");
	                    }else if(data.responseCode == '100009') {
	                      alert("请求文本为空！");
	                    }else if(data.responseCode == '100013') {
	                      alert("请求参数中必填字段为空！");
	                    }else if(data.responseCode == '110001') {
	                      alert("不支持此请求格式！");
	                    }else if(data.responseCode == '200002') {
	                      alert("语义返回结果为空！");
	                    }else if(data.responseCode == '200003') {
	                      alert("语义理解此句有敏感词！");
	                    }
			   		}
			     });               
		}
	</script>
</body>
</html>

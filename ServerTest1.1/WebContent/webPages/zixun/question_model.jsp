<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
 <base href="<%=basePath%>">
<title>安徽省国家税务局税企互助交流平台</title>
<link rel="stylesheet" type="text/css" href="css/head.css" />
<link rel="stylesheet" type="text/css" href="css/paging.css" />
<link rel="stylesheet" type="text/css" href="css/question_model.css" />
<link rel="stylesheet" type="text/css" href="css/bottom.css" />
<script type="text/javascript" src="js/jquery-2.2.3.min.js"></script> 
<script type="text/javascript" src="js/star.js"></script> 
<link rel="stylesheet" href="css/tips.css" />
<link rel="stylesheet" href="css/ScreenChange.css" /> 

<style type="text/css">

	body {
	min-height: 900px;
	background:rgba(236,236,236,1.00);	
	
}
</style>

</head>
<body>
<div class="top" style="display:flex;justify-content:space-around;">
		<div class="logo"  style=""></div>
		<div class="daohang">
			<ul id="tabs_nav" style="display:flex;justify-content:space-around;">
				<li id="shouye"><a href="webPages/NewFile.jsp" id="one">首页</a><span
					class="underline"></span></li>
				<li id="zixun"><a href="webPages/zixun/zixun.jsp" id="two">咨询</a></li>
				<li id="jingyan"><a href="webPages/jingyan1/jingyan1.jsp"
					id="three">经验分享</a></li>
				<li id="zhuanye"><a href="webPages/jiedu/jiedu.jsp" id="four">专业解读</a></li>
				<li id="user"><a href="webPages/userarea/userarea.jsp"
					id="five">用户专区</a></li>
				<form action="">
					<li class="top_search">
						<div class="search">
						    <a href="webPages/zixun/find.jsp">
						   	 <img alt="" src="image/icon/fdj.png" class="fangdajing">
						    </a>
							<input type="text" id="sousuo" name="title" class="find" value="搜索问题…"/>
						</div>
					</li>
				</form>
			</ul>
		</div>
		<div class="user">
			<div class="user_content">	
						<a style="padding: 0 50px;">
							<img alt="" src="image/header/u198.png" class="person">
						</a>
						<div style="position: absolute; left: 20px; line-height: 0px;">
							<div style="line-height: 13px;">
								<a href="webPages/jiedu/login.jsp">登录</a>
							</div>
							<div style="line-height: 13px;">&nbsp;/&nbsp;</div>
							<div style="text-align: left; line-height: 13px;">
								<a href="webPages/jiedu/register.jsp">注册</a>
							</div>
						</div>				
			</div>
		</div>
	</div>
	<div class="mask"></div> 
<div class="dialog"> 
  
<div class="title"> 
<img alt="点击可以关闭" src="image/icon/closepopwinbtn.png" width="20px" height="20px;"> 
</div> 
  
<div class="tips_content"> 
<img alt="" src="image/tips.png" width="115px" height="115px" style="position: absolute; margin-left: 80px;margin-right: 80px;margin-top: 0px;"> 
	<div class="content_wenzi" ><span >请先登录用户</span> </div>
</div> 
<div class="bottom"> 
<input type="button" id="ok" value="确定" class="ok_btn" style=" "> 
</div>  
</div> 
	<div class="ques_content_wrapall">
		<div class="location">
			
			<span class="fl">当前位置：<a style="color:black;" href="webPages/zixun/zixun.jsp" class="nav_style">咨询</a></span>
			<span class="fl">&nbsp;&gt;&nbsp;</span>
			<span class="fl" style="width:300px;overflow: hidden;text-overflow:ellipsis;white-space: nowrap;">
			   <a href="webPages/zixun/question_model.jsp" class="nav_style"> 想了解个人所得税流程 </a>
			</span>
		</div>
		<div class="ques_content">
			<div class="notsolved">
				<div class="question_mark">
					<img src="image/questionmark.png">
					<span>未解决</span>
				</div>
				<div class="mark_content">
					<ul>
						<li><p>问题：想了解个人所得税流程</p></li>
						<li><span>2017-12-20</span></li>
					</ul>
				</div>
				<div class="user_messageone">
					<div class="user_messageone_list_content">
						<span>内容：</span>
						<span id="hidden"><p>个人所得税是怎么计算的，流程是什么？</p></span>
					</div>
				</div>
			</div>
		<div class="ques_content_three">
			<div class="ques_content_three_nav">
				<ul>
					<li><span>浏览：</span><span>369</span></li>
					<li><span>回答：</span><span>11</span></li>			
					<li  onclick="tips();" style="cursor:pointer;float:right;cursor:pointer;" id="report">举报</li>
					<li class="check_not_login"  onclick="tips();" style="cursor: pointer;float:right;">
						收藏
					</li>
				</ul>
			</div>
			<h1>全部回答</h1>
			<div class="gary">
				<div class="pink"></div>
			</div>
       <div class="user_messageTwo">
		<div class="user_messageTwo_list" id="user_messageTwo_list">
		<div id="answerContent" class="user_messageTwo_list_content">
		<ul  style="border-bottom:1px dashed #ccc;height:136px;">
		<li><a href="">
		  <img src="image/u2815.png" alt="Avatar">
		   </a>
		  </li>
		 <li><p class="over"></p>
		 <p>回答了解流程税是怎么计算的流程是什么？</p>
         <p></p>
          </li>
         <li><span>2017-12-21</span></li>
         <li class="star_answer_action star-answer"  onclick="tips();" style="cursor:pointer;">
         <span>收藏：</span>
         <span class="starCount star-answer-num">2</span></li>
         <li class="like-answer"  onclick="tips();" style="cursor:pointer;">
         <span style="cursor:pointer;">点赞：</span>
         <span class="likeCount like-answer-num">1</span></li>
         <li id="report_one">
           <span   onclick="tips();" style="text-decoration: none;color:black;cursor:pointer;">举报</span></li></ul>
           <ul  style="border-bottom:1px dashed #ccc;height:136px;">
           <li><a href="">
           <img src="image/u2815.png" alt="Avatar"></a></li>
           <li><p class="over"></p><p>回答审核</p>
              <p></p></li>
            <li><span>2017-12-21</span></li>
            <li class="star_answer_action star-answer"  onclick="tips();" style="cursor:pointer;">
            <span>收藏：</span>
            <span class="starCount star-answer-num">0</span></li>
            <li class="like-answer"  onclick="tips();" style="cursor:pointer;">
            <span style="cursor:pointer;">点赞：</span>
            <span class="likeCount like-answer-num">1</span></li>
            <li id="report_one">
            <span  onclick="tips();" style="text-decoration: none;color:black;cursor:pointer;">举报</span></li></ul></div>
				</div>
			</div>       
		</div>
		<div style=" margin-top: 51px;">
			<p class="ques_content_three_p">我要回答</p>	
					<span style="float:left;line-height:40px;font-size:18px;margin:20px 0">请先</span>
					<div style="
							width:120px;
							height:40px;
							line-height:40px;
							text-align:center;
							float:left;
							margin:20px 10px;
							background:rgb(26,86,169)">
						<a href="webPages/jiedu/login.jsp" 
							style="
								width:100%;
								height:100%;
								color:#fff;
								text-decoration: none;
								font-weight:bold">登录</a>
					</div>
		</div>
	</div>
	</div>
	<div class="ex_ques_PopWinbg">
		<div class="ex_ques_PopWinContent">
			<form method="GET" id="sunmitTable">
				<table cellspacing="0" cellpadding="0">
					<tr>
						<td colspan="6">举报详细信息</td>
						<td><input type="hidden" name="target" id="target" style="height:0;width:0;"></td>
						<td><input type="hidden" name="targetId" id="targetId" style="height:0;width:0;"></td>
					</tr>
					<tr><td colspan="6" style="height:5px;"></td></tr>
					<tr>
						<td colspan="6">
						<textarea name="description"></textarea> 
						</td>
					</tr>
					<tr><td colspan="6"><button type="submit">提交</button></td></tr>
				</table>
			</form>
			<div class="ex_ques_Close_PopWin" onclick="closePopWin()"></div>
		</div>
	</div>
		<div class="ex_ques_PopWinbgdel">
			<div class="ex_ques_PopWinContentdel">
				<form method="POST" id="editQuestion">
					<input type="hidden" value="ques_1513737987706" name="id">
					<table cellspacing="0" cellpadding="0" style="height:330px;width:600px;">
						<tr>
							<td align="center" colspan="6">修改详细信息</td>
						</tr>
						<tr>
							<td style="width:50px;height:75px;">标题：</td>
							<td>
								<input type="text" value="想了解个人所得税流程" name="title" style="width:100%;height:45%;font-size:20px;">
							</td>
						</tr>
						<tr>
							<td style="width:50px;">内容：</td>
							<td>
								<textarea id="quescontent" name="content"><p>个人说的税是怎么计算的，流程是什么？</p></textarea> 
							</td>
						</tr>
					</table>
				</form>
				<div class="ex_ques_buttondel">
					<input class="fl" type="button" onclick="subEdit()" value="提交">
					<input class="fr" type="button" value="返回" onclick="closePopWindel()">
				</div>
				<div class="ex_ques_Close_PopWindel" onclick="closePopWindel()"></div>
			</div>
		</div>
</body>

<body>
	<div class="zixun_footers" id="footer">
		<div class="zixun_footers_content">
			<ul class="bottom_choice">
				<li><a href="webPages/zixun/UseKnow.jsp" target="_blank">使用须知</a></li>
				<li><a href="webPages/zixun/UseHelp.jsp" target="_blank">网站帮助</a></li>
				<li><a href="webPages/zixun/ContactUs.jsp" target="_blank">联系我们</a></li>
			</ul>
			<ul>
				
				<li>安徽省国家税务局主办 ICP备案号********</li>
				 <li>技术服务由科大讯飞股份有限公司提供</li> 
				<li>通讯地址：合肥市包河区中山路3398号 联系电话：0551-12366</li>
			</ul>
		</div>
	</div>
</body>
</html>
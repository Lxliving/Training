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
<link rel="stylesheet" type="text/css" href="css/woyaozixun.css" />
<link rel="stylesheet" type="text/css" href="css/bottom.css" />
<script type="text/javascript" src="js/jquery-2.2.3.min.js"></script> 
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
	<div class="content">
		<div class="content_main">
			<div class="content_top">我要咨询</div>
			<div class="gary">
				<div class="pink"></div>
			</div>
			<div class="content_middle">
				<form id="consultingShareForm" method="post" onsubmit="return save();" action="">
					<div>
						<div>
							<input type="text" name="userId" id="userId" hidden="true">
						</div>
						<div>
							<input type="text" name="status" id="status" hidden="true">
						</div>
						<div>
							<input type="text" name="browseCount" id="browseCount" hidden="true">
						</div>
						
						<div class="content_middle_one">
							<span>选择类型:</span>
							<select id="category" name="category" onchange="selectCategory();">
		   						 <option value="0">普通提问</option>
		   						 <option value="1">悬赏提问</option>
							</select> 
							<span style="margin-left: 33px;">悬赏金额:</span>
							<select name="rewardAmount" id="rewardAmount">
								<option value="" disabled selected>自选积分金额</option>
								 <option value="1">1</option>
		   						 <option value="3">3</option>
		   						 <option value="5">5</option>
							</select>
						</div>
						
						<div class="content_middle_two">
							<div class="select_f">
								<span>选择专业分类:</span>
							</div>
							<div class="select_btn">
							<ul>
								
									<label><input type="checkbox" class="major_item" onclick="selectedMajor();" name="majorCategory" value="040001">发票系统故障及操作指导</label>
								
									<label><input type="checkbox" class="major_item" onclick="selectedMajor();" name="majorCategory" value="040002">发票领购</label>
								
									<label><input type="checkbox" class="major_item" onclick="selectedMajor();" name="majorCategory" value="040003">发票代开</label>
								
									<label><input type="checkbox" class="major_item" onclick="selectedMajor();" name="majorCategory" value="040004">发票开具</label>
								
									<label><input type="checkbox" class="major_item" onclick="selectedMajor();" name="majorCategory" value="040005">红字增值税发票开具</label>
								
									<label><input type="checkbox" class="major_item" onclick="selectedMajor();" name="majorCategory" value="040006">申报有误能否作废</label>
								
									<label><input type="checkbox" class="major_item" onclick="selectedMajor();" name="majorCategory" value="040007">一般纳税人资格</label>
								
									<label><input type="checkbox" class="major_item" onclick="selectedMajor();" name="majorCategory" value="040008">辅导期一般纳税人</label>
								
									<label><input type="checkbox" class="major_item" onclick="selectedMajor();" name="majorCategory" value="040009">专用发票认证抵扣</label>
								
									<label><input type="checkbox" class="major_item" onclick="selectedMajor();" name="majorCategory" value="040010">小规模纳税人增值税起征点是否有调整</label>
								
									<label><input type="checkbox" class="major_item" onclick="selectedMajor();" name="majorCategory" value="040011">认定为一般纳税人之后是否可以转为小规模纳税人</label>
								
									<label><input type="checkbox" class="major_item" onclick="selectedMajor();" name="majorCategory" value="040012">小规模纳税人自行开具的增值税专用发票如何填写申报表</label>
								
									<label><input type="checkbox" class="major_item" onclick="selectedMajor();" name="majorCategory" value="040013">注销登记</label>
								
									<label><input type="checkbox" class="major_item" onclick="selectedMajor();" name="majorCategory" value="040014">发票检查</label>
								
									<label><input type="checkbox" class="major_item" onclick="selectedMajor();" name="majorCategory" value="040015">专用发票丢失</label>
								
									<label><input type="checkbox" class="major_item" onclick="selectedMajor();" name="majorCategory" value="040016">征收率</label>
								
									<label><input type="checkbox" class="major_item" onclick="selectedMajor();" name="majorCategory" value="040017">非国税业务</label>
								
									<label><input type="checkbox" class="major_item" onclick="selectedMajor();" name="majorCategory" value="040018">信用等级</label>
								
									<label><input type="checkbox" class="major_item" onclick="selectedMajor();" name="majorCategory" value="040019">营改增</label>
								
									<label><input type="checkbox" class="major_item" onclick="selectedMajor();" name="majorCategory" value="040020">金税管理</label>
								
									<label><input type="checkbox" class="major_item" onclick="selectedMajor();" name="majorCategory" value="040021">进出口税收</label>
								
									<label><input type="checkbox" class="major_item" onclick="selectedMajor();" name="majorCategory" value="040022">征收管理</label>
								
									<label><input type="checkbox" class="major_item" onclick="selectedMajor();" name="majorCategory" value="040023">发票保管</label>
								
							</ul>
							</div>
						</div>
						<div style="clear: both;"></div>
						<div style="clear: both;"></div> 
						<div class="content_middle_three">
							<span>邀请回答:</span>
							<div class="Org fr" style="margin-top: -18px;" id="org">
								<div class="clearfix">
									<div class="ordinary fl">普通用户:</div>
									<div id="ordinary" class="ordinaryone fl"></div>
								</div>
								<div class="clearfix">
									<div class="expert fl">专家用户:</div>
									<div id="expert" class="expertone fl"></div>
								</div>
								<div class="clearfix">
									<div class="institution fl">机构用户:</div>
									<div id="institution" class="institutionone fl"></div>
								</div>
							</div>	
							<div style="clear: both;"></div>
						</div>
						<!-- 标题 -->
						<div class="add_title clearfix">
							<div class="title_one fl" style="margin-top:20px;font-size:18px;">标&emsp;&emsp;题:</div>
							<input name="title" id="title" class="title_input fl"/>
						</div>
						<div class="add_content clearfix">
							<div class="text_area">
								<!-- <textarea name="content" id="content" class="fl" style="height:180px;"></textarea> -->
								<textarea name="content" id="editor" class="fl"  cols="30" rows="10"></textarea>
							</div>
						</div>
						<div class="sub">
							<input type="submit" value="提交" class="button_submit pr">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	
	
	
	
	
	
</body>
</html>
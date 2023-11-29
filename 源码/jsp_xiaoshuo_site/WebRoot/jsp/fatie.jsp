<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <title>发表小说</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="pragma" content="no-cache"><!-- HTTP1.0-->
	<meta http-equiv="cache-control" content="no-cache"><!-- HTTP1.1-->
	<meta http-equiv="expires" content="0"> 
    <link href="/xiaoshuo_site/editor/themes/default/_css/umeditor.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="/xiaoshuo_site/editor/third-party/jquery.min.js"></script>
    <script type="text/javascript" src="/xiaoshuo_site/editor/third-party/template.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="/xiaoshuo_site/editor/umeditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="/xiaoshuo_site/editor/editor_api.js"></script>
    <script type="text/javascript" src="/xiaoshuo_site/editor/lang/zh-cn/zh-cn.js"></script>
  	<link rel="stylesheet" type="text/css" href="/xiaoshuo_site/css/fatie.css">
</head>
<body>
<div id="header">
		<div class="header_wrap center">
			<div class="left">
				<ul>
					<li><a href="/xiaoshuo_site/jsp/main.jsp" class="logo">小说网</a></li>
				</ul>
			</div>
			<div class="right">
			    <form action="/xiaoshuo_site/jsp/result.jsp" method="get">
				   <input type="submit" value="搜索">
				   <input name="keyword" placeholder="搜索..." type="text">
				</form>
			</div>
		</div>
	</div>
<div id="content" class="center">
		<div class="title">
			<p>
				<ul>
					<li><a href="/xiaoshuo_site/jsp/userinfo.jsp"><img width="80px" height="80px" src="/xiaoshuo_site/images/${sessionScope['user'].getUser_icon()}"></a></li>
					<li><a href="/xiaoshuo_site/jsp/userinfo.jsp">${sessionScope['user'].getNickname()}</a><span>
					<%
					   Date now=new Date();
					   SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
		    		   String date=dateFormat.format(now);
					  out.print(date); 
					 %></span></li>
					<li><a href="/xiaoshuo_site/jsp/main.jsp">返回首页</a></li>
				</ul>
			<div class="title_tab"><p><b>发小说</b></p></div>
			<div class="theme">
				<span>选择主题分类</span>
				<select id="postType">
					<option value="言情小说">言情小说</option>
					<option value="玄幻小说">玄幻小说</option>
					<option value="经典小说">经典小说</option>
					<option value="短篇小说">短篇小说</option>
					<option value="长篇小说">长篇小说</option>
					<option value="其他">其他</option>
				</select>
				<span>标题：</span><input id="postTitle" type="text">
				<span id="counter">还可以输入40个字</span>
		    </div>
		</div>
		<script type="text/plain" id="editor" style="width:1000px;height:360px;">
        </script>
    	<p class="content_ft"><input id="sub" type="button" value="提交" class="button"></p>
    	<script type="text/javascript" src="/xiaoshuo_site/javascript/fatie.js" charset="utf-8"></script>
</div>
<div id="footer">
		<div class="foot_wrap center">
		<ul>
			<li><span>版本1.0</span></li>
			<li><a href="#">关于作者</a></li>
			<li><a href="#">支持作者</a></li>
			<li><a href="#">联系作者</a></li>
			<li><a href="#">意见反馈</a></li>
			<li><a href="#">帮助中心</a></li>
		</ul>
		<p>Copyright © 2019 小说网 All rights reserved.</p>
	 </div>
</div>
</body>
</html>
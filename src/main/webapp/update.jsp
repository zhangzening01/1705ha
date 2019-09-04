<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/css.css"/>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
  $(function(){
	  $.post("toup.do",{"mid":"${param.mid}"},function(data){
		  $("#mname").val(data.mname);
		  $("#mas").val(data.mas);
		  $("#dao").val(data.dao);
		  for(var i in data.tid){
			  $("[name='tid' value='"+data.tid[i]+"']:checked").map("checked",true);
		  }
		  $("#sdate").val(data.sdate);
	  },"json")
  })
</script>
</head>
<body>
  <form>
    <input type="hidden" name="mid" value="${param.mid }">
     电影名称：<input type="text" name="mname" id="mname"><br>
     剧情介绍：<input type="text" name="mas" id="mas"><br>
     导演：<input type="text" name="dao" id="dao"><br>
  电影分类：<input type="checkbox" value="1" name="tid" id="tid" checked="checked">动作  
  <input type="checkbox" value="2" name="tid" id="tid" checked="checked">喜剧 
  <input type="checkbox" value="3" name="tid" id="tid">爱情 
  <input type="checkbox" value="4" name="tid" id="tid">动画 
  <input type="checkbox" value="5" name="tid" id="tid">剧情 <br>
  发行时间：<input type="date" name="sdate" id="sdate"><br>
  <input type="button" value="修改" onclick="update()">
   </form>
</body>
<script type="text/javascript">
 function update(){
	 $.post("update.do",$("form").serialize(),function(data){
		 if(data){
			 alert("修改成功")
			 location.href="findAll.do"
		 }
		 
	 },"json")
 }
</script>
</html>
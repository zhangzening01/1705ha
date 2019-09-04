<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/css.css"/>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<title>Insert title here</title>
</head>
<body>
   <form>
     电影名称：<input type="text" name="mname"><br>
     剧情介绍：<input type="text" name="mas"><br>
     导演：<input type="text" name="dao"><br>
  电影分类：<input type="checkbox" value="1" name="tid">动作  
  <input type="checkbox" value="2" name="tid">喜剧 
  <input type="checkbox" value="3" name="tid">爱情 
  <input type="checkbox" value="4" name="tid">动画 
  <input type="checkbox" value="5" name="tid">剧情 <br>
  发行时间：<input type="date" name="sdate"><br>
  <input type="button" value="添加" onclick="save()">
   </form>
</body>
<script type="text/javascript">
 function save(){
	 $.post("save.do",$("form").serialize(),function(data){
		 if(data){
			 alert("添加成功 ")
			 location.href="findAll.do"
		 }else{
			 alert("添加失败，未填写发行时间")
		 }
	 },"json")
 }
</script>
</html>
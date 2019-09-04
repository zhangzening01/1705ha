<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/css.css"/>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<form action="findAll.do" method="post">
   电影名称：<input type="text" name="mname">
   <input type="submit" value="查询">  <a href="save.jsp"><input type="button" value="添加"></a><input type="button" value="批量删除" onclick="pl()">
</form>
   <form>
     <table>
        <tr>
           <td><input type="checkbox" value="" onclick="qx()">全选<input type="checkbox" value="" onclick="fx()">反选<input type="checkbox" value="" onclick="qbx()">全不选 </td>
           <td>序号</td>
           <td>电影名称</td>
           <td>剧情介绍</td>
           <td>导演</td>
           <td>电影分类</td>
           <td>发行时间</td>
           <td>操作</td>
        </tr>
        <c:forEach items="${page.list }" var="l">
           <tr>
              <td><input type="checkbox" name="mid" value="${l.mid }"></td>
              <td>${l.mid }</td>
              <td>${l.mname }</td>
              <td>${l.mas }</td>
              <td>${l.dao }</td>
              <td>${l.tname }</td>
              <td>${l.sdate }</td>
              <td>删除 <a href="update.jsp?mid=${l.mid }"><input type="button" value="修改"></a></td>
           </tr>
        </c:forEach>
          <tr>
             <td colspan="10">
               <a href="?pageNum=${page.pageNum-1<1?page.pageNum:page.pageNum-1 }">上一页</a>
               <a href="?pageNum=${page.pageNum+1>page.pages?page.pageNum:page.pageNum+1 }">下一页</a>
               <a></a>
             </td>
          </tr>
     </table>
   </form>
</body>
<script type="text/javascript">
   function pl(){
	   var mid = $("[name='mid']:checked").map(function(){
		   return $(this).val();
	   }).get().join(",")
	   alert(mid);
	   
	   $.post("delAll.do",{"mid":mid},function(data){
		   if(data){
			   alert("删除成功")
			   location.href="findAll.do"
		   }
	   },"json")
	   
   }
   function qx(){
	   $("[name='mid']").prop("checked",true);
   }
   function fx(){
	   $("[name='mid']:checked").prop("checked",false);
   }
   function qbx(){
	   $("[name='mid']").prop("checked",false);
   }
</script>
</html>
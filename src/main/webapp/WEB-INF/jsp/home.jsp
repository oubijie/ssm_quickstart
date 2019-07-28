<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>XX管理系统</title>
    <link rel="stylesheet" type="text/css" href="${ctx }/static/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="${ctx }/static/easyui/themes/icon.css">
    <script type="text/javascript" src="${ctx }/static/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="${ctx }/static/easyui/jquery.easyui.min.js"></script>
</head>
<body>
    <div class="easyui-layout" data-options="fit:true">
        <div data-options="region:'north'" style="height:100px">
            XX管理系统，logo
        </div>
        <div data-options="region:'south'" style="height:50px;">
                            版权所有@2019
        </div>
        <div id="sm" title="系统功能列表" style="width:300px;"
                data-options="region:'west',split:true,border:false" ></div>
        <div id="tt" class="easyui-tabs" data-options="region:'center',iconCls:'icon-ok'">
            
        </div>
    </div>
 
 <script type="text/javascript">
 $(function(){
	 $("#sm").tree({
         url: "sidemenu",
         onClick:function(node){
        	 if(node.action){
        		 var title = node.text;
        		 var tab = $("#tt").tabs("getTab", title);
        		 if(tab){
        			 $("#tt").tabs("select", title);
        		 }else{
        			 $('#tt').tabs('add',{
                         title: node.text,
                         content: '<div class="easyui-panel" fit="true" href="'+node.action+'"></div>',
                         closable: true
                     });
        		 }
        	 }
         }
     });
 })
 
 
 </script>
</body>
</html>
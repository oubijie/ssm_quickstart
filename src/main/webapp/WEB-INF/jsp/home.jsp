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
        <div id="sm" class="easyui-sidemenu"
                title="系统功能列表" style="width:300px;"
                data-options="region:'west',split:true,data:data" ></div>
        <div class="easyui-tabs" data-options="region:'center',iconCls:'icon-ok'">
            
        </div>
    </div>
 
 <script type="text/javascript" src="${ctx }/sidemenu"></script>
 <script type="text/javascript" >
        /* var data = [{
            text: '系统管理',
            iconCls: 'icon-sum',
            children: [{
                text: '用户管理'
            },{
                text: '角色管理'
            },{
                text: '菜单管理',
            }]
        },{
            text: '博客管理',
            iconCls: 'icon-sum',
            children: [{
                text: '文章管理'
            },{
                text: '分类管理'
            },{
                text: '评论管理'
            }]
        }]; */
 
       /*  function toggle(){
            var opts = $('#sm').sidemenu('options');
            $('#sm').sidemenu(opts.collapsed ? 'expand' : 'collapse');
            opts = $('#sm').sidemenu('options');
            $('#sm').sidemenu('resize', {
                width: opts.collapsed ? 60 : 200
            })
        } */
    </script>
    
</body>
</html>
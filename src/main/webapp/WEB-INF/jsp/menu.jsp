<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<body>
<table id="dg" title="My Users" class="easyui-datagrid" 
        url="${ctx }/menu/list"
        toolbar="#toolbar" pagination="true"
        fitColumns="true" singleSelect="true" data-options="fit:true,rownumbers:true">
    <thead>
        <tr>
            <th field="text" width="50">菜单名</th>
            <th field="iconCls" width="50">图标</th>
            <th field="parentId" width="50">父菜单ID</th>
            <th field="action" width="50">菜单链接地址</th>
        </tr>
    </thead>
</table>
<div id="toolbar">
    <a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newUser()">New User</a>
    <a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()">Edit User</a>
    <a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyUser()">Remove User</a>
</div>

</body>
</html>
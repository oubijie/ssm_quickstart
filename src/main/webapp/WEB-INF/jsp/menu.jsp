<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<body>
<table id="dg" class="easyui-datagrid" 
        url="${ctx }/menu/list"
        toolbar="#toolbar" pagination="true"
        singleSelect="true" data-options="fit:true,rownumbers:true,fitColumns:true,singleSelect:true">
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
    <a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newItem()">新建</a>
    <a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="edit()">编辑</a>
    <a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyItem()">删除</a>
</div>

<div id="dlg" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px"
        closed="true" buttons="#dlg-buttons">
    <div class="ftitle">User Information</div>
    <form id="fm" method="post">
        <div class="fitem">
            <label>First Name:</label>
            <input name="firstname" class="easyui-validatebox" required="true">
        </div>
        <div class="fitem">
            <label>Last Name:</label>
            <input name="lastname" class="easyui-validatebox" required="true">
        </div>
        <div class="fitem">
            <label>Phone:</label>
            <input name="phone">
        </div>
        <div class="fitem">
            <label>Email:</label>
            <input name="email" class="easyui-validatebox" validType="email">
        </div>
    </form>
</div>
<div id="dlg-buttons">
    <a href="#" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveUser()">Save</a>
    <a href="#" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">Cancel</a>
</div>

<script type="text/javascript">
function newItem(){
    $('#dlg').dialog('open').dialog('setTitle','新建');
    $('#fm').form('clear');
    url = 'save_user.php';
}

function destroyItem(){
    var row = $('#dg').datagrid('getSelected');
    if (row){
        $.messager.confirm('Confirm','是否确定要删除?',function(r){
            if (r){
                $.post('${ctx }/menu/delete',{id:row.id},function(result){
                    if (result.success){
                        $('#dg').datagrid('reload');    // reload the user data
                        $.messager.show({
                            title: '消息',
                            msg: '删除成功！'
                        });
                    } else {
                        $.messager.show({   // show error message
                            title: '错误',
                            msg: result.errorMsg
                        });
                    }
                },'json');
            }
        });
    }else{
    	$.messager.alert('提示','请先选择一行！','warning');
    }
}
</script>

</body>
</html>
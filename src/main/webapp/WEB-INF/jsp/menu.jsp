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
    <a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newMenu()">新建</a>
    <a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editMenu()">编辑</a>
    <a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="deleteMenu()">删除</a>
</div>

<div id="dlg" class="easyui-dialog" style="width:400px" data-options="closed:true,modal:true,border:'thin',buttons:'#dlg-buttons'">
    <form id="fm" method="post" novalidate style="margin:0;padding:20px 50px">
        <h3>菜单信息</h3>
        <div style="margin-bottom:10px">
            <input name="menuName" class="easyui-textbox" required="true" label="First Name:" style="width:100%">
        </div>
        <div style="margin-bottom:10px">
            <input name="lastname" class="easyui-textbox" required="true" label="Last Name:" style="width:100%">
        </div>
        <div style="margin-bottom:10px">
            <input name="phone" class="easyui-textbox" required="true" label="Phone:" style="width:100%">
        </div>
        <div style="margin-bottom:10px">
            <input name="email" class="easyui-textbox" required="true" validType="email" label="Email:" style="width:100%">
        </div>
    </form>
</div>
<div id="dlg-buttons">
    <a href="javascript:void(0)" class="easyui-linkbutton c6" iconCls="icon-ok" onclick="saveUser()" style="width:90px">Save</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')" style="width:90px">Cancel</a>
</div>

<script type="text/javascript">
function newMenu(){
    $('#dlg').dialog('open').dialog('setTitle','新建');
    $('#fm').form('clear');
    url = 'save_user.php';
}

function deleteMenu(){
    var row = $('#dg').datagrid('getSelected');
    if (row){
        $.messager.confirm('删除确认','是否确定要删除?',function(r){
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
                            msg: '删除失败' + result.errorMsg
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
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript">
    var userDataGrid;
    var organizationTree;

    $(function() {
     

        userDataGrid = $('#DataGrid').datagrid({
            url : '${path }/generator/list',
            fit : true,
            striped : true,
            rownumbers : true,
            pagination : true,
            singleSelect : true,
            idField : 'tableName',
            sortName : 'createTime',
	        sortOrder : 'asc',
            pageSize : 20,
            pageList : [ 10, 20, 30, 40, 50, 100, 200, 300, 400, 500 ],
            columns : [ [ {
                width : '80',
                title : '表名',
                field : 'tableName',
                sortable : true
            }, {
                width : '80',
                title : '数据库引擎',
                field : 'engine',
                sortable : true
            },{
                width : '130',
                title : '创建时间',
                field : 'createTime',
                sortable : true
            }, {
                width : '130',
                title : '表备注',
                field : 'tableName',
                sortable : true
            }, {
                field : 'action',
                title : '操作',
                width : 200,
                formatter : function(value, row, index) {
                    var str = '';
                        <shiro:hasPermission name="/role/grant">
                            str += $.formatString('<a href="javascript:void(0)" class="role-easyui-linkbutton-ok" data-options="plain:true,iconCls:\'fi-check icon-green\'" onclick="grantRoleFun(\'{0}\');" >生成代码</a>', row.tableName);
                        </shiro:hasPermission>
                    return str;
                }
            } ] ],
            onLoadSuccess:function(data){
                $('.role-easyui-linkbutton-ok').linkbutton({text:'生成代码'});
              
            },
        });      
       
    });
    
    
    function grantRoleFun(id) {
        alert(id);
    }
 
 
</script>
<div class="easyui-layout" data-options="fit:true,border:false">
   
    <div data-options="region:'center',border:true,title:'数据库表'" >
        <table id="DataGrid" data-options="fit:true,border:false"></table>
    </div>
   
</div>

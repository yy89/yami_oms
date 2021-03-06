<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="lib/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="lib/themes/icon.css">
    <script type="text/javascript" src="lib/jquery.min.js"></script>
    <script type="text/javascript" src="lib/jquery.easyui.min.js"></script>
    <title>丫米管理后台</title>
</head>
<body class="easyui-layout">
<%
    boolean isLogin = session.getAttribute("login")==null?false:true;
    if(isLogin==false){
        response.setStatus(HttpServletResponse.SC_MOVED_PERMANENTLY);
        String newLocn = "login.jsp";
        response.setHeader("Location",newLocn);
    }
%>
<!-- 正上方panel -->
<div region="north" style="height:20px;padding:10px;" href="page/top.html"></div>
<!-- 正左边panel -->
<div region="west" title="菜单栏" split="true" style="width:280px;padding1:1px;overflow:hidden;">
    <div class="easyui-accordion" fit="true" border="false">
        <!-- selected -->
        <div title="商户管理"  data-options="iconCls:'icon-search'" style="padding:10px;">
            <ul  class="easyui-tree" id="home_tree" data-options="url:'conf/tree.json'"/>
        </div>
    </div>
</div>
<!-- 正中间panel -->
<div region="center" title="功能区" >
    <div class="easyui-tabs" id="centerTab" fit="true" border="false">
        <div title="欢迎页" style="padding:20px;overflow:hidden;">
            <div style="margin-top:20px;">
                <h3>你好，欢迎来到权限管理系统</h3>
            </div>
        </div>
    </div>
</div>
<!-- 正下方panel -->
<div region="south" style="height:50px;" align="center">
    <label>
        作者：小不点<br/>
        更新时间：2015-5-25
    </label>
</div>

<script type="text/javascript" src="backres/js/index.js"></script>
</body>
</html>
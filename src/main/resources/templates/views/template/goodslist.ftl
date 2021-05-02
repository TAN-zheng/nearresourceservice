<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>商品列表</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${request.contextPath}/static/layuiadmin/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${request.contextPath}/static/layuiadmin/style/admin.css" media="all">
    <link rel="stylesheet" href="${request.contextPath}/static/layuiadmin/style/template.css" media="all">
</head>
<body>
<#--搜索头部-->
<form class="layui-form" action="">
    <div style="margin-top: 20px">
        <div class="layui-form-item">
            <label class="layui-form-label">资源名称</label>
            <div class="layui-input-inline">
                <input type="text" name="resourcename" lay-verify="required"
                       autocomplete="off" class="layui-input">
            </div>
            <label class="layui-form-label">参与方式</label>
            <div class="layui-input-inline">
                <input type="text" name="pattern" lay-verify="required"
                       placeholder="请输入" autocomplete="off" class="layui-input">
            </div>
            <label class="layui-form-label">费用</label>
            <div class="layui-input-inline">
                <input type="text" name="price" lay-verify="required"
                       placeholder="请输入" autocomplete="off" class="layui-input">
            </div>
            <label class="layui-form-label">类型</label>
            <div class="layui-input-inline">
                <input type="text" name="type" lay-verify="required"
                       placeholder="请输入" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-row layui-col-space10">
        <div class="layui-col-md4 layui-col-md-offset4">
            <button type="button" id="search" class="layui-btn layui-btn-normal">查询</button>
            <button type="button" id="reset" class="layui-btn layui-btn-warm">清空</button>
        </div>
    </div>
</form>
<#--表格数据的容器-->
<table class="layui-hide" id="test" lay-filter="test"></table>
<#--图片展示的内容-->
<div class="layui-fluid layadmin-cmdlist-fluid">
    <div class="layui-row layui-col-space30">
        <div class="layui-col-md2 layui-col-sm4" id="imgshow">
            <div class="cmdlist-container">
                <a href="javascript:;">
                    <img src="${request.contextPath}/static/layuiadmin/style/res/template/portrait.png">
                </a>
                <a href="javascript:;">
                    <div class="cmdlist-text">
                        <p class="info">2018春夏季新款港味短款白色T恤+网纱中长款chic半身裙套装两件套</p>
                        <div class="price">
                            <b>￥79</b>
                            <p>
                                ¥
                                <del>130</del>
                            </p>
                            <span class="flow">
                      <i class="layui-icon layui-icon-rate"></i>
                      433
                    </span>
                        </div>
                    </div>
                </a>
            </div>
        </div>

    </div>
</div>

<script type="text/html" id="bar">
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script src="${request.contextPath}/static/layuiadmin/layui/layui.js"></script>
<script>
    layui.config({
        base: '${request.contextPath}/static/layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index']);
    layui.use(['laypage', 'layer','jquery','table'], function () {
        var table = layui.table;
        //引入layui内部的jquery后需要定义的变量。
        var $ = layui.$;
        //关闭子页面的变量申明
        var layer = layui.layer;
        //定义了一个全局变量。
        var layerIndex = '';
        table.render({
            elem: '#test'
            , url: '${request.contextPath}/getGoodsList'
            , method: 'post'
            , contentType: 'application/json'
            // , toolbar: '#toolbarDemo' //开启头部工具栏，并为其绑定左侧模板
            , defaultToolbar: ['filter', 'exports', 'print', { //自定义头部工具栏右侧图标。如无需自定义，去除该参数即可
                title: '提示'
                , layEvent: 'LAYTABLE_TIPS'
                , icon: 'layui-icon-tips'
            }]
            , title: '用户数据表'
            , cols: [[
                {type: 'checkbox', fixed: 'left'}
                , {field: 'id', title: 'ID', width: 80, fixed: 'left', unresize: true, sort: true}
                , {field: 'resourcename', title: '资源名', width: 120, edit: 'text'}
                // ,{field:'src', title:'例图展示', width:120, template:'#imgshow'}
                , {field: 'sponsorid', title: '发起人id', width: 100}
                , {field: 'description', title: '描述'}
                , {field: 'number', title: '数量', width: 80, sort: true}
                , {field: 'type', title: '类型', width: 120}
                , {field: 'price', title: '价格', width: 100, sort: true}
                , {field: 'pattern', title: '参与方式', width: 120}
                , {field: 'state', title: '状态', width: 120}
                , {field: 'contact', title: '联系方式', width: 120}
                , {fixed: 'right', title: '操作', toolbar: '#bar', width: 150}
            ]]
            , page: true
        });

        //头工具栏事件
        table.on('toolbar(test)', function (obj) {
            var checkStatus = table.checkStatus(obj.config.id);
            switch (obj.event) {
                case 'getCheckData':
                    var data = checkStatus.data;
                    layer.alert(JSON.stringify(data));
                    break;
                case 'getCheckLength':
                    var data = checkStatus.data;
                    layer.msg('选中了：' + data.length + ' 个');
                    break;
                case 'isAll':
                    layer.msg(checkStatus.isAll ? '全选' : '未全选');
                    break;

                //自定义头工具栏右侧图标 - 提示
                case 'LAYTABLE_TIPS':
                    layer.alert('这是工具栏右侧自定义的一个图标按钮');
                    break;
            }
            ;
        });

        //监听行工具事件
        table.on('tool(test)', function (obj) {
            var data = obj.data;
            //console.log(obj)
            if (obj.event === 'del') {
                layer.confirm('真的删除行么', function (index) {
                    obj.del();
                    layer.close(index);
                });
            } else if (obj.event === 'edit') {
                layer.open({
                        type: 2,
                        shade: false,
                        area: '500px',
                        maxmin: true,
                        content: '${request.contextPath}/toMessage?id='+data.id,
                        zIndex: layer.zIndex, //重点1
                }
                , function (value, index) {
                    obj.update({
                        email: value
                    });
                    layer.close(index);
                });
            }
        });
        //    查询按钮
        $("#search").click(function () {
            var providername = $("input[name='resourcename']").val();
            var productcode = $("input[name='pattern']").val();
            var promitcode = $("input[name='price']").val();
            var type = $("input[name='type']").val();
            //       表格重载，点击查询后，需要对表格进行重新加载。
            table.reload("goods", {
                where: {
                    resourcename: resourcename,
                    type: type,
                    pattern: pattern,
                    price: price,
                }
            });
        });
        //    清空按钮
        $("#reset").click(function () {
            $("input[name='resourcename']").val("");
            $("input[name='pattern']").val("");
            $("input[name='price']").val("");
            $("input[name='type']").val("");
        });
    });
</script>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>添加商品</title>
    <link rel="stylesheet" href="${request.contextPath}/static/layuiadmin/layui/css/layui.css" media="all">
</head>
<body style="background-color: #F2F2F2;">

<form class="layui-form" action="" enctype="multipart/form-data">
    <input type="text" name="id" value="${(resource.id)!}" style="display: none">
    <div class="layui-form-item">
        <label class="layui-form-label">资源名称</label>
        <div class="layui-input-inline">
            <input type="text" name="resourcename" value="${(resource.resourcename)}"
                   placeholder="请输入产地" autocomplete="off"
                   class="layui-input">
        </div>
        <label class="layui-form-label">价格</label>
        <div class="layui-input-inline">
            <input type="text" name="price" value="${(resource.price)}"
                   placeholder="请输入包装" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">数量</label>
        <div class="layui-input-inline">
            <input type="text" name="number" value="${(resource.number)}"
                   placeholder="请输入规格" autocomplete="off"
                   class="layui-input">
        </div>
        <label class="layui-form-label">描述</label>
        <div class="layui-input-inline">
            <input type="text" name="description" value="${(resource.description)}"
                   placeholder="请输入生产批号" autocomplete="off"
                   class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">类型</label>
        <div class="layui-input-inline">
            <input type="text" name="type" value="${(resource.type)}"
                   placeholder="请输入批准文号" autocomplete="off"
                   class="layui-input">
        </div>
        <label class="layui-form-label">资源提供方式</label>
        <div class="layui-input-inline">
            <input type="text" name="pattern" value="${(resource.pattern)}"
                   placeholder="请输入销售价格" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">状态</label>
        <div class="layui-input-inline">
            <input type="text" name="state" value="${(resource.state)}"
                   placeholder="请输入库存量" autocomplete="off"
                   class="layui-input">
        </div>
        <label class="layui-form-label">联系方式</label>
        <div class="layui-input-inline">
            <input type="text" name="contact" value="${(resource.contact)}"
                   placeholder="请输入库存预警值" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">提供时间</label>
        <div class="layui-input-inline">
            <input type="text" name="time" value="${(resource.time)}"
                   placeholder="请输入库存预警值" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="submit" style="display: none">立即提交</button>
        </div>
    </div>
</form>
<#--导入JS-->
<script src="${request.contextPath}/static/layuiadmin/layui/layui.js"></script>
<script>
    <#--    layui的标准文档查询-->
    layui.use(['form', 'jquery', 'layer', 'upload'], function () {
        //申明使用标准
        var form = layui.form;
        //申明jquery的使用。
        var $ = layui.$;
        //申明弹出层的变量
        var layer = layui.layer;
        //上传文件
        var upload = layui.upload;
        /*
        * form语句，
        *   1、'submit(submit)'
        *       （1）'submit()'：监听提交按钮，(submit)是filter。只要能对应上按钮的设置，就能触发回调函数。
        * */
        form.on('submit(submit)', function (data) {
            // console.log("layer表单的对象："+data.field);
            /*
            * 1、作用：提交iframe弹出层的表单。
            * 2、ajax格式：$.ajax({})
            * */
            //利用ajax提交数据。特点：不刷新整个页面，局部刷新提交数据。
            $.ajax({
                type: "POST",
                //传递给controller层
                url: "${request.contextPath}/changePersonalOrdersAboutState",
                contentType: 'application/json; charset=UTF-8',
                //字符串转换，设置字符集
                data: JSON.stringify(data.field),
                success: function (res) {
                    //controller的返回值都会存到res里面。
                    console.log("=====success=====")
                    console.log(res)
                    /*
                    * res.msg提示信息
                    * {icon: 1}：显示正确，还是错误（提示信息）
                    * */
                    layer.alert(res.msg, {icon: 1}, function () {
                        //调用父页面的关闭方法。
                        parent.closeLayer();
                        //重新加载页面,这个在个人页面配置了。在这调用会拿到数据。
                        parent.reloadOrdersList();
                    })
                },
                error: function (res) {
                    console.log(res);
                }
            })
            return false;
        });
        //执行上传图片实例
        //普通图片上传
        var uploadInst = upload.render({
            elem: '#img'
            , url: '${request.contextPath}/goods/goodsImg'
            , accept: 'images'//上传文件类型
            , size: 204800 //上传大小为200MB
            , before: function (obj) {
                //预读本地文件示例，不支持ie8
                obj.preview(function (index, file, result) {
                    $('#demo1').attr('src', result); //图片链接（base64）
                });
            }
            , done: function (res) {
                //如果上传失败
                if (res.code > 0) {
                    return layer.msg(res.msg);
                }
                //上传成功
                layer.msg(res.msg);
                $("#img_url").val(res.data);
                console.log($("#img_url").val());
            }
            , error: function () {
                //演示失败状态，并实现重传
                var demoText = $('#demoText');
                demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
                demoText.find('.demo-reload').on('click', function () {
                    uploadInst.upload();
                });
            }
        });

    });
</script>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>发布表单</title>
    <link rel="stylesheet" href="${request.contextPath}/static/layuiadmin/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${request.contextPath}/static/layuiadmin/style/admin.css" media="all">
    <link rel="stylesheet" href="${request.contextPath}/static/layuiadmin/style/template.css" media="all">
</head>
<body>
<form class="layui-form" action="" enctype="multipart/form-data">
    <div>
        <div style="float: left">
            <div class="layui-form-item">
                <label class="layui-form-label">类型</label>
                <div class="layui-input-block">
                    <#--                    <input type="text" name="providername" value="${(provider.providername)!}" required-->
                    <#--                           lay-verify="required" placeholder="请输入供应商名称"-->
                    <#--                           autocomplete="off" class="layui-input">-->
                    <select id="nrs_type" name="type" lay-filter="business" class="select">
                        <option value=""></option>
                        <option value="需求">需求</option>
                        <option value="服务">服务</option>
                        <option value="领域交流">领域交流</option>
                        <option value="其他服务">其他服务</option>
                    </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">名称</label>
                <div class="layui-input-block">
                    <input type="text" name="resourcename"
                           placeholder="请输入名称"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">描述</label>
                <div class="layui-input-block">
                    <input type="text" name="description"
                           placeholder="请输入描述"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-upload" style="margin-left: 50px">
                <button type="button" class="layui-btn" id="up_img">上传图片</button>
                <input type="hidden" id="img_url" name="imageurl" autocomplete="off" class="layui-input" value=""/>
                <div class="layui-upload-list">
                    <img class="layui-upload-img" width="200px" height="100px" id="demo1" src="">
                    <p id="demoText"></p>
                </div>
            </div>
        </div>
        <div class="layui-form-item">
        <label class="layui-form-label">提供时间</label>
        <div class="layui-input-inline">
            <input type="text" name="time"
                   placeholder="" autocomplete="off"
                   class="layui-input">
        </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">发起人</label>
            <div class="layui-input-inline">
                <input type="text" name="sponsorid"
                       placeholder="" autocomplete="off"
                       class="layui-input">
            </div>
            <label class="layui-form-label">设置参与人数</label>
            <div class="layui-input-inline">
                <input type="text" name="number"
                       placeholder="请输入人数" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">费用</label>
            <div class="layui-input-inline">
                <input type="text" name="price"
                       placeholder="请输入价格/免费分享" autocomplete="off"
                       class="layui-input">
            </div>
            <label class="layui-form-label">资源/服务提供方式</label>
            <div class="layui-input-inline">
                <input type="text" name="pattern"
                       placeholder="请输入生产批号" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">状态</label>
            <div class="layui-input-inline">
                <input type="text" name="state"
                       placeholder="编辑状态" autocomplete="off"
                       class="layui-input">
            </div>
            <label class="layui-form-label">联系方式</label>
            <div class="layui-input-inline">
                <input type="text" name="contact"
                       placeholder="请输入联系方式" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="submit" style="display: none">立即提交</button>
            </div>
        </div>
    </div>

</form>

<script src="${request.contextPath}/static/layuiadmin/layui/layui.js"></script>
<script>
    layui.use(['form', 'jquery', 'layer', 'upload','element'], function () {
        //申明使用标准
        var form = layui.form;
        //申明jquery的使用。
        var $ = layui.$;
        //申明弹出层的变量
        var layer = layui.layer;
        var element = layui.element;
        //上传文件
        var upload = layui.upload;
        /*
        * form语句，
        *   1、'submit(submit)'
        *       （1）'submit()'：监听提交按钮，(submit)是filter。只要能对应上按钮的设置，就能触发回调函数。
        * */
        form.on('submit(submit)', function (data) {
            console.log(data.field);
            /*
            * 1、作用：提交iframe弹出层的表单。
            * 2、ajax格式：$.ajax({})
            * */
            //利用ajax提交数据。特点：不刷新整个页面，局部刷新提交数据。
            $.ajax({
                type: "POST",
                //传递给controller层
                url: "${request.contextPath}/toAddResource",
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
                        //重新加载页面
                        parent.reloadGoodsList();
                    })
                },
                error: function (res) {
                    console.log(res);
                }
            })
            return false;
        });
        //常规使用 - 普通图片上传
        var uploadInst = upload.render({
            elem: '#up_img'
            ,url: '${request.contextPath}/fileUpload', //改成您自己的上传接口
            field:'uploadInst'
            ,before: function(obj){
                //预读本地文件示例，不支持ie8
                obj.preview(function(index, file, result){
                    $('#demo1').attr('src', result); //图片链接（base64）
                });

                element.progress('demo', '0%'); //进度条复位
                layer.msg('上传中', {icon: 16, time: 0});
            }
            ,done: function(res){
                //如果上传失败
                if(res.code > 0){
                    return layer.msg('上传失败');
                }
                //上传成功的一些操作
                console.log("上传成功了！")
                //……
                $('#demoText').html(''); //置空上传失败的状态
            }
            ,error: function(){
                //演示失败状态，并实现重传
                var demoText = $('#demoText');
                demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
                demoText.find('.demo-reload').on('click', function(){
                    uploadInst.upload();
                });
            }
            //进度条
            ,progress: function(n, index, e){
                element.progress('demo', n + '%'); //可配合 layui 进度条元素使用
                if(n == 100){
                    layer.msg('上传完毕', {icon: 1});
                }
            }
        });
    });
    <#--    layui的标准文档查询-->
</script>
</body>
</html>
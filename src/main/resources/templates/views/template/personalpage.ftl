<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>个人主页</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${request.contextPath}/static/layuiadmin/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${request.contextPath}/static/layuiadmin/style/admin.css" media="all">
    <link rel="stylesheet" href="${request.contextPath}/static/layuiadmin/style/template.css" media="all">
</head>
<body>


<div class="layui-fluid layadmin-homepage-fluid">
    <div class="layui-row layui-col-space8">
        <div class="layui-col-md2">
            <div class="layadmin-homepage-panel layadmin-homepage-shadow">
                <div class="layui-card text-center">
                    <div class="layui-card-body">
                        <div class="layadmin-homepage-pad-ver">
                            <img class="layadmin-homepage-pad-img"
                                 src="${request.contextPath}/static/layuiadmin/style/res/template/portrait.png"
                                 width="96" height="96">
                        </div>
                        <h4 class="layadmin-homepage-font">胡歌</h4>
                        <p class="layadmin-homepage-min-font">中国知名演员</p>
                        <div class="layadmin-homepage-pad-ver">
                            <a href="javascript:;" class="layui-icon layui-icon-cellphone"></a>
                            <a href="javascript:;" class="layui-icon layui-icon-vercode"></a>
                            <a href="javascript:;" class="layui-icon layui-icon-login-wechat"></a>
                            <a href="javascript:;" class="layui-icon layui-icon-login-qq"></a>
                        </div>
                        <button class="layui-btn layui-btn-fluid" onclick="release1()">发布</button>
                    </div>
                </div>
                <p class="layadmin-homepage-about">
                    关于我
                </p>
                <ul class="layadmin-homepage-list-group">
                    <li class="list-group-item"><i class="layui-icon layui-icon-location"></i>中国上海</li>
                    <li class="list-group-item"><a href="javascript:;" class="color"><i
                                    class="layui-icon layui-icon-snowflake"></i><span style="word-wrap:break-word;">https://weibo.com/hu_ge</span></a>
                    </li>
                </ul>
                <div class="layadmin-homepage-pad-hor">
                    <mdall>
                        胡歌喜欢摄影，也喜欢写字，他视角独特，充满着奇思妙想。他有着极丰富的情感，和对生活的热情，他能点燃观众心中爱的火焰；胡歌积极、乐观、坚强，他脚踏实地地做好每一件事，真诚地对待身边每一个人
                    </mdall>
                </div>
                <p class="layadmin-homepage-about">
                    技能
                </p>
                <ul class="layadmin-homepage-list-inline">
                    <a href="javascript:;" class="layui-btn layui-btn-primary">演员</a>
                    <a href="javascript:;" class="layui-btn layui-btn-primary">主持人</a>
                    <a href="javascript:;" class="layui-btn layui-btn-primary">摄影师</a>
                    <a href="javascript:;" class="layui-btn layui-btn-primary">导演</a>
                    <a href="javascript:;" class="layui-btn layui-btn-primary">公共人物</a>
                </ul>
            </div>
        </div>
        <div class="layui-col-md10">
            <div class="layui-fluid layadmin-homepage-content">
                <div class="layui-row  layadmin-homepage-padding15">
                    <hr class="new-section-xs"></hr>
                    <div class="layui-col-md7 layadmin-homepage-padding8">
                        <div class="layui-row layadmin-homepage-text-center">
                            <div class="layui-col-md3 layui-col-sm3 layui-col-xs3">
                                <p class="h4">52K</p>
                                <mdall>关注</mdall>
                            </div>
                            <div class="layui-col-md3 layui-col-sm3 layui-col-xs3">
                                <p class="h4">72K</p>
                                <mdall>以下</mdall>
                            </div>
                            <div class="layui-col-md3 layui-col-sm3 layui-col-xs3">
                                <p class="h4">5343</p>
                                <mdall>照片</mdall>
                            </div>
                            <div class="layui-col-md3 layui-col-sm3 layui-col-xs3">
                                <p class="h4"><i class="layui-icon layui-icon-rate-solid"></i>4.5</p>
                                <mdall>排行</mdall>
                            </div>
                        </div>
                    </div>
                    <div class="layui-col-md5">
                        <a href="javascript:;" class="layui-btn layui-btn-normal">下载简历</a>
                        <a href="javascript:;" class="layui-btn">发信息</a>
                    </div>
                </div>
                <div class="layui-row layui-col-space20 layadmin-homepage-list-imgtxt">
                    <div class="layui-col-md9">
                        <div class="grid-demo">
                            <div class="panel-body layadmin-homepage-shadow">
                                <a href="javascript:;" class="media-left">
                                    <img src="${request.contextPath}/static/layuiadmin/style/res/template/portrait.png"
                                         height="46px" width="46px">
                                </a>
                                <div class="media-body">
                                    <div class="pad-btm">
                                        <p class="fontColor"><a href="javascript:;">胡歌</a>为<span>普通照片</span>添加了新的<span>照片</span>
                                        </p>
                                        <p class="min-font">
                      <span class="layui-breadcrumb" lay-separator="-">
                        <a href="javascript:;" class="layui-icon layui-icon-cellphone"></a>
                        <a href="javascript:;">从移动</a>
                        <a href="javascript:;">11分钟前</a>
                      </span>
                                        </p>
                                    </div>
                                    <p>历经打磨，@索尼中国
                                        再献新作品—OLED电视A8F完美诞生。很开心一起参加了A8F的“首映礼”！[鼓掌]正如我们演员对舞台的热爱，索尼对科技与艺术的追求才创造出了让人惊喜的作品。作为A1兄弟款，A8F沿袭了黑科技“屏幕发声技术”和高清画质，色彩的出众表现和高端音质，让人在体验的时候如同身临其境。A8F，这次的“视帝”要颁发给你！
                                        索尼官网预售： O网页链接 索尼旗舰店预售：</p>
                                    <img class="h-img"
                                         src="${request.contextPath}/static/layuiadmin/style/res/template/huge.jpg">
                                    <div class="media">
                                        <div class="media-right">
                                            <ul class="list-inline">
                                                <li>
                                                    <i class="layui-icon layui-icon-camera-fill"></i>
                                                    <span>107</span>
                                                </li>
                                                <li>
                                                    <i class="layui-icon layui-icon-group"></i>
                                                    <span>95</span>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="media-left">
                                            <ul class="list-inline">
                                                <li>
                                                    <a href="javascript:;">
                                                        <img class="img-xs"
                                                             src="${request.contextPath}/static/layuiadmin/style/res/template/portrait.png">
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="javascript:;">
                                                        <img class="img-xs"
                                                             src="${request.contextPath}/static/layuiadmin/style/res/template/portrait.png">
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="javascript:;">
                                                        <img class="img-xs"
                                                             src="${request.contextPath}/static/layuiadmin/style/res/template/portrait.png">
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="javascript:;" class="">
                                                        14+
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-body layadmin-homepage-shadow">
                                <#--                    数据表格-->
                                <table class="layui-hide" id="personalOrders" lay-filter="personalOrders"></table>
                            </div>
                        </div>
                    </div>
                    <div class="layui-col-md3">
                        <div class="grid-demo">
                            <div class="layui-card homepage-top">
                                <div class="layui-card-header">
                                    <h3 class="panel-title">
                                        <i class="layui-icon layui-icon-picture"></i>
                                        画廊
                                    </h3>
                                </div>
                                <div class="layui-card-body">
                                    <div class="layui-row layui-col-space15">
                                        <div class="layui-col-md4">
                                            <img src="${request.contextPath}/static/layuiadmin/style/res/template/portrait.png">
                                        </div>
                                        <div class="layui-col-md4">
                                            <img src="${request.contextPath}/static/layuiadmin/style/res/template/portrait.png">
                                        </div>
                                        <div class="layui-col-md4">
                                            <img src="${request.contextPath}/static/layuiadmin/style/res/template/portrait.png">
                                        </div>
                                        <div class="layui-col-md4">
                                            <img src="${request.contextPath}/static/layuiadmin/style/res/template/portrait.png">
                                        </div>
                                        <div class="layui-col-md4">
                                            <img src="${request.contextPath}/static/layuiadmin/style/res/template/portrait.png">
                                        </div>
                                        <div class="layui-col-md4">
                                            <img src="${request.contextPath}/static/layuiadmin/style/res/template/portrait.png">
                                        </div>
                                        <div class="layui-col-md4">
                                            <img src="${request.contextPath}/static/layuiadmin/style/res/template/portrait.png">
                                        </div>
                                        <div class="layui-col-md4">
                                            <img src="${request.contextPath}/static/layuiadmin/style/res/template/portrait.png">
                                        </div>
                                        <div class="layui-col-md4">
                                            <img src="${request.contextPath}/static/layuiadmin/style/res/template/portrait.png">
                                        </div>
                                        <div class="layui-col-md12 margin-top10">
                                            <a href="javascript:;" class="layui-btn layui-btn-primary">更多</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="layui-card homepage-bottom">
                                <div class="layui-card-header">
                                    <h3 class="panel-title">
                                        <i class="layui-icon layui-icon-user"></i>
                                        私信
                                    </h3>
                                </div>
                                <div class="layui-card-body">
                                    <a href="javascript:;" class="layadmin-privateletterlist-item">
                                        <div class="meida-left">
                                            <img src="${request.contextPath}/static/layuiadmin/style/res/template/portrait.png">
                                        </div>
                                        <div class="meida-right">
                                            <p>Hugo</p>
                                            <mdall>人生是一场修行,不要轻易交白卷</mdall>
                                        </div>
                                    </a>
                                    <a href="javascript:;" class="layadmin-privateletterlist-item">
                                        <div class="meida-left">
                                            <img src="${request.contextPath}/static/layuiadmin/style/res/template/portrait.png">
                                        </div>
                                        <div class="meida-right">
                                            <p>Hugo</p>
                                            <mdall>人生是一场修行,不要轻易交白卷</mdall>
                                        </div>
                                    </a>
                                    <a href="javascript:;" class="layadmin-privateletterlist-item">
                                        <div class="meida-left">
                                            <img src="${request.contextPath}/static/layuiadmin/style/res/template/portrait.png">
                                        </div>
                                        <div class="meida-right">
                                            <p>Hugo</p>
                                            <mdall>人生是一场修行,不要轻易交白卷</mdall>
                                        </div>
                                    </a>
                                    <a href="javascript:;" class="layadmin-privateletterlist-item">
                                        <div class="meida-left">
                                            <img src="${request.contextPath}/static/layuiadmin/style/res/template/portrait.png">
                                        </div>
                                        <div class="meida-right">
                                            <p>Hugo</p>
                                            <mdall>人生是一场修行,不要轻易交白卷</mdall>
                                        </div>
                                    </a>
                                    <a href="javascript:;" class="layadmin-privateletterlist-item">
                                        <div class="meida-left">
                                            <img src="${request.contextPath}/static/layuiadmin/style/res/template/portrait.png">
                                        </div>
                                        <div class="meida-right">
                                            <p>Hugo</p>
                                            <mdall>人生是一场修行,不要轻易交白卷</mdall>
                                        </div>
                                    </a>
                                    <a href="javascript:;" class="layadmin-privateletterlist-item">
                                        <div class="meida-left">
                                            <img src="${request.contextPath}/static/layuiadmin/style/res/template/portrait.png">
                                        </div>
                                        <div class="meida-right">
                                            <p>Hugo</p>
                                            <mdall>人生是一场修行,不要轻易交白卷</mdall>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
    }).use(['index', 'layer','table','jquery'], function () {
        var layer = layui.layer;
        var table = layui.table;
        table.render({
            elem: '#personalOrders'
            , url: '${request.contextPath}/toGetOrders?id=1'
            , method: 'post'
            , contentType: 'application/json'
            , toolbar: '#toolbar' //开启头部工具栏，并为其绑定左侧模板
            , defaultToolbar: ['filter', 'exports', 'print', { //自定义头部工具栏右侧图标。如无需自定义，去除该参数即可
                title: '提示'
                , layEvent: 'LAYTABLE_TIPS'
                , icon: 'layui-icon-tips'
            }]
            , title: '用户数据表'
            , cols: [[
                {type: 'checkbox', fixed: 'left'}
                , {field: 'resourcename', title: '资源名', width: 120, edit: 'text'}
                // ,{field:'src', title:'例图展示', width:120, template:'#imgshow'}
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
        //监听行工具事件
        table.on('tool(personalOrders)', function (obj) {

            var data = obj.data;
            console.log(obj)
            if (obj.event === 'del') {
                layer.confirm('真的删除这条数据吗？', function (index) {
                    // obj.del();
                    $.ajax({
                        type: 'post',
                        //后台地址,提交后腰判断他是添加还是更改。
                        url: '${request.contextPath}/deleteResourceByIdS',
                        //json方法,相当于是请求头
                        // contentType:'application/json;charset=UTF-8',因为只传一个id，所以不用转json
                        //把数据转成json的字符串
                        // data:JSON.stringify(data.field),

                        //直接拼接字符串，相当于传参数。相当于parameter一样。
                        data: 'ids=' + data.id,
                        //
                        success: function (res) {
                            //显示提示信息
                            layer.msg(res.msg);
                            //关闭窗口
                            layer.close(index);//关闭提示信息
                            //重新刷新页面
                            table.reload('supplier');
                        },
                        error: function (res) {
                            //打印提示信息
                            console.log(res)
                        }

                    })
                    layer.close(index);
                });
            } else if (obj.event === 'edit') {
                console.log("修改按钮触发："+data);
                console.log("修改按钮触发："+data.id);
                /*
                * 弹出修改子页面
                * */
                layer.open({
                    title: '修改客户信息',
                    type: 2,
                    area: ['950px', '400px'],
                    btn: ['确认', '取消'], //可以无限个按钮
                    //访问controller跳转页面。
                    content: ['${request.contextPath}/ordersLayer?id=' + data.id, 'no']//这里content是一个URL，如果你不想让iframe出现滚动条，你还可以content: ['http://sentsin.com', 'no']
                    //确认按钮点击的效果设置
                    , yes: function (index, layero) {
                        //按钮【按钮一】的回调
                        // alert("yes")
                        layerIndex = index;
                        //获取form表单
                        var submitForm = layer.getChildFrame('form', index);
                        console.log(submitForm)
                        //获取表单里面的“新增”按钮
                        var submitButton = submitForm.find("button");
                        console.log(submitButton)
                        //触发确认按钮。
                        submitButton.click();
                    }
                });
            }

        });
        //关闭弹窗
        window.closeLayer = function () {
            //传入全局变量index，这个index绑定了【确认】按钮
            layer.close(layerIndex)
        }
        /*
        * 原因：新增后页面还没刷新，数据应该刷新显示。
        * */
        //    刷新客户列表，子页面要掉父页面的方法，如果不写window子页面就会拿不到。
        window.reloadOrdersList = function () {
            table.reload("personalOrders")//单引号
        }
    });
</script>
<script>
    function release1() {
        layer.open({
            type: 2,
            content: ['${request.contextPath}/toReleaseUploadForm', 'no'], //这里content是一个URL，如果你不想让iframe出现滚动条，你还可以content: ['http://sentsin.com', 'no']
            area: ['900px', '600px'],
            btn: ['确认', '取消'], //可以无限个按钮
            //确认按钮的事件的响应操作。
            yes: function (index, layero) {
                //按钮【按钮一】的回调
                // alert("yes")
                //给全局变量赋值
                layerIndex = index;
                //获取form表单,拿到子页面的表单在父页面进行提交表单。
                var submitForm = layer.getChildFrame('form', index);
                console.log("父页面提交的表单"+submitForm)
                //获取，拿到这个表单里面的“上传”按钮属性。点父页面的提交触发子页面的提交按钮。
                var submitButton = submitForm.find("button");
                console.log(submitButton)
                //触发
                submitButton.click();
                //调用完后关闭表单
                layer.close(index)
            },
        });
    }
</script>
</body>
</html>
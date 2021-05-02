<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>留言板</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${request.contextPath}/static/layuiadmin/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${request.contextPath}/static/layuiadmin/style/admin.css" media="all">
    <link rel="stylesheet" href="${request.contextPath}/static/layuiadmin/style/template.css" media="all">
</head>
<body>


<div class="layui-fluid layadmin-message-fluid">
    <div class="layui-row layui-col-space20">
        <div class="layui-col-md2" >
            <div class="cmdlist-container">
                <a href="javascript:;">
                    <img src="${request.contextPath}/static/layuiadmin/style/res/template/portrait.png">
                </a>
                <a href="javascript:;">
                    <div class="cmdlist-text">
                        <p class="info">${resource.resourcename}</p>
                        <div class="price">
                            <b>￥${resource.price}</b>
                            <p>
                                <b>状态:</b>${resource.state}
                            </p>
                            <span class="flow">
                      <i class="layui-icon layui-icon-rate"></i>
                      ${resource.number}
                    </span>
                        </div>
                    </div>
                </a>
            </div>


        </div>
        <div class="layui-col-md9">
            <div class="cmdlist-container">
                <b>时间:</b>&nbsp;&nbsp;&nbsp;${resource.time}
            </div>
        </div>
        <div class="layui-col-md9">
            <div class="cmdlist-container">
                <b>参与方式:</b>&nbsp;&nbsp;&nbsp;${resource.pattern}
            </div>
        </div>
        <div class="layui-col-md9">
            <div class="cmdlist-container">
                <b>报名人数:</b>&nbsp;&nbsp;&nbsp;${resource.number}
            </div>
        </div>
        <div class="layui-col-md9">
            <div class="cmdlist-container">
                <b>联系方式:</b>&nbsp;&nbsp;&nbsp;${resource.contact}
            </div>
        </div>
        <div class="layui-col-md9">
            <div class="cmdlist-container">
                <b>描述:</b>&nbsp;&nbsp;&nbsp;${resource.description}
            </div>
        </div>
        <div class="layui-col-md9">
            <div class="cmdlist-container">
                <b>发起人:</b>&nbsp;&nbsp;&nbsp;${resource.sponsorid}
            </div>
        </div>
        <div class="layui-col-md12">
            <form class="layui-form">
<#--                <div class="layui-input-block">-->
<#--                    <input type="text" name="userid"  class="layui-input">-->
<#--                </div>-->
<#--                <div class="layui-input-block">-->
<#--                    <input type="text" name="replierid"  class="layui-input">-->
<#--                </div>-->
                <div class="layui-input-block">
                    <input type="text" name="resourceid" value="${resource.id}" class="layui-input" style="display:none ">
                </div>
                <div class="layui-form-item layui-form-text">
                    <div class="layui-input-block">
                        <textarea name="usercomment" placeholder="请输入内容" class="layui-textarea"></textarea>
                    </div>
                </div>

                <div class="layui-form-item" style="overflow: hidden;">
                    <div class="layui-input-block layui-input-right">
                        <button class="layui-btn" lay-submit lay-filter="formDemo">发表</button>
                    </div>
                    <div class="layadmin-messag-icon">
                        <a href="javascript:;"><i class="layui-icon layui-icon-face-smile-b"></i></a>
                        <a href="javascript:;"><i class="layui-icon layui-icon-picture"></i></a>
                        <a href="javascript:;"><i class="layui-icon layui-icon-link"></i></a>
                    </div>
                </div>
            </form>
        </div>
        <div class="layui-col-md12 layadmin-homepage-list-imgtxt message-content">
<#--            视图模板-->
            <div id="view"></div>
            <div class="layui-row message-content-btn">
                <a href="javascript:;" class="layui-btn">更多</a>
            </div>
        </div>

    </div>
</div>
</div>


<script src="${request.contextPath}/static/layuiadmin/layui/layui.js"></script>
<script id="demo" type="text/html">
<#--    第一步：编写模版。你可以使用一个script标签存放模板，如：-->
    <ul>
        {{#  layui.each(d.data, function(index, item){ }}
        <li>
            <div class="media-body">
                <a href="javascript:;" class="media-left" style="float: left;">
                    <img src="${request.contextPath}/static/layuiadmin/style/res/template/portrait.png" height="46px"
                         width="46px">
                </a>
                <div class="pad-btm">
                    <p class="fontColor"><a href="javascript:;">胡歌</a></p>
                    <p class="min-font">
              <span class="layui-breadcrumb" lay-separator="-">
                <a href="javascript:;" class="layui-icon layui-icon-cellphone"></a>
                <a href="javascript:;">从移动</a>
                <a href="javascript:;">11分钟前</a>
              </span>
                    </p>
                </div>
                <p class="message-text" id="message">
                    <span>{{ item.usercomment }}</span>
                </p>
            </div>

        </li>
        {{#  }); }}
        {{#  if(d.data.length === 0){ }}
        无数据
        {{#  } }}
    </ul>
</script>
<script>
    layui.config({
        base: '${request.contextPath}/static/layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index']);
    layui.use(['layer', 'form','jquery','laytpl'], function () {
        var form = layui.form;
        //引入layui内部的jquery后需要定义的变量。
        var $ = layui.$;
        //自定义模板引擎定义申明
        var laytpl = layui.laytpl;
        var id=${resource.id};
        $.ajax({
            type: 'post', //设置请求类型为post
            url: '${request.contextPath}/toShowMessage?id='+id,//请求后台的url地址
            contentType:'application/json',//请求参数,就是提交的参数格式，可以自定义，还可一直接绑定。
            success: function (data) {  //请求成功后的回调函数，data为后台返回的值
                console.log(data);
                var data =data;
                var getTpl = demo.innerHTML
                    ,view = document.getElementById('view');
                laytpl(getTpl).render(data, function(html){
                    view.innerHTML = html;
                });
            }
        });
        form.on('submit(formDemo)', function (data) {
            // layer.msg(JSON.stringify(data.field));
            $.ajax({
                type:"post",
                url:'${request.contextPath}/toAddMessage',
                contentType: 'application/json; charset=UTF-8',
                //字符串转换，设置字符集
                data: JSON.stringify(data.field),
                success:function () {
                    layer.msg("发表成功！")
                },
                error:function () {
                    layer.msg("发表失败！")
                }
            })
            return false;
        });
    })
</script>

</body>
</html>
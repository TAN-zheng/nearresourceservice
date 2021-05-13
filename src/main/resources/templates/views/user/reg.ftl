

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>注册 - layuiAdmin</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="${request.contextPath}/static/layuiadmin/layui/css/layui.css" media="all">
  <link rel="stylesheet" href="${request.contextPath}/static/layuiadmin/style/admin.css" media="all">
  <link rel="stylesheet" href="${request.contextPath}/static/layuiadmin/style/login.css" media="all">
</head>
<body>


  <div class="layadmin-user-login layadmin-user-display-show" id="LAY-user-login" style="display: none;">
    <div class="layadmin-user-login-main">
      <div class="layadmin-user-login-box layadmin-user-login-header">
        <h2>附近服务</h2>
        <p>“附近服务”资源整合系统用户注册</p>
      </div>
      <div class="layadmin-user-login-box layadmin-user-login-body layui-form" lay-filter="forms">
        <div class="layui-form-item">
          <label class="layadmin-user-login-icon layui-icon layui-icon-username" ></label>
          <input type="text" name="name"  placeholder="昵称" class="layui-input">
        </div>
        <div class="layui-form-item">
          <label class="layadmin-user-login-icon layui-icon layui-icon-username" for="LAY-user-login-age"></label>
          <input type="text" name="age" id="LAY-user-login-age" placeholder="年龄" class="layui-input">
        </div>

        <div class="layui-form-item">
          <label class="layadmin-user-login-icon layui-icon layui-icon-username" for="LAY-user-login-account"></label>
          <input type="text" name="account" id="LAY-user-login-account" lay-verify="nickname" placeholder="账号" class="layui-input">
        </div>
        <div class="layui-form-item">
          <label class="layadmin-user-login-icon layui-icon layui-icon-password" for="LAY-user-login-password"></label>
          <input type="password" name="password" id="LAY-user-login-password" lay-verify="pass" placeholder="密码" class="layui-input">
        </div>
        <div class="layui-form-item">
          <label class="layadmin-user-login-icon layui-icon layui-icon-password" for="LAY-user-login-repass"></label>
          <input type="password" name="repass" id="LAY-user-login-repass" lay-verify="required" placeholder="确认密码" class="layui-input">
        </div>
        <div class="layui-form-item">
          <label class="layadmin-user-login-icon layui-icon layui-icon-cellphone" for="LAY-user-login-phone"></label>
          <input type="text" name="phone" id="LAY-user-login-phone" lay-verify="phone" placeholder="手机" class="layui-input">
        </div>
        <div class="layui-form-item">
          <label class="layadmin-user-login-icon layui-icon layui-icon-username" for="LAY-user-login-address"></label>
          <input type="text" name="address" id="LAY-user-login-address"  placeholder="地址" class="layui-input">
        </div>
        <div class="layui-form-item">
          <label class="layadmin-user-login-icon layui-icon layui-icon-username" for="LAY-user-login-identitycard"></label>
          <input type="text" name="identitycard" id="LAY-user-login-identitycard"  placeholder="身份证件号" class="layui-input">
        </div>
        <div class="layui-form-item">
          <label class="layui-form-label">单选框</label>
          <div class="layui-input-block">
            <input type="radio" name="sex" value="男" title="男" checked="">
            <input type="radio" name="sex" value="女" title="女">
            <input type="radio" name="sex" value="禁" title="禁用" disabled="">
          </div>
        </div>
        <div class="layui-form-item">
          <button class="layui-btn layui-btn-fluid" lay-submit lay-filter="LAY-user-reg-submit">注 册</button>
        </div>
      </div>
      <div class="layui-form-item">
        <a href="/" class="layadmin-user-jump-change layadmin-link">前往登录</a>
      </div>
    </div>
    
    <div class="layui-trans layadmin-user-login-footer">
      
      <p>© 2021 <a href="http://www.layui.com/" target="_blank">nearresourceservice.com</a></p>
      <p>
        <span><a href="http://www.layui.com/admin/#get" target="_blank">获取授权</a></span>
        <span><a href="http://www.layui.com/admin/pro/" target="_blank">在线演示</a></span>
        <span><a href="http://www.layui.com/admin/" target="_blank">前往官网</a></span>
      </p>
    </div>

  </div>

  <script src="${request.contextPath}/static/layuiadmin/layui/layui.js"></script>  
  <script>
  layui.config({
    base: '${request.contextPath}/static/layuiadmin/' //静态资源所在路径
  }).extend({
    index: 'lib/index' //主入口模块
  }).use(['jquery','layer','form'], function(){
    var $ = layui.$
    var layer=layui.layer
    var form=layui.form

    //提交
    form.on('submit(LAY-user-reg-submit)', function(obj){
      var field = obj.field;

      //确认密码
      if(field.password !== field.repass){
        return layer.msg('两次密码输入不一致');
      }
      
      // //是否同意用户协议
      // if(!field.agreement){
      //   return layer.msg('你必须同意用户协议才能注册');
      // }
      
      //请求接口
      $.ajax({
        url:'${request.contextPath}/toAddUser' //实际使用请改成服务端真实接口
        ,method:'post'
        ,contentType: 'application/json; charset=UTF-8'
        ,data:JSON.stringify(field)
        ,success: function(res){
          layer.msg('注册成功', {
            offset: '15px'
            ,icon: 1
            ,time: 1000
          }, function(){
            form.render(null, 'forms');
          });
        }
      });
      
      return false;
    });
  });
  </script>
</body>
</html>
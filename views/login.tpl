<!DOCTYPE html>
<html>
   <head>
      <title>森米进销存管理系统</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf-8">
      <!-- 引入 Bootstrap -->
      <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
 
      <!-- HTML5 Shiv 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
      <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
      <!--[if lt IE 9]>
         <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
         <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
      <![endif]-->
   </head>
   <body>
   <div class = "container">
      <form role="form" method="post" action ="/login">
		  <div class="form-group">
			<label for="name">名称</label>
			<input type="text" class="form-control" name ="user" id="user" placeholder="用户名">
		  </div>
		   <div class="form-group">
			<label for="name">名称</label>
			<input type="password" class="form-control" name="password" id="password" placeholder="密码">
		  </div>

		  <button type="submit" class="btn btn-default">提交</button>
	</form>
	</div>
      <!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
      <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
      <!-- 包括所有已编译的插件 -->
      <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
   </body>
</html>
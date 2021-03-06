<!DOCTYPE html>
<html>
   <head>
      <title>产品录入</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
		<div class="page-header">
		  <form class="form-horizontal" role="form" method="post" action ="/customer/insert">
			  <div class="form-group">
				<label class="col-sm-2" for="name">姓名</label>
				<div class="col-sm-4">
				<input type="text" class="form-control" name ="Name" id="Name" placeholder="姓名">
				</div>
			  </div>

			  <div class="form-group">
				<label class="col-sm-2" for="name">职业</label>
				<div class="col-sm-4">
				<input type="text" class="form-control" name ="Identify"  placeholder="职业">
				</div>
			  </div>
			  <div class="form-group">
				<label class="col-sm-2" for="name">级别</label>
				<div class="col-sm-4">
				<input type="text" class="form-control" name ="Level"  placeholder="级别">
				</div>
			  </div>
			  <div class="form-group">
				<label class="col-sm-2" for="name">疗程</label>
				<div class="col-sm-4">
				<input type="text" class="form-control" name ="Course"  placeholder="疗程">
				</div>
			  </div>
			  <div class="form-group">
				<label class="col-sm-2" for="name">疗程开始时间</label>
				<div class="col-sm-4">
				<input type="date" class="form-control" name ="Course_time" id = "Course_time">
				</div>
			  </div>
			  <div class="form-group">
				<label class="col-sm-2" for="name">代理开始时间</label>
				<div class="col-sm-4">
				<input type="date" class="form-control" name="Agent_time"  id = "Agent_time" >
				</div>
			  </div>
			  <div class="form-group">
				<label class="col-sm-2" for="name">电话</label>
				<div class="col-sm-4">
				<input type="tel" class="form-control" name="Phone"  placeholder="电话">
				</div>
			  </div>
			  <div class="form-group">
				<label class="col-sm-2" for="name">收货地址</label>
				<div class="col-sm-4">
				<input type="text" class="form-control" name="Address"  placeholder="收货地址">
				</div>
			  </div>
			  <div class="form-group">
				<label class="col-sm-2" for="name">生日</label>
				<div class="col-sm-4">
				<input type="date" class="form-control" name="Birthday" id = "Birthday"  >
				</div>
			  </div>

			   <div class="form-group">
				<label class="col-sm-2" for="name">说明</label>
				<div class="col-sm-4">
				<textarea class="form-control" name="Info" id = "Info" rows="4"></textarea>
				</div>
			  </div>
			  
			  <button type="submit" class="btn btn-default">提交</button>
			</form>
		</div>
	</div>
      <!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
      <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
      <!-- 包括所有已编译的插件 -->
      <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
   </body>
</html>
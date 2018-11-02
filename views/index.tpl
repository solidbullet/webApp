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
      <h5><<<.User>>>,欢迎光临！</h5>
	  <hr>
	<a type="button" class="btn btn-primary" href="/customer/insert">客户录入</a>
	<a type="button" class="btn btn-success" href="/product/insert">产品录入</a>
	<a type="button" class="btn btn-info" href="/goods/insert">进货录入</a>

	<hr>
	<!-- 提供额外的视觉效果，标识一组按钮中的原始动作 -->
	<button type="button" class="btn btn-primary">客户管理</button>
	<!-- 表示一个成功的或积极的动作 -->
	<button type="button" class="btn btn-success">库存管理</button>
	<!-- 信息警告消息的上下文按钮 -->
	<a type="button" class="btn btn-warning" href="/product/productShow">产品管理</a>

	
	<!-- 表示应谨慎采取的动作 
	<button type="button" class="btn btn-danger">警告按钮</button>danger
-->
	
	

	</form>
	</div>
      <!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
      <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
      <!-- 包括所有已编译的插件 -->
      <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
   </body>
</html>


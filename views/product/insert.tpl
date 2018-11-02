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
      <form class="form-horizontal" role="form" method="post" action ="/product/insert">
		  <div class="form-group">
			<label class="col-sm-2" for="name">产品类别</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" name ="Classify" id="Classify" placeholder="产品类别">
			</div>
		  </div>
		  <div class="form-group">
			<label class="col-sm-2" for="name">产品名称</label>
			<div class="col-sm-4">
			<input type="text" class="form-control" name ="Name" id="Name" placeholder="产品名称">
			</div>
		  </div>
		  <div class="form-group">
			<label class="col-sm-2" for="name">口味</label>
			<div class="col-sm-4">
			 <select name ="Taste" class="form-control">
				<option>水蜜桃</option>
				<option>葡萄柚</option>
				<option>雪莲(荔枝口味)</option>
				<option>鱼籽(芒果口味)</option>
				<option>玫瑰口味(限量版)</option>
				<option>绿茶口味(限量版)</option>
				<option>全套6种</option>
			  </select>
			</div>
		  </div>
		  <div class="form-group">
			<label class="col-sm-2" for="name">生产厂家</label>
			<div class="col-sm-4">
			<input type="text" class="form-control" name ="Factory" id="Factory" placeholder="生产厂家">
			</div>
		  </div>
		  <div class="form-group">
			<label class="col-sm-2" for="name">专利及奖项</label>
			<div class="col-sm-4">
			<input type="text" class="form-control" name ="Prize" id="Prize" placeholder="专利及奖项">
			</div>
		  </div>
		  <div class="form-group">
			<label class="col-sm-2" for="name">成分</label>
			<div class="col-sm-4">
			<input type="text" class="form-control" name ="Compose" id="Compose" placeholder="成分">
			</div>
		  </div>
		  <div class="form-group">
			<label class="col-sm-2" for="name">功效</label>
			<div class="col-sm-4">
			<textarea class="form-control" name="Effect" rows="2"></textarea>
			</div>
		  </div>
		  <div class="form-group">
			<label class="col-sm-2" for="name">使用方法</label>
			<div class="col-sm-4">
			<textarea class="form-control" name="Method" rows="3" ></textarea>
			</div>
		  </div>
		  <div class="form-group">
			<label class="col-sm-2" for="name">规格</label>
			<div class="col-sm-4">
			<input type="text" class="form-control" name="Standard" id="Standard" placeholder="规格">
			</div>
		  </div>
		  <div class="form-group">
			<label class="col-sm-2" for="name">适合人群</label>
			<div class="col-sm-4">
			<textarea class="form-control" name="Fit" rows="3"></textarea>
			</div>
		  </div>
		  <div class="form-group">
			<label class="col-sm-2" for="name">进货价</label>
			<div class="col-sm-4">
			<input type="text" class="form-control" name="Order_price" id="Order_price" placeholder="进货价">
			</div>
		  </div>
		  <div class="form-group">
			<label class="col-sm-2" for="name">卖价</label>
			<div class="col-sm-4">
			<input type="text" class="form-control" name="Origin_price" id="Origin_price" placeholder="卖价">
			</div>
		  </div>
		  <div class="form-group">
			<label class="col-sm-2" for="name">折扣</label>
			<div class="col-sm-4">
			<input type="text" class="form-control" name ="Discount" id="Discount" placeholder="折扣">
			</div>
		  </div>
		 <div class="form-group">
			<label class="col-sm-2" for="name">单位</label>
			<div class="col-sm-4">
			<input type="text" id="unit" class="form-control" name="Unit"    value="元/盒">
			</div>
		  </div>
		   <div class="form-group">
			<label class="col-sm-2" for="name">说明</label>
			<div class="col-sm-4">
			<textarea class="form-control" name="Info" rows="4"></textarea>
			</div>
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
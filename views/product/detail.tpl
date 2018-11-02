<!DOCTYPE html>
<html>
   <head>
      <title>产品详情</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <!-- 引入 Bootstrap -->
      <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
 
      <!-- HTML5 Shiv 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
      <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
      <!--[if lt IE 9]>
         <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
         <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
      <![endif]-->
	  <script src="https://cdn.staticfile.org/angular.js/1.4.6/angular.min.js"></script>
   </head>
   <body>
   <div class = "container" ng-app="myApp" ng-controller="siteCtrl">
		
	      <form class="form-horizontal" role="form" method="post" action ="/product/update">
		  <input name="Id" ng-model=data.Id ng-hide =true>
		  
		  <div class="form-group">
			<label class="col-sm-2" for="name">产品类别</label>
			<div class="col-sm-8">
				<input type="text" class="form-control" name ="Classify" ng-model=data.Classify>
			</div>
		  </div>
		  <div class="form-group">
			<label class="col-sm-2" for="name">产品名称</label>
			<div class="col-sm-8">
			<input type="text" class="form-control" name ="Name" ng-model=data.Name>
			</div>
		  </div>
		  <div class="form-group">
			<label class="col-sm-2" for="name">口味</label>
			<div class="col-sm-8">
			<select class="form-control" name="Taste" ng-model="kouwei" ng-options="y for y in tastes"></select>
			</div>
		  </div>
		  <div class="form-group">
			<label class="col-sm-2" for="name">生产厂家</label>
			<div class="col-sm-8">
			<input type="text" class="form-control" name ="Factory" ng-model=data.Factory>
			</div>
		  </div>
		  <div class="form-group">
			<label class="col-sm-2" for="name">专利及奖项</label>
			<div class="col-sm-8">
			<input type="text" class="form-control" name ="Prize" ng-model=data.Prize>
			</div>
		  </div>
		  <div class="form-group">
			<label class="col-sm-2" for="name">成分</label>
			<div class="col-sm-8">
			<input type="text" class="form-control" name ="Compose" ng-model=data.Compose>
			</div>
		  </div>
		  <div class="form-group">
			<label class="col-sm-2" for="name">功效</label>
			<div class="col-sm-8">
			<textarea class="form-control" name="Effect" rows="2" ng-model=data.Effect></textarea>
			</div>
		  </div>
		  <div class="form-group">
			<label class="col-sm-2" for="name">使用方法</label>
			<div class="col-sm-8">
			<textarea class="form-control" name="Method" rows="3" ng-model=data.Method></textarea>
			</div>
		  </div>
		  <div class="form-group">
			<label class="col-sm-2" for="name">规格</label>
			<div class="col-sm-8">
			<input type="text" class="form-control" name="Standard" ng-model=data.Standard>
			</div>
		  </div>
		  <div class="form-group">
			<label class="col-sm-2" for="name">适合人群</label>
			<div class="col-sm-8">
			<textarea class="form-control" name="Fit" rows="3" ng-model=data.Fit></textarea>
			</div>
		  </div>
		  <div class="form-group">
			<label class="col-sm-2" for="name">进货价</label>
			<div class="col-sm-8">
			<input type="text" class="form-control" name="Order_price" ng-model=data.Order_price>
			</div>
		  </div>
		  <div class="form-group">
			<label class="col-sm-2" for="name">卖价</label>
			<div class="col-sm-8">
			<input type="text" class="form-control" name="Origin_price" ng-model=data.Origin_price>
			</div>
		  </div>
		  <div class="form-group">
			<label class="col-sm-2" for="name">折扣</label>
			<div class="col-sm-8">
			<input type="text" class="form-control" name ="Discount" ng-model=data.Discount>
			</div>
		  </div>
		 <div class="form-group">
			<label class="col-sm-2" for="name">单位</label>
			<div class="col-sm-8">
			<input type="text" id="unit" class="form-control" name="Unit" ng-model=data.Unit>
			</div>
		  </div>
		   <div class="form-group">
			<label class="col-sm-2" for="name">说明</label>
			<div class="col-sm-8">
			<textarea class="form-control" name="Info" rows="4" ng-model=data.Info></textarea>
			</div>
		  </div>
		  
		  <button type="submit" class="btn btn-default">修改</button>
	</div>
      <!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
      <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
      <!-- 包括所有已编译的插件 -->
      <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
   </body>
   <script>
	var app = angular.module('myApp', []);
	app.controller('siteCtrl', function($scope, $http) {
	  url="http://127.0.0.1:8080/product/detailquery?productid=" + <<<.productid>>>;
	  $http.get(url)
	  .success(function (response) {
	  $scope.data = response;
	  $scope.kouwei = $scope.data.Taste;
	  $scope.tastes = ["水蜜桃", "葡萄柚", "雪莲(荔枝口味)","鱼籽(芒果口味)","玫瑰口味(限量版)","绿茶口味(限量版)","全套6种"];
	  console.log($scope.data.Taste);
	  });
	});
	</script>
</html>
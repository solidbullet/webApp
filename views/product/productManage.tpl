<!DOCTYPE html>
<html>
   <head>
      <title>产品管理</title>
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

	<table class="table table-striped">
	  <caption>产品列表</caption>
	  <thead>
		<tr>
		  <th>产品ID</th>
		  <th>产品类别</th>
		  <th>产品名称</th>
		  <th>口味</th>
		  <th>进货价</th>
		  <th>卖价</th>
		  <th>折扣</th>
		  <th>单位</th>
		  <th>生产厂家</th>
		  <th>详情</th>
		  <th>删除产品</th>
		  

		</tr>
	  </thead>
	  <tbody>
		<tr ng-repeat="x in data">
		  <td>{{ x.Id }}</td>
		  <td>{{ x.Classify }}</td>
		  <td>{{ x.Name }}</td>
		  <td>{{ x.Taste }}</td>
		  <td>{{ x.Order_price }}</td>
		  <td>{{ x.Origin_price}}</td>
		  <td>{{ x.Discount}}</td>
		  <td>{{ x.Unit }}</td>
		  <td>{{ x.Factory}}</td>
		  <td><a href="http://127.0.0.1:8080/product/detail?productid={{x.Id}}">查看详情</a></td>
		  <td><a href="http://127.0.0.1:8080/product/delete?productid={{x.Id}}">删除</a></td>
		</tr>

	  </tbody>
	</table>
	</div>
      <!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
      <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
      <!-- 包括所有已编译的插件 -->
      <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
   </body>
   <script>
	var app = angular.module('myApp', []);
	app.controller('siteCtrl', function($scope, $http) {
	  $http.get("http://127.0.0.1:8080/product/productManage")
	  .success(function (response) {
	  $scope.data = response;
	  console.log(response);
	  });
	});
	</script>
</html>
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
	  <caption>客户列表</caption>
	  <thead>
		<tr>
		  <th>客户ID</th>
		  <th>姓名</th>
		  <th>职业</th>
		  <th>级别</th>
		  <th>疗程</th>
		  <th>疗程开始时间</th>
		  <th>代理开始时间</th>
		  <th>电话</th>
		  <th>收货地址</th>
		  <th>生日</th>
		  <th>备注</th>
		  <th>修改</th>
		  <th>删除</th>
		</tr>
	  </thead>
	  <tbody>
		<tr ng-repeat="x in data">
		  <td>{{ x.Id }}</td>
		  <td>{{ x.Name }}</td>
		  <td>{{ x.Identify }}</td>
		  <td>{{ x.Level }}</td>
		  <td>{{ x.Course }}</td>
		  <td>{{ x.Course_time | date:'yyyy-MM-dd'}}</td>
		  <td>{{ x.Agent_time | date:'yyyy-MM-dd'}}</td>
		  <td>{{ x.Phone}}</td>
		  <td>{{ x.Address }}</td>
		  <td>{{ x.Birthday | date:'yyyy-MM-dd'}}</td>
		  <td>{{ x.Info}}</td>
		  <td><a href="http://127.0.0.1:8080/customer/updatepage?customerid={{x.Id}}">修改</a></td>
		  <td><a href="http://127.0.0.1:8080/customer/delete?customerid={{x.Id}}">删除</a></td>
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
	  $http.get("http://127.0.0.1:8080/customer/customerJson")
	  .success(function (response) {
	  $scope.data = response;
	  console.log(response);
	  });
	});
	</script>
</html>
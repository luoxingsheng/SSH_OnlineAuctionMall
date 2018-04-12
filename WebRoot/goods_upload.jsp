

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<meta charset="utf-8" />
<title>bootstrap案例</title>
<link href="style/css/bootstrap-3.3.0.css" rel="stylesheet">
<script src="style/js/bootstrap-3.3.0.js"></script>
<style type="text/css">
.form {
	background: rgba(255, 255, 255, 0.2);
	width: 400px;
	margin: 100px auto;
}
</style>
</head>
<body >
	<div class="container">
		<div class="form row">
			<form class="form-horizontal col-sm-offset-3 col-md-offset-3"
				action="goods_upload" method="post" enctype="multipart/form-data">
				<h3 class="form-title col-md-offset-1 ">上传商品信息</h3>
				<hr />
				<div class="col-sm-9 col-md-9">
					<div class="form-group">
						<input class="form-control required" type="text"
							placeholder="商品名称" name="goodsName" />
					</div>
					
					<div class="form-group">
							<label for="name">商品种类</label>
		      <select class="form-control" name="goodsStatus">
			     <option value="1">珍宝玉器</option>
			     <option value="2">文玩收藏</option>
			     <option value="3">紫砂陶瓷</option>
			     <option value="4">艺术品</option>
			     <option value="5">工艺品</option>
		      </select>
					</div>
					
					
					<div class="form-group">
						<input class="form-control required" type="text"
							placeholder="起拍价格" name="goodsPrice" />
					</div>
					<div class="form-group">
						<textarea class="form-control required" type="text"
							placeholder="商品描述" name="goodsDesc" raw="5"></textarea>
					</div>
					<label >商品图片：</label>
					<div class="form-group">
					    <img src="pic/moban.png" class="img-rounded"  id="showImg" name="img" style="height: 223px;width: 223px" >
                        <input  class="form-control required"id="img" size="30" name="Image" type="file" onchange="preImg()">

					</div>
					<div class="form-group">
						<input type="submit" class="btn btn-success pull-right btn-block"
							value="确认上传 " />
					</div>
				</div>
			</form>
		</div>

	</div>
	
<script>
    function preImg() {
        var file = document.getElementById('img')
        var img = document.getElementById('showImg')
        var url = window.URL.createObjectURL(file.files[0])
        img.src = url
    }
</script>
	
</body>
</html>

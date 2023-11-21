<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
<title>Chỉnh sửa bài viết</title>
</head>
<body>
	<div class="main-content">
		<div class="main-content-inner">
			<div class="breadcrumbs" id="breadcrumbs">
				<script type="text/javascript">
					try {
						ace.settings.check('breadcrumbs', 'fixed')
					} catch (e) {
					}
				</script>

				<ul class="breadcrumb">
					<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">Home</a>
					</li>

					<li><a href="#">Forms</a></li>
					<li class="active">Form Elements</li>
				</ul>
				<!-- /.breadcrumb -->
			</div>
			<div class="page-content">
				<div class="row">
					<div class="col-xs-12">
						<form class="form-horizontal" role="form" id="formSubmit">

							<div class="form-group">
								<label  class="col-sm-3 control-label no-padding-right" for="categoryCode">Thể Loại Bài Viết</label> 
								<div class="col-sm-9">
									<select class="col-sm-9" id="categoryCode"  name="categoryCode" class="col-xs-10 col-sm-5">
									<option value="">Thể Thao</option>
									<option value="">Xã Hội</option>
									<option value="">Chính Trị</option>
								</select>
								</div>
								
							</div>

							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right"
									for="form-field-1"> Tên Bài Viết</label>

								<div class="col-sm-9">
									<input type="text" placeholder="Username"
										class="col-xs-10 col-sm-5" id="title" name="title" />
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right"
									for="form-field-1"> Ảnh Đại Diện</label>

								<div class="col-sm-9">
									<input type="file" class="col-xs-10 col-sm-5" id="thumbnail"
										name="thumbnail" />
								</div>
							</div>

							<div class="form-group">
  								<label class="col-sm-3 control-label no-padding-right" for="shortDecription">Mô tả ngắn</label>
  								<div class="col-sm-9">
  									<textarea class="form-control" rows="5" cols="10" id="shortDecription" name="shortDecription"></textarea>
								</div>
							</div>
							
							<div class="form-group">
  								<label class="col-sm-3 control-label no-padding-right" for="content">Nội Dung</label>
  								<div class="col-sm-9">
  									<textarea class="form-control" rows="5" cols="10" id="content" name="content"></textarea>
  								</div>
  								
							</div>


							<div class="clearfix form-actions">
								<div class="col-md-offset-3 col-md-9">
									<button class="btn btn-info" type="button" id="btnAddOrUpdateNew">
												<i class="ace-icon fa fa-check bigger-110"></i>
												Lưu
											</button>

											&nbsp; &nbsp; &nbsp;
											<button class="btn" type="reset">
											<i class="ace-icon fa fa-undo bigger-110"></i>
										Hủy
									</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
<script>
	$('#btnAddOrUpdateNew').click(function (e) {
	    e.preventDefault();
	    var data = {};
	    var formData = $('#formSubmit').serializeArray();
	    $.each(formData, function (i, v) {
            data[""+v.name+""] = v.value;
        });
	    var id = $('#newId').val();
	    if (id == "") {
	    	addNew(data);
	    } else {
	    	updateNew(data);
	    }
	});
</script>
</body>
</html>

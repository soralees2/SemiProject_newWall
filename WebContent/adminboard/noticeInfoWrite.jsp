<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>관리자페이지</title>
	
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/all.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/common.js"></script>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/all.min.css">
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/noticecss/css.css">


	
	
	<script>
$(function() {
	$('#summernote').summernote({
		height : 300,
		minHeight : null,
		maxHeight : null,
		focus : true,
		callbacks : {
			onImageUpload : function(files) {
				let editor = this;
				let file = files[0];
				let form = new FormData();
				form.append("file", file);
				console.log(file);
				
				$.ajax({
					data: form,
					type: "post",
					url : '${pageContext.request.contextPath}/uploadImg.sumAdm',
					contentType : false,
					processData : false,
					enctype : 'multipart/form-data',
				}).done(function(resp){
					console.log("URI" + resp);
					$(editor).summernote('insertImage', "${pageContext.request.contextPath}" + resp);
				})
			}
		}
	});
	
	$("#noticeWriter").on("click",function(){
		let name = $("#name").val();
		console.log(name);
		if(name == null){
		alert("다시 로그인 해주세요");
		return false;
		}
	})
	
	
	$("#file-box").on("click",".delFile",function(){
		$(this).parent().remove();
	})


	let fileCount = 1;
	$("#addFile").on("click", function() {
		let fileLine = $("<div>")
		
		let inputFile = $("<input>");
		inputFile.attr("type", "file");
		inputFile.attr("name","file"+fileCount++);
		
		let btnDel = $("<button>");
		btnDel.addClass("delFile btn_s btn_white");
		btnDel.attr("type","button");
		btnDel.text("-");
		
		fileLine.append(inputFile);
		fileLine.append(btnDel);
		
		$("#file-box").append(fileLine);
	})
})
</script>
</head>
<body>
	<div class="wrap">
		<jsp:include page="../layout/jsp/adminHeader.jsp"></jsp:include>
		<div class="main">
			<div class="container">
				<section class="shadow-sm rounded">
				<div class="title_area">
						<h2>공지사항</h2>
						</div>
					<div class="board_wrap" style="width:95%;">
						<form action="${pageContext.request.contextPath}/noticeWrite.sumAdm" method="post" enctype="multipart/form-data" >
							<div class="board_write_wrap">
								<div class="board_write">
									<div class="title">
										<dl>
											<dt>제목</dt>
											<dd>
												<input type="text" id="title" name="notice_title"
													placeholder="제목 입력">
											</dd>
										</dl>
									</div>
									<input type="hidden" value="${admLoginInfo.name}" name="name">
									<div class="info">
										<dl id="file-box">
											<dt>파일 첨부</dt>
											<button class="btn_s btn_line" name="addFile" id="addFile" type="button">+</button>
										</dl>

									</div>
									<div class="cont">
										<textarea placeholder="내용 입력" id="summernote" name="notice_contents"></textarea>
									</div>
								</div>
								<div class="bt_wrap">
									<button class="btn_m btn_primary" id="noticeWriter">등록</button>
									<button class="btn_m btn_white" type="button" onClick="history.back();">취소</button>
								</div>
							</div>
						</form>
					</div>
				</section>
			</div>
		</div>
	</div>
	

</body>

</html>
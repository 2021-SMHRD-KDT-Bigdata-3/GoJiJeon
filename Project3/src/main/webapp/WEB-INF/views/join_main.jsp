<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입 화면</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style>
body {
	min-height: 100vh;
	background: -webkit-gradient(linear, left bottom, right top, from(#92b5db),
		to(#1d466c));
	background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
}

.input-form {
	max-width: 680px;
	margin-top: 80px;
	padding: 32px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}
</style>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>
<body>
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">회원가입</h4>
				
				<form action = "${cpath}/UsersInsert.do" method = "post"  class="validation-form" novalidate >
					
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="id">아이디</label> 
							<input type="text" class="form-control" id="id" placeholder="아이디를 입력해주세요" name = "user_id"
								required>
							<div class="invalid-feedback"></div>
						</div>
						<div class="col-md-6 mb-3">
							<label for="pw">비밀번호</label> 
							<input type="password" class="form-control" id="pw" placeholder="비밀번호를 입력해주세요" name = "user_pw"
								required>
							<div class="invalid-feedback"></div>
						</div>
					</div>
					<!-- <div class="row"> 
<div class="col-md-6 mb-3"> 
<label for="name">이름</label> 
<input type="text" class="form-control" id="name" placeholder="이름을 입력해주세요" value="" required> 
<div class="invalid-feedback"> 
</div> 
</div> 
<div class="col-md-6 mb-3"> 
<label for="tel">전화번호</label>
<input type="text" class="form-control" id="tel" placeholder="전화번호를 입력해주세요" value="" required> 
<div class="invalid-feedback">
</div> 
</div> 
</div>  
<div class="mb-3"> 
<label for="eamil">이메일</label> 
<input type="text" class="form-control" id="email" placeholder="이메일을 입력해주세요" required> 
<div class="invalid-feedback"> 주소를 입력해주세요. 
</div> 
</div>  -->
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="name">이름</label> <input type="text"
								class="form-control" id="name" placeholder="이름을 입력해주세요" name = "user_name"
								required>
							<div class="invalid-feedback"></div>
						</div>
						<div class="col-md-6 mb-3">
							<label for="root">주거래 은행</label>
							 <select class="custom-select d-block w-100" id="root" name = "user_bank">
								<option value="location">선택</option>
								<option>BNP파리바</option>
								<option>HSBC</option>
								<option>JP모간체이스</option>
								<option>KB국민</option>
								<option>경남</option>
								<option>광주</option>
								<option>기업</option>
								<option>농협</option>
								<option>대구</option>
								<option>도이치</option>
								<option>뱅크오브아메리카</option>
								<option>부산</option>
								<option>산림조합</option>
								<option>산업</option>
								<option>새마을금고</option>
								<option>수협</option>
								<option>신한</option>
								<option>신협</option>
								<option>우리</option>
								<option>우체국</option>
								<option>저축</option>
								<option>전북</option>
								<option>제주</option>
								<option>중국건설은행</option>
								<option>중국공상은행</option>
								<option>중국은행</option>
								<option>카카오뱅크</option>
								<option>케이뱅크</option>
								<option>토스뱅크</option>
								<option>하나</option>
								<option>한국씨티</option>
							</select>
							<div class="invalid-feedback"></div>
						</div>
						<hr class="mb-4">
						<div class="custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input"
								id="aggrement" required> <label
								class="custom-control-label" for="aggrement">개인정보 수집 및
								이용에 동의합니다.</label>
							&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
							<a href="./index_main.do">메인으로</a>
						</div>
						<br>
						<br>
						<div class="mb-4"></div>
						<button class="btn btn-primary btn-lg btn-block" type="submit">가입
							완료</button>
				</form>
			</div>
		</div>
	</div>

	<script> window.addEventListener('load', () => { const forms = document.getElementsByClassName('validation-form'); 
 Array.prototype.filter.call(forms, (form) => { form.addEventListener('submit', function (event) { if (form.checkValidity() === false) 
 { event.preventDefault(); event.stopPropagation(); } form.classList.add('was-validated'); }, false); }); }, false); 
 </script>
</body>
</html>
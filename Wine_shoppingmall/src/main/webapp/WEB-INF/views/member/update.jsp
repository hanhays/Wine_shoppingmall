<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	<div class="page-header">
		<h1></h1>
	</div>
	<form role="form" method="post">
	<div class="row">
		<table class="table table-bordered" style="text-align: center; border: 1px solid #dddddd">
			<thead>
				<tr>
					<th colspan="3" style="background-color: #eeeeee; text-align: center;">
						<h5>회원 정보 보기</h5>
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td style="width: 20%;">아이디</td>
					<td style="text-align: left;">
						<input readonly type="text" name="mem_id" value="${dto.mem_id}">
					</td>
				</tr>
				<tr>
					<td style="width: 20%;">비밀번호</td>
					<td style="text-align: left;">
						<input required type="password" id="pw" name="mem_pw">
            			<span id="pwmsg"></span>(영문 대소문자/숫자 중 2가지 이상 조합, 4~10자)
					</td>
				</tr>
				<tr>
					<td style="width: 20%;">비밀번호 확인</td>
					<td style="text-align: left;">
						<input required type="password" id="pwck" name="pwcheck">
						<span id="pwcheckmsg"></span>
					</td>
				</tr>
				<tr>
					<td style="width: 20%;">이름</td>
					<td style="text-align: left;">
						<input required type="text" id="name" name="mem_name" value="${dto.mem_name}">
					</td>
				</tr>
				<tr>
					<td style="width: 20%;">성별</td>
					<td style="text-align: left;">
						<input required type="radio" id="gender" name="mem_gender" value="m" checked>남성
						<input required type="radio" id="gender" name="mem_gender" value="f">여성
					</td>
				</tr>
				<tr>
					<td style="width: 20%;">연락처</td>
					<td style="text-align: left;">
						<input type="text" id="contact" name="mem_contact" value="${dto.mem_contact}">
					</td>
				</tr>
				<tr>
					<td style="width: 20%;">생년월일</td>
					<td style="text-align: left;">${dto.mem_birth}</td>
				</tr>
				<tr>
					<td style="width: 20%;">가입일</td>
					<td style="text-align: left;">${dto.mem_regdate}</td>
				</tr>
				<tr>
					<td style="width: 20%;">우편번호</td>
					<td style="text-align: left;">
						<input type="text" id="address1" name="mem_address1" value="${dto.mem_address1}">
					</td>
				</tr>
				<tr>
					<td style="width: 20%;">주소</td>
					<td style="text-align: left;">
						<input type="text" id="address2" name="mem_address2" value="${dto.mem_address2}">
					</td>
				</tr>
				<tr>
					<td style="width: 20%;">상세주소</td>
					<td style="text-align: left;">
						<input type="text" id="address3" name="mem_address3" value="${dto.mem_address3}">
					</td>
				</tr>
				<tr>
					<td style="width: 20%;">이메일</td>
					<td style="text-align: left;">
						<input type="text" id="email" name="mem_email" value="${dto.mem_email}">
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	</form>
</div>
<div class="container">
	<div class="row">
		<a href="/member/read/${dto.mem_id}" class="btn btn-info">돌아가기</a>
	</div>
	<div class="row">
		<button id="submit" type="submit" class="btn btn-warning">수정하기</button>
	</div>
</div>

 <script type="text/javascript">
	$(document).ready(function() {
		$("#submit").click(function() {
			$("form").attr("action","/member/update")
			$("form").submit();
		});		
	});

</script>


</body>
</html>
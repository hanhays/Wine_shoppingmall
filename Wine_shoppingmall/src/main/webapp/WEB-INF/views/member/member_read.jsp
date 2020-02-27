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
					<td style="text-align: left;">${dto.mem_id}</td>
				</tr>
				<tr>
					<td style="width: 20%;">비밀번호</td>
					<td style="text-align: left;">${dto.mem_pw}</td>
				</tr>
				<tr>
					<td style="width: 20%;">이름</td>
					<td style="text-align: left;">${dto.mem_name}</td>
				</tr>
				<tr>
					<td style="width: 20%;">성별</td>
					<td style="text-align: left;">${dto.mem_gender}</td>
				</tr>
				<tr>
					<td style="width: 20%;">연락처</td>
					<td style="text-align: left;">${dto.mem_contact}</td>
				</tr>
				<tr>
					<td style="width: 20%;">가입일</td>
					<td style="text-align: left;">${dto.mem_regdate}</td>
				</tr>
				<tr>
					<td style="width: 20%;">우편번호</td>
					<td style="text-align: left;">${dto.mem_address1}</td>
				</tr>
				<tr>
					<td style="width: 20%;">주소</td>
					<td style="text-align: left;">${dto.mem_address2}</td>
				</tr>
				<tr>
					<td style="width: 20%;">상세주소</td>
					<td style="text-align: left;">${dto.mem_address3}</td>
				</tr>
				<tr>
					<td style="width: 20%;">이메일</td>
					<td style="text-align: left;">${dto.mem_email}</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
<div class="container">
	<div class="row">
		<a href="/member/list" class="btn btn-default">회원목록 돌아가기</a>
	
		<a href="/member/update/${dto.mem_id}" class="btn btn-default">회원정보 수정하기</a>
	
		<a href="/member/delete/${dto.mem_id}" class="btn btn-danger">탈퇴</a>
	</div>
</div>



</body>
</html>
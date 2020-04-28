<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content = "text/html; charset=UTF-8">
	<meta name="viewport" content = "width=device-width, initial-scare=1">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href = "css/custom.css">
	<title>회원 가입</title>
	<script src="https://code.jqery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</head>
<body>
	<div class="container">
		<form method="post" action="./userRegister">
			<table class="table table-bordered table-hover" style="text-align: center; border: 1px solid #FFFFFF">
				<thead>
					<tr>
						<th colspan="3"><h4>회원 등록 양식입니다</h4></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 110px;"><h5>아이디</h5></td>
						<td><input class="form-control" type="text" id="userID" name="userID" maxLength = "20"></td>
						
					</tr>
					<tr>
						<td style="width: 110px;"><h5>비밀번호</h5></td>
						<td><input class="form-control" type="password" id="userPWD" name="userPWD" maxLength = "20"></td>
						
					</tr> 
					<tr>
						<td style="width: 110px;"><h5>비밀번호 확인</h5></td>
						<td><input class="form-control" type="password" id="userPWD2" name="userPWD2" maxLength = "20"></td>
						
					</tr> 
					<tr>
						<td style="width: 110px;"><h5>이름</h5></td>
						<td><input class="form-control" type="text" id="userName" name="userName" maxLength = "20"></td>
						
					</tr>
					<tr>
						<td style="width: 110px;"><h5>나이</h5></td>
						<td><input class="form-control" type="text" id="userAge" name="userAge" maxLength = "20"></td>
						
					</tr>
					<tr>
						<td style="width: 110px;"><h5>성별</h5></td>
						<td colspan="2">
							<div class="form-group" style="text-align: center; margin: 0 auto;">
								<div class="btn-group" data-toggle="buttons">
									<label class="btn btn-primary active">
										<input type="radio" name="userGender" autocomplete="off" value="남자" checked>남자
									</label>
									<label class="btn btn-primary active">
										<input type="radio" name="userGender" autocomplete="off" value="여자">여자
									</label>									
								</div>
							</div>
						</td>						
					</tr>
					<tr>
						<td style="width: 110px;"><h5>이메일</h5></td>
						<td><input class="form-control" type="email" id="userEmail" name="userEmail" maxLength = "20"></td>
						
					</tr>
					<tr>
						<td style="width: 110px;"><h5>전화번호</h5></td>
						<td><input class="form-control" type="text" id="userPhone" name="userPhone" maxLength = "20"></td>
						
					</tr>	
					<tr>
						<td style="text-align: left" colspan="3"><input class="btn btn-primary pull-right" type="submit" value="회원가입"></td>																							 
				</tbody>
			</table>
		</form>
	</div>

</body>
</html>
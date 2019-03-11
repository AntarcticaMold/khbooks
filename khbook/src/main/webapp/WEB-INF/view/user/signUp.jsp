<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta charset="UTF-8">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Piccolo Theme</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- CSS
================================================== -->
<link href='http://fonts.googleapis.com/css?family=Oswald'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap-responsive.css">
<link rel="stylesheet" href="css/custom-styles.css">

<!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <link rel="stylesheet" href="css/style-ie.css"/>
<![endif]-->

<!-- Favicons
================================================== -->
<link rel="shortcut icon" href="img/favicon.ico">
<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">

<!-- JS
================================================== -->
<script src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<script src="js/bootstrap.js"></script>
<fmt:formatDate value="${bean.date}" pattern="yyyy-MM-dd" />
<script type="text/javascript">

	$(document).ready(function(){		
		$('#signUp_btn').on('click', fn_signUp);
		
	
			
		$('#allChk').click(function(){
			if($('#allChk').prop("checked")){
				$("input[type=checkbox]").prop("checked", true);
			}else{
				$("input[type=checkbox]").prop("checked", false);
			}
		});
		
		
	});
	
	
	
	function fn_signUp(){
		var pwd=$('#userPwd').val();
		var pwdchk=$('#userPwdChk').val();
		
		if($('#userId').val().length <1){
			alert("아이디를 입력해 주세요.");
			return false;
		}else if($('#userPwd').val().length <1){
			alert("비밀번호를 입력해 주세요.");
			return false;
		}
		
		if (pwd!=pwdchk) {
            document.getElementById('pwrong').innerHTML = '비밀번호가 틀렸습니다. 다시 입력해 주세요';
            return false;
	    }
	
		
		if(!($('#c1').prop("checked",true)&&$('#c2').prop("checked",true))){
			alert("필수선택사항입니다.");
			return false;
		}
		
	

	}//end fn_signUp()
	
</script>

</head>

<body>
	<div class="color-bar-1"></div>

	<div class="container main-container">
		
		<!-- Begin Header -->
		<div class="row header">
			<div class="span5 logo">
				<a href="index.htm"><h4>KHBOOK</h4></a>
			</div>
		</div>
		<!-- End Header -->
		
		<hr />
		<!-- http://bootstrapdocs.com/v2.1.1/docs/base-css.html#tables -->
		<div>
			<!--User Login-->
				<form method="post" action="signUp.kh">
					<p style="color:blue;">* 필수입력 사항입니다</p>
					*<p><input id="userId" name="id" type="text" placeholder="아이디"/></p>
					*<p/><input id="userPwd" name="upwd" type="password" placeholder="비밀번호"/><br />
					<input id="userPwdChk" type="password" placeholder="비밀번호 확인"/>
					<p id="pwrong" style="color:red;"></p>
					*<p><input id="userName" name="uname" type="text" placeholder="이름"/></p>
					*<p><input id="userEmail" name="uemail" type="text" placeholder="이메일 주소"></p>
					* -를 빼고 입력해주세요.
					<p><input id="userPhone" name="uphone" type="text" placeholder="전화번호"></p>
					<p>선택정보</p>
					<p><input id="userBirth" name="ubirth" type="date" placeholder="생년월일"></p>
					 <div id="userGender">
					 <label>남</label><input type="radio" name="ugender" id="male" value=1>
					 <label>여</label><input type="radio" name="ugender" id="female" value=2>
					</div>
					<hr/>
					<p>약관동의</p>
						<div>
							<input type="checkbox" id="allChk">전체선택
							<input type="checkbox" id="c1">이용약관1(필수)
							<input type="checkbox" id="c2">이용약관2(필수)
							<input type="checkbox">이용약관3
							<input type="checkbox">이용약관4
						</div>
					<p><input id="signUp_btn" type="submit" value="회원가입"/></p>
				</form>
			</div>
			

		</div>
		<!-- End Container -->
</body>
</html>

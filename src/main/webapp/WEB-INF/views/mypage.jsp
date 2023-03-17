<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="resources/mypage/js/mypage.js"></script>
<link href="resources/mypage/css/mypage.css?after"
	rel="stylesheet" />
<title>MyPage</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="wrapper">
			<!-- 바깥쪽 div를 relative를 주고 안쪽 div를 absolute를 준다음 top %로 위치를 조정할수 있다.  -->
			<div id="wrapper_inner">
				<div id="pictureandbadgeandflower">
					<div id="picture">PICTURE</div>
					<div id="badge">BADGES</div>
					<div id="picturebutton">
						<input type="button" value="사진수정" id="pictureedit" /> <input
							type="button" value="사진삭제" id="picturedelete" />
					</div>
					<div id="flowerandflowerbutton">
						<div id="flower">FLOWER</div>
						<div id="flowerbutton">
							<input type="button" value="물주기" id="watering" />
						</div>
					</div>
				</div>
				<div>
					<div id="memberinformation_header"></div>
					<div>
						<table id="membertable">
							<tr>
								<td class="mypage_information">이름</td>
								<td><input type="text" name="name"
									style="width: 250px; height: 20px;" /></td>
							</tr>
							<tr>
								<td class="mypage_information">닉네임</td>
								<td><input type="text" name="nickname"
									style="width: 250px; height: 20px;" /></td>
							</tr>
							<tr>
								<td class="mypage_information">아이디(이메일)</td>
								<td><input type="text" name="id"
									style="width: 250px; height: 20px;" /></td>
							</tr>
							<tr>
								<td class="mypage_information">성별</td>
								<td><input type="text" name="gender"
									style="width: 250px; height: 20px;" /></td>
							</tr>
							<tr>
								<td class="mypage_information">생년월일</td>
								<td><input type="text" name="birth"
									style="width: 250px; height: 20px;" /></td>
							</tr>
							<tr>
								<td class="mypage_information">가입일</td>
								<td><input type="text" name="join"
									style="width: 250px; height: 20px;" /></td>
							</tr>
							<tr>
								<td class="mypage_information">지역</td>
								<td><input type="text" name="region"
									style="width: 250px; height: 20px;" /></td>
							</tr>
							<tr>
								<td class="mypage_information">매너점수</td>
								<td><input type="text" name="manner"
									style="width: 250px; height: 20px;" /></td>
							</tr>
						</table>
					</div>
					<div id="memberbutton">
						<input type="button" value="회원정보수정" id="informationedit" /> <input
							type="button" value="비밀번호변경" id="passwordedit" />
					</div>
				</div>

			</div>
		</div>
	</div>
</body>

</html>
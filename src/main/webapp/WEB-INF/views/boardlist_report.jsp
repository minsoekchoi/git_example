<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
<script src="resources/boardlist_report/js/boardlist_report.js"></script>
<link href="resources/boardlist_report/css/boardlist_report.css?after"
	rel="stylesheet" />
<title>신고내역리스트</title>
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-solid-rounded/css/uicons-solid-rounded.css'>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-regular-straight/css/uicons-regular-straight.css'>
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-regular-straight/css/uicons-regular-straight.css'>
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-thin-straight/css/uicons-thin-straight.css'>
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>


<body>
	<header>
		<input type="checkbox" class="openSidebarMenu" id="openSidebarMenu">
		<label for="openSidebarMenu" class="sidebarIconToggle">
			<div class="spinner diagonal part-1"></div>
			<div class="spinner horizontal"></div>
			<div class="spinner diagonal part-2"></div>
		</label>
		<div id="sidebarMenu">
			<ul class="sidebarMenuInner">
				<li><a href="#"><i class="fi fi-sr-home"><div>홈</div></i></a></li>
				<li><a href="#"><i class="fi fi-rr-user"><div>로그인</div></i></a></li>
				<li><a href="#"><i class="fi fi-rr-basketball"><div>농구</div></i></a></li>
				<li><a href="#"><i class="fi fi-rr-baby"><div>클라이밍</div></i></a></li>
				<li><a href="#"><i class="fi fi-rs-bowling"><div>볼링</div></i></a></li>
				<li><a href="#"><i class="fi fi-ts-racquet"><div>배드민턴</div></i></a></li>
				<li><a href="#"><i class="fi fi-rs-house-flood"><div>방만들기</div></i></a></li>
				<li><a href="#"><i class="fi fi-rr-thumbtack"><div>신고하기</div></i></a></li>
				<li><a href="#"><i class="fi fi-rr-comment-sms"><div>자유게시판</div></i></a></li>
			</ul>
		</div>
		<h3 style="text-align: center;">오늘 땡</h3>
		<div class="option">
			<img src="" class="fa-solid fa-bell"
				style="background-color: rgba(255, 255, 255, 0.2); border-radius: 50%; width: 50px; text-align: center;">
			<img src="" class="fa-solid fa-user"
				style="background-color: rgba(255, 255, 255, 0.2); border-radius: 50%; width: 50px; text-align: center;">
		</div>
	</header>

	<section>
		<div class="container_section">
			<div class="wrapper">
				<div id="wrapper_inner">
					<!-- style="user-select: none;" 마우스 드래그시 텍스트 아이콘 없애기  -->
					<h2 style="user-select: none;">신고내역리스트</h2>
					<div
						style="text-align: right; width: 1200px; height: 50px; background-color: BlanchedAlmond;">
						<div class="search-box">
							<input type="text" class="search-txt" name=""
								placeholder="search"> <a class="search-btn" href="#">
								<i class="fas fa-search"></i>
							</a>
						</div>
					</div>
					<%-- <table id="reporttable">
					<thead>
						<tr>
							<th>신고번호</th>
							<th>ID(신고받은사람)</th>
							<th>신고받은사람</th>
							<th>신고자</th>
							<th>신고사유</th>
							<th>신고일자</th>
							<th>신고삭제</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${empty board_list}">
								<tr>
									<td colspan="7"><h3>원하시는 자료는 존재하지 않습니다.</h3></td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach var="k" items="${board_list}" varStatus="vs">
									<tr>
										<td>${paging.totalRecord - ((paging.nowPage-1)*paging.numPerPage + vs.index)}</td>
										<td style="text-align: left; padding-left: 10px;"><c:forEach
												begin="1" end="${k.step}">
									&nbsp;[Re]
								</c:forEach> <a href="board_view.do?idx=${k.idx}&cPage=${paging.nowPage}">${k.title}</a>
										</td>
										<td>${k.writer}</td>
										<td>${k.regdate.substring(0,10)}</td>
										<td>${k.hit}</td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
					<!-- 페이지기법 -->
					<tfoot>
						<tr>
							<td colspan="6">
								이전 <c:choose>
									<c:when test="${paging.beginBlock > paging.pagePerBlock }">
										<a
											href="board_list.do?cPage=${paging.beginBlock-paging.pagePerBlock}">이전으로</a>
									</c:when>
								</c:choose> <!-- 블록안에 들어간 페이지번호들 --> <c:forEach
									begin="${paging.beginBlock}" end="${paging.endBlock}" step="1"
									var="k">
									현재 페이지는 링크X, 나머지는 해당 페이지로 링크 처리
									<c:if test="${k==paging.nowPage}">
									${k}
								</c:if>
									<c:if test="${k!=paging.nowPage}">
										<a href="board_list.do?cPage=${k}">${k}</a>
									</c:if>
								</c:forEach> <!-- 다음 --> <c:choose>
									<c:when test="${paging.endBlock < paging.totalPage }">
										<a
											href="bbs_list.do?cPage=${paging.beginBlock+paging.pagePerBlock}">다음으로</a>
									</c:when>
								</c:choose>
							</td>
							<td><input type="button" value="글쓰기" onclick="write_go()" />
							</td>
						</tr>
					</tfoot>
				</table> --%>
					<table class="rwd-table">
						<colgroup>
							<col width="100px" />
							<col width="200px" />
							<col width="200px" />
							<col width="200px" />
							<col width="200px" />
							<col width="120px" />
							<col width="120px" />
						</colgroup>
						<tbody>
							<tr>
								<th>신고번호</th>
								<th>ID(신고받은사람)</th>
								<th>닉네임(신고받은사람)</th>
								<th>신고자</th>
								<th>신고사유</th>
								<th>신고일자</th>
								<th>신고삭제</th>
							</tr>

							<tr class="KOTRA-fontsize-80">
								<td>1</td>
								<td>dfd232@naver.com</td>
								<td>망나니망나니망나니망나니망나니망나니망나니망나니망나니망나니망나니망나니망나니망나니망나니</td>
								<td>dfd43545@naver.com</td>
								<td>content content content</td>
								<td>2023.03.15</td>
								<td><input type="button" value="회원삭제" class="member_delete" /></td>
							</tr>

							<tr class="KOTRA-fontsize-80">
								<td>2</td>
								<td>2134232@naver.com</td>
								<td>가시</td>
								<td>dfd232@naver.com</td>
								<td>content content content</td>
								<td>2023.03.15</td>
								<td><input type="button" value="회원삭제" class="member_delete" /></td>
							</tr>

							<tr class="KOTRA-fontsize-80">
								<td>3</td>
								<td>dfd43545@naver.com</td>
								<td>겁쟁이</td>
								<td>2134232@naver.com</td>
								<td>content content content</td>
								<td>2023.03.15</td>
								<td><input type="button" value="회원삭제" class="member_delete" /></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</section>
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="footer-col">
					<h4>company</h4>
					<ul>
						<li><a href="#">about us</a></li>
						<li><a href="#">our services</a></li>
						<li><a href="#">privacy policy</a></li>
						<li><a href="#">affiliate program</a></li>
					</ul>
				</div>
				<div class="footer-col">
					<h4>get help</h4>
					<ul>
						<li><a href="#">FAQ</a></li>
						<li><a href="#">shipping</a></li>
						<li><a href="#">returns</a></li>
						<li><a href="#">order status</a></li>
						<li><a href="#">payment options</a></li>
					</ul>
				</div>
				<div class="footer-col">
					<h4>online shop</h4>
					<ul>
						<li><a href="#">watch</a></li>
						<li><a href="#">beg</a></li>
						<li><a href="#">shoes</a></li>
						<li><a href="#">dress</a></li>
					</ul>
				</div>
				<div class="footer-col">
					<h4>follow us</h4>
					<div class="social-links">
						<a href="https://www.facebook.com/"><i
							class="fab  fa-facebook-f"></i></a> <a
							href="https://www.youtube.com/"><i class="fab  fa-youtube"></i></a>
						<a href="https://www.instagram.com/"><i
							class="fab  fa-instagram"></i></a> <a href="https://www.naver.com/"><i
							class="fa-brands fa-line"></i></a>

					</div>
				</div>

			</div>
		</div>
	</footer>
</body>
</html>
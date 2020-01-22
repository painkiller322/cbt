<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>시험지 등록(5/6)</title>
<style>
body {
	margin: 50px;
}

div {
	border: 0px;
	width: 800px;
}

section {
	width: 700px;
	margin-bottom: 10px;
	padding: 10px;
}

footer {
	clear: both;
	width: 800px;
}

table {
	padding: 30px;
}

th {
	width: 100px;
}
</style>
<script>
	function ExamCheck() {
		if (frm.exam_nm.value == "") {
			alert("시험명이 입력되지 않았습니다.");
			frm.exam_nm.focus();
			return false;
		}
		if (frm.quest_cnt.value == "") {
			alert("문항 수를 입력하세요.");
			frm.quest_cnt.focus();
			return false;
		}
		if (frm.exam_time.value == "") {
			alert("시험시간을 입력하세요.");
			frm.exam_time.focus();
			return false;
		}
		if (frm.quest_group.value == "") {
			alert("시험종목을 선택하세요.");
			frm.quest_group.focus();
			return false;
		}
		if (frm.exam_desc.value == "") {
			alert("상세정보를 입력하세요.");
			frm.exam_desc.focus();
			return false;
		}
		if (frm.exam_type.value == "") {
			alert("출제유형을 선택하세요.");
			return false;
		}
		alert("시험등록이 완료 되었습니다.");
		return true;
	}
</script>
</head>
<body>
	<div>
		<h1>시험지 등록</h1>
		<form id="frm" name="frm" action="2_list.html" method="GET"
			onsubmit="return ExamCheck()">
			<table cellpadding="10">
				<tr>
					<th>시험명</th>
					<td colspan="3"><input type="text" name="exam_nm" size="50"
						placeholder="신입사원 레벨 테스트"></td>
				</tr>
				<tr>
					<th>문항 수</th>
					<td><input type="text" name="quest_cnt" size="5"
						placeholder="10"></td>
					<th>시험시간</th>
					<td><input type="text" name="exam_time" size="5"
						placeholder="1시간"></td>
				</tr>
				<tr>
					<th>시험종목</th>
					<td colspan="3"><select name="quest_group">
							<option value="001">데이터베이스</option>
							<option value="002">자바</option>
							<option value="003">오라클</option>
					</select></td>
				</tr>
				<tr>
					<th>상세정보</th>
					<td colspan="3"><textarea name="exam_desc" cols="60" rows="5"
							spellcheck="true">예담 주식회사 2020년 신입사원 공채 실기 테스트입니다.</textarea></td>
				</tr>
				<tr>
					<th>출제유형</th>
					<td><input type="radio" name="exam_type" value="R" id="R">
						<label for="R">랜덤출제</label> <input type="radio" name="exam_type"
						value="A" id="A"> <label for="A">고정출제</label></td>
				</tr>
				<tr>
					<td colspan="4" align="center"><input type="submit"
						value=" 등록 "
						style="color: white; text-align: center; width: 150px; line-height: 2.5em; border-radius: 4px; background-color: skyblue;">
						<input type="button" value=" 목록 "
						onclick="location.href='2_list.html'"
						style="color: white; text-align: center; width: 150px; line-height: 2.5em; border-radius: 4px; background-color: yellowgreen;">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
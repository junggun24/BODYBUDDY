<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>BODY BUDDY</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet" href="vendors/base/vendor.bundle.base.css">
<!-- endinject -->
<!-- plugin css for this page -->
<link rel="stylesheet"
	href="vendors/datatables.net-bs4/dataTables.bootstrap4.css">
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet" href="css/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="images/favicon.png" />
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="js/bootstrap.js">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/3.0.0/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet" />

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" />
<link rel="stylesheet" href="/path/to/jquery.timeselector.css">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"
	integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ"
	crossorigin="anonymous">
	
</script>
<script src="/path/to/jquery.timeselector.js"></script>

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>



<style>
body {
	text-align: center;
	
}
</style>
</head>


<body>
	<form id="frm" action="adinsert">
		<div class="container">
			<table id="recent-purchases-listing" class="table">
				<tbody>
					<tr>
						<th style="width: 200px">분류</th>

						<td style="vertical-align: middle"><select id="ex-select"
							name="ad_kind" onchange="selectExercise()" class="form-control"
							style="width: 150px;">
								<option value="nothing" selected disabled>선택해주세요</option>
								<option class="fitness" value="fitness">피트니스</option>
								<option class="yoga" value="yoga">요가</option>
								<option class="pt" value="pt">개인PT</option>
								<option class="pilates" value="pilates">필라테스</option>
						</select></td>
					</tr>
					<tr>
						<th>제목</th>
						<td style="vertical-align: middle"><input type="text"
							name="ad_title" style="height: 50px;"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td style="vertical-align: middle"><input type="text"
							name="ad_content" style="height: 300px; width: 500px"></td>
					</tr>
					
					
					
					<tr id="time" style="display: none">
						<th>옵션</th>
						<td style="vert ical-align: middle">
							<div class="radio">
								<div id="pre_set" style="display: none">
									<table>
										<tr>
											<th>옵션명</th>
											<th>기간</th>
											<th>시간</th>
											<th>요일</th>
											<th>횟수</th>
											<th>인원</th>
											<th>가격</th>
											<th>담당자</th>
											
										</tr>
										<tr>
											<td><input type="text" name="op_content3" value="" style="width: 100px" placeholder="옵션명"></td>
											<td>기간입력란</td>
											<td><input type="text" name="op_content3" value="" style="width: 100px" placeholder="시작시간"> 
											<input type="text" name="op_content4" value="" style="width: 100px"	placeholder="종료시간"></td>
											<td><div class="checkbox" style="width: 400px; font-size: 20px">
								<label for="foo1"> <input type="checkbox" id="foo1"
									name="day" value="mon">월
								</label> <label for="foo2"> <input type="checkbox" id="foo2"
									name="day" value="tue">화
								</label> <label for="foo3"> <input type="checkbox" id="foo3"
									name="day" value="wed">수
								</label> <label for="foo4"> <input type="checkbox" id="foo4"
									name="day" value="thu">목
								</label> <label for="foo5"> <input type="checkbox" id="foo5"
									name="day" value="fri">금
								</label> <label for="foo6"> <input type="checkbox" id="foo6"
									name="day" value="sat">토
								</label> <label for="foo7"> <input type="checkbox" id="foo7"
									name="day" value="sun">일
								</label>
							</div></td>
											<td><input type="text" name="op_content5" value="" style="width: 50px"	placeholder="횟수"></td>
											<td><input type="text" placeholder="모집인원">명</td>
											<td><input type="text" placeholder="가격(원)"></td>
											<td>${catelist}</td><!-- 담당자 -->
												</tr>
										
											</table><input type="button" value="삭제" onclick="remove_item(this)">
											<hr>
								</div>

								<div id="field"></div>
								<input type="button" value=" 추가 " onclick="add_item()"><br>

								<!-- <input name="op_content" type="text" placeholder="시작시간"
									style="width: 80px"> 
								<input name="op_content" type="text" placeholder="종료시간" style="width: 80px"> <br>
								<input name="op_content" type="text" placeholder="횟수"
									style="width: 160px"> -->
							</div>
						</td>
					</tr>

					


					<tr>
						<th>사진</th>
						<td colspan="5">사진내용</td>
						<td><input type="file" class="btn btn-secondary">업로드</input></td>
					</tr>
				</tbody>


			</table>
			<button id="ins" class="btn btn-secondary" type="submit">등록</button>
			<button id="back" class="btn btn-secondary" type="button">돌아가기</button>

		</div>
	</form>


	<!-- plugins:js -->
	<script src="vendors/base/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page-->
	<script src="vendors/chart.js/Chart.min.js"></script>
	<script src="vendors/datatables.net/jquery.dataTables.js"></script>
	<script src="vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
	<!-- End plugin js for this page-->
	<!-- inject:js -->
	<script src="js/off-canvas.js"></script>
	<script src="js/hoverable-collapse.js"></script>
	<script src="js/template.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page-->
	<script src="js/dashboard.js"></script>
	<script src="js/data-table.js"></script>
	<script src="js/jquery.dataTables.js"></script>
	<script src="js/dataTables.bootstrap4.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<!-- End custom js for this page-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.8.2/moment-with-locales.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/3.0.0/js/bootstrap-datetimepicker.min.js"></script>
</body>

<script>
	//TIMEPICKER
	
	//
	function add_item() {
		var i = 0;
		var div = document.createElement('div');
		div.innerHTML = document.getElementById('pre_set').innerHTML;
		document.getElementById('field').appendChild(div);
	}
	function remove_item(obj) {
		// obj.parentNode 를 이용하여 삭제
		document.getElementById('field').removeChild(obj.parentNode);
	}
	$(".box input").attr("abled", true);
	$("#chk").on('click', function() {

		var chk = $('input:checkbox[id="chk"]').is(":checked");
		if (chk == true) {
			$(".box input").attr("disabled", true);
			$(".box").addClass("on");
			$("#testDatepicker").val("");

		} else {
			$(".box input").removeAttr('disabled');
			$(".box").removeClass("on");

		}

	});
	$(function() {
		$("#testDatepicker").datepicker({
			changeMonth : true,
			changeYear : true,
			nextText : '다음 달',
			prevText : '이전 달'
		});
	});
	function selectExercise() {
		var exSelect = document.getElementById("ex-select");

		// select element에서 선택된 option의 value가 저장된다.
		var selectValue = exSelect.options[exSelect.selectedIndex].value;

		// select element에서 선택된 option의 text가 저장된다.
		var selectText = exSelect.options[exSelect.selectedIndex].text;

		if (selectValue == "fitness") {
			$("#frm")[0].reset();
			$("#closed").show();
			$("#damdang").hide();
			$("#time").hide();
			$("#day").hide();
		} else {
			$("#frm")[0].reset();
			$("#damdang").show();
			$("#time").show();
			$("#day").show();
			$("#closed").hide();
		}
		$(function() {
			$("#testDatepicker").datepicker({
				changeMonth : true,
				changeYear : true,
				nextText : '다음 달',
				prevText : '이전 달'
			});
		});
		alert(selectText);
	}
</script>

</html>

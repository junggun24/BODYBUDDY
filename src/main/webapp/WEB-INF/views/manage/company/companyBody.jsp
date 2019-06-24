<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/vendors/mdi/css/materialdesignicons.min.css">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/vendors/base/vendor.bundle.base.css">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/vendors/datatables.net-bs4/dataTables.bootstrap4.css">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<link type="text/css" rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/images/favicon.png" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
</head>

<body>
	<div id="bodybody" style="left: 0px; top: 15px; position: relative;">
		<div
			style="top: 0px; left: 0px; position: absolute; width: 550px; height: 300px; ">

			<h3>최근 신규 가입</h3>

			<table class="table table-hover">
				<thead>
					<tr>
						<th>이름</th>
						<th>아이디</th>
						<th>가입날짜</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="member" items="${mList }">
						<tr>
							<td><a href="#" onclick="profileN('${member.m_id }')">${member.m_name }</a></td>
							<td><a href="#" onclick="profileN('${member.m_id }')">${member.m_id }</a></td>
							<td>${member.ps_date }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>
		<div
			style="left: 550px; position: absolute; width: 550px; height: 300px;">


			<h3>최근 판매 내역</h3>

			<table class="table table-hover">
				<thead>
					<tr>
						<!-- <th>판매번호</th> -->
						<th>광고명</th>
						<th>결제자</th>
						<th>금액</th>
						<th>판매일자</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="sales" items="${sList }">
						<tr>
							<%-- <td><a href="#" onclick="advertisedetail(${sales.ps_code })">${sales.ps_code }</a></td> --%>
							<td style="text-align: center; font-size: 12px;"><a href="#"
								onclick="advertisedetail(${sales.ps_adcode})">${sales.ad_title}</a></td>
							<td style="font-size: 12px;"><a href="#" onclick="advertisedetail(${sales.m_id})">${sales.m_name }(${sales.m_id})</a></td>
							<td style="text-align: right; font-size: 12px;">${sales.ps_price }</td>
							<td style="font-size: 12px;">${sales.ps_date }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div
			style="left: 1100px; position: absolute; width: 550px; height: 300px;">
			<h3>등록중인 광고</h3>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>광고번호</th>
						<th>광고명</th>
						<th>등록일자</th>
						<th>상태</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<c:forEach var="ad" items="${aList }">
						<tr>
							<td>${ad.ad_code }</td>
							<td><a href="#" onclick="profileN('${ad.ad_title }')">${ad.ad_title }</a></td>
							<td>${ad.ad_date}</td>
							<td>${ad.ad_status}</td>
						</tr>
					</c:forEach>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<!-- </div> -->
	<!-- <div class="main-panel" style="width: 100%;">
		<div class="content-wrapper">
			<div class="row">
				<div class="col-md-12 grid-margin stretch-card">
					<div class="card">
						<div class="card-body dashboard-tabs p-0">
							<ul class="nav nav-tabs px-4" role="tablist">
								<li class="nav-item"><a class="nav-link active"
									id="question-tab" data-toggle="tab" href="#question" role="tab"
									aria-controls="question" aria-selected="true"
									style="border-bottom-color: #71c016">받은 문의</a></li>
								<li class="nav-item"><a class="nav-link"
									id="memberList-tab" data-toggle="tab" href="#memberList"
									role="tab" aria-controls="memberList" aria-selected="false"
									style="border-bottom-color: #71c016">가입 회원</a></li>
								<li class="nav-item"><a class="nav-link" id="advertise-tab"
									data-toggle="tab" href="#advertise" role="tab"
									aria-controls="advertise" aria-selected="false"
									style="border-bottom-color: #71c016">등록중인 광고</a></li>

							</ul>
							<div class="tab-content py-0 px-0">
								<div class="tab-pane fade show active" id="question"
									role="tabpanel" aria-labelledby="question-tab">
									<div class="d-flex flex-wrap justify-content-xl-between">


										<div
											class="d-flex border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
											<i class="mdi mdi-new-box mr-3 icon-lg text-danger"></i>
											<div class="d-flex flex-column justify-content-around">
												<small class="mb-1 text-muted">새 항목</small>
												<h5 class="mr-2 mb-0">n개</h5>
											</div>
										</div>
										<div class="table-responsive">
											<table class="table table-hover">
												<thead>
													<tr>
														<th>User</th>
														<th>Product</th>
														<th>Sale</th>
														<th>Status</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>Jacob</td>
														<td>Photoshop</td>
														<td class="text-danger">28.76% <i
															class="mdi mdi-arrow-down"></i></td>
														<td><label class="badge badge-danger">Pending</label></td>
													</tr>
													<tr>
														<td>Messsy</td>
														<td>Flash</td>
														<td class="text-danger">21.06% <i
															class="mdi mdi-arrow-down"></i></td>
														<td><label class="badge badge-warning">In
																progress</label></td>
													</tr>

												</tbody>
											</table>
										</div>

									</div>
								</div>
								<div class="tab-pane fade" id="memberList" role="tabpanel"
									aria-labelledby="memberList-tab">
									<div class="d-flex flex-wrap justify-content-xl-between">
										<div
											class="d-none d-xl-flex border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
											<i class="mdi mdi-calendar-today icon-lg mr-3 text-primary"></i>
											<div class="d-flex flex-column justify-content-around">
												<small class="mb-1 text-muted">날짜</small>
												<div class="dropdown">
													<a
														class="btn btn-secondary dropdown-toggle p-0 bg-transparent border-0 text-dark shadow-none font-weight-medium"
														href="#" role="button" id="dropdownMenuLinkA"
														data-toggle="dropdown" aria-haspopup="true"
														aria-expanded="false">
														<h5 class="mb-0 d-inline-block">Sysdate</h5>
													</a>
													<div class="dropdown-menu"
														aria-labelledby="dropdownMenuLinkA">
														<a class="dropdown-item" href="#">어제...</a> <a
															class="dropdown-item" href="#">엊그제...</a> <a
															class="dropdown-item" href="#">date3...</a>
													</div>
												</div>
											</div>
										</div>

										<div
											class="d-flex border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
											<i class="mdi mdi-new-box mr-3 icon-lg text-danger"></i>
											<div class="d-flex flex-column justify-content-around">
												<small class="mb-1 text-muted">새 항목</small>
												<h5 class="mr-2 mb-0">n개</h5>
											</div>
										</div>
										<div class="table-responsive">
											<table class="table table-hover">
												<thead>
													<tr>
														<th>User</th>
														<th>Product</th>
														<th>Sale</th>
														<th>Status</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>Jacob</td>
														<td>Photoshop</td>
														<td class="text-danger">28.76% <i
															class="mdi mdi-arrow-down"></i></td>
														<td><label class="badge badge-danger">Pending</label></td>
													</tr>
													<tr>
														<td>Messsy</td>
														<td>Flash</td>
														<td class="text-danger">21.06% <i
															class="mdi mdi-arrow-down"></i></td>
														<td><label class="badge badge-warning">In
																progress</label></td>
													</tr>
													<tr>
														<td>John</td>
														<td>Premier</td>
														<td class="text-danger">35.00% <i
															class="mdi mdi-arrow-down"></i></td>
														<td><label class="badge badge-info">Fixed</label></td>
													</tr>
													<tr>
														<td>Peter</td>
														<td>After effects</td>
														<td class="text-success">82.00% <i
															class="mdi mdi-arrow-up"></i></td>
														<td><label class="badge badge-success">Completed</label></td>
													</tr>

												</tbody>
											</table>
										</div>

									</div>
								</div>

								<div class="tab-pane fade" id="advertise" role="tabpanel"
									aria-labelledby="advertise-tab">
									<div class="d-flex flex-wrap justify-content-xl-between">
										<div
											class="d-none d-xl-flex border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
											<i class="mdi mdi-calendar-today icon-lg mr-3 text-primary"></i>
											<div class="d-flex flex-column justify-content-around">
												<small class="mb-1 text-muted">날짜</small>
												<div class="dropdown">
													<a
														class="btn btn-secondary dropdown-toggle p-0 bg-transparent border-0 text-dark shadow-none font-weight-medium"
														href="#" role="button" id="dropdownMenuLinkA"
														data-toggle="dropdown" aria-haspopup="true"
														aria-expanded="false">
														<h5 class="mb-0 d-inline-block">Sysdate</h5>
													</a>
													<div class="dropdown-menu"
														aria-labelledby="dropdownMenuLinkA">
														<a class="dropdown-item" href="#">어제...</a> <a
															class="dropdown-item" href="#">엊그제...</a> <a
															class="dropdown-item" href="#">date3...</a>
													</div>
												</div>
											</div>
										</div>

										<div
											class="d-flex border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
											<i class="mdi mdi-new-box mr-3 icon-lg text-danger"></i>
											<div class="d-flex flex-column justify-content-around">
												<small class="mb-1 text-muted">새 항목</small>
												<h5 class="mr-2 mb-0">n개</h5>
											</div>
										</div>
										<div class="table-responsive">
											<table class="table table-hover">
												<thead>
													<tr>
														<th>User</th>
														<th>Product</th>
														<th>Sale</th>
														<th>Status</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>Jacob</td>
														<td>Photoshop</td>
														<td class="text-danger">28.76% <i
															class="mdi mdi-arrow-down"></i></td>
														<td><label class="badge badge-danger">Pending</label></td>
													</tr>
													<tr>
														<td>Messsy</td>
														<td>Flash</td>
														<td class="text-danger">21.06% <i
															class="mdi mdi-arrow-down"></i></td>
														<td><label class="badge badge-warning">In
																progress</label></td>
													</tr>
													<tr>
														<td>John</td>
														<td>Premier</td>
														<td class="text-danger">35.00% <i
															class="mdi mdi-arrow-down"></i></td>
														<td><label class="badge badge-info">Fixed</label></td>
													</tr>
													<tr>
														<td>Peter</td>
														<td>After effects</td>
														<td class="text-success">82.00% <i
															class="mdi mdi-arrow-up"></i></td>
														<td><label class="badge badge-success">Completed</label></td>
													</tr>
													<tr>
														<td>Dave</td>
														<td>53275535</td>
														<td class="text-success">98.05% <i
															class="mdi mdi-arrow-up"></i></td>
														<td><label class="badge badge-warning">In
																progress</label></td>
													</tr>
												</tbody>
											</table>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row" style="height: 500px">
				
			</div>
		</div>
	</div> -->
	<div class="col-lg-12 grid-margin stretch-card"
		style="top: 400px; left: -10px;">
		<div class="card">
			<div class="card-body">
				<div class="chartjs-size-monitor"
					style="position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
					<div class="chartjs-size-monitor-expand"
						style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
						<div
							style="position: absolute; width: 1000px; height: 1000px; left: 0; top: 0"></div>
					</div>
					<div class="chartjs-size-monitor-shrink"
						style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
						<div
							style="position: absolute; width: 200%; height: 200%; left: 0; top: 0"></div>
					</div>
				</div>
				<h4 class="card-title">트레이너 현황판(매출/실적 간단히보기)</h4>
				<canvas id="barChart" width="380" height="189"
					class="chartjs-render-monitor"
					style="display: block; height: 211px; width: 423px;"></canvas>
			</div>
		</div>
	</div>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/vendors/base/vendor.bundle.base.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/vendors/chart.js/Chart.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/vendors/datatables.net/jquery.dataTables.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/off-canvas.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/hoverable-collapse.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/template.js"></script>
	<script type="text/javascript" src=" /resources/js/dashboard.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/data-table.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/jquery.dataTables.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/dataTables.bootstrap4.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
</body>

</html>

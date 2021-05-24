<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page import="com.javaex.dao.CartDao"%>
<%@ page import="com.javaex.vo.CartVo"%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<style>
body {
	margin-top: 20px;
	color: #484b51;
}

.text-secondary-d1 {
	color: #728299 !important;
}

.page-header {
	margin: 0 0 1rem;
	padding-bottom: 1rem;
	padding-top: .5rem;
	border-bottom: 1px dotted #e2e2e2;
	display: -ms-flexbox;
	display: flex;
	-ms-flex-pack: justify;
	justify-content: space-between;
	-ms-flex-align: center;
	align-items: center;
}

.page-title {
	padding: 0;
	margin: 0;
	font-size: 1.75rem;
	font-weight: 300;
}

.brc-default-l1 {
	border-color: #dce9f0 !important;
}

.ml-n1, .mx-n1 {
	margin-left: -.25rem !important;
}

.mr-n1, .mx-n1 {
	margin-right: -.25rem !important;
}

.mb-4, .my-4 {
	margin-bottom: 1.5rem !important;
}
/* hr {
    margin-top: 1rem;
    margin-bottom: 1rem;
    border: 0;
    border-top: 1px solid rgba(0,0,0,.1);
} */
.text-grey-m2 {
	color: #888a8d !important;
}

.text-success-m2 {
	color: #86bd68 !important;
}

.font-bolder, .text-600 {
	font-weight: 600 !important;
}

.text-110 {
	font-size: 110% !important;
}

.text-blue {
	color: #478fcc !important;
}

.pb-25, .py-25 {
	padding-bottom: .75rem !important;
}

.pt-25, .py-25 {
	padding-top: .75rem !important;
}

.bgc-default-tp1 {
	background-color: rgba(121, 169, 197, .92) !important;
}

.bgc-default-l4, .bgc-h-default-l4:hover {
	background-color: #f3f8fa !important;
}

.page-header .page-tools {
	-ms-flex-item-align: end;
	align-self: flex-end;
}

.btn-light {
	color: #757984;
	background-color: #f5f6f9;
	border-color: #dddfe4;
}

.w-2 {
	width: 1rem;
}

.text-120 {
	font-size: 120% !important;
}

.text-primary-m1 {
	color: #4087d4 !important;
}

.text-danger-m1 {
	color: #dd4949 !important;
}

.text-blue-m2 {
	color: #68a3d5 !important;
}

.text-150 {
	font-size: 150% !important;
}

.text-60 {
	font-size: 60% !important;
}

.text-grey-m1 {
	color: #7b7d81 !important;
}

.align-bottom {
	vertical-align: bottom !important;
}

a:link {
	font: 1em;
	font-family: 'Jeju Gothic', sans-serif;
	text-align: center;
	text-decoration: none;
}

a:visited {
	text-decoration: none;
	color: black;
}

a:active {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: underline;
	color: red;
}
</style>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<script type="text/javascript">
	function order() {
		alert("결제페이지로 이동합니다.");
	}
</script>

</head>
<body>

	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

	<link
		href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
		rel="stylesheet" />

	<div class="page-content container">
		<!--  <div class="page-header text-blue-d2">
        <h1 class="page-title text-secondary-d1">
            Invoice
            <small class="page-info">
                <i class="fa fa-angle-double-right text-80"></i>
                ID: #111-222
            </small>
        </h1>
        <div class="page-tools">
            <div class="action-buttons">
                <a class="btn bg-white btn-light mx-1px text-95" href="#" data-title="Print">
                    <i class="mr-1 fa fa-print text-primary-m1 text-120 w-2"></i>
                    Print
                </a>
                <a class="btn bg-white btn-light mx-1px text-95" href="#" data-title="PDF">
                    <i class="mr-1 fa fa-file-pdf-o text-danger-m1 text-120 w-2"></i>
                    Export
                </a>
            </div>
        </div>
    </div>
 -->
		<div class="container px-0">
			<div class="row mt-4">
				<div class="col-12 col-lg-10 offset-lg-1">
					<div class="row">
						<div class="col-12">
							<!-- <div class="text-center text-150">
                            <i class="fa fa-book fa-2x text-success-m2 mr-1"></i>
                            <span class="text-default-d3">Bootdey.com</span>
                        </div> -->
						</div>
					</div>
					<!-- .row -->

					<!--  <hr class="row brc-default-l1 mx-n1 mb-4" /> -->

					<!-- <div class="row">
						<div class="col-sm-6">
							<div>
								<span class="text-sm text-grey-m2 align-middle">To:</span> <span
									class="text-600 text-110 text-blue align-middle">Alex
									Doe</span>
							</div>
							<div class="text-grey-m2">
								<div class="my-1">Street, City</div>
								<div class="my-1">State, Country</div>
								<div class="my-1">
									<i class="fa fa-phone fa-flip-horizontal text-secondary"></i> <b
										class="text-600">111-111-111</b>
								</div>
							</div>
						</div> -->
						<!-- /.col -->

						<div
							class="text-95 col-sm-6 align-self-start d-sm-flex justify-content-end">
							<hr class="d-sm-none" />
							<div class="text-grey-m2">
								<!--  <div class="mt-1 mb-2 text-secondary-m1 text-600 text-125">
                                Invoice
                            </div>
                            <div class="my-2"><i class="fa fa-circle text-blue-m2 text-xs mr-1"></i> <span class="text-600 text-90">ID:</span> #111-222</div>
                            <div class="my-2"><i class="fa fa-circle text-blue-m2 text-xs mr-1"></i> <span class="text-600 text-90">Issue Date:</span> Oct 12, 2019</div>
                            <div class="my-2"><i class="fa fa-circle text-blue-m2 text-xs mr-1"></i> <span class="text-600 text-90">Status:</span> <span class="badge badge-warning badge-pill px-25">Unpaid</span></div> -->
							</div>
						</div>
						<!-- /.col -->
					</div>

					<div class="mt-4">
						<div class="row text-600 text-white bgc-default-tp1 py-25">
							<div class="d-none d-sm-block col-1">카트번호</div>
							<div class="col-9 col-sm-5">상품명</div>
							<div class="d-none d-sm-block col-4 col-sm-2">갯수</div>
							<div class="d-none d-sm-block col-sm-2">상품 금액</div>
							<div class="col-2">총 상품금액</div>
						</div>
						<c:set var="sum" value="0" />
						<c:forEach items="${cart}" var="cart">
							<div class="text-95 text-secondary-d3">
								<div class="row mb-2 mb-sm-0 py-25">
									<c:if test="${User.email == cart.email}">
										<div class="d-none d-sm-block col-1">${cart.cart_no}</div>
										<div class="col-9 col-sm-5">${cart.wine_name}</div>
										<div class="d-none d-sm-block col-2">${cart.wine_count}
											개</div>
										<div class="d-none d-sm-block col-2 text-95">
											<fmt:formatNumber value="${cart.wine_price}" pattern="#,###" />
											원
										</div>

										<div class="col-1 text-secondary-d2">
											<fmt:formatNumber value="${cart.wine_total_price}"
												pattern="#,###" />
											원
											
											
										</div>
										
										<div class="col-1">
										
										<a href="/wine/cartDelete?wine_no=${cart.wine_no}">삭제</a></div>

									</c:if>
								</div>
							</div>
							<c:set var="sum" value="${sum + (cart.wine_total_price)}" />
						</c:forEach>


						<div class="row border-b-2 brc-default-l2"></div>
						
						<div></div>

						<div class="row mt-3">
								<div class="row my-2 align-items-center bgc-primary-l3 p-2">
									<div class="col-9 text-right"></div>
									<div class="col-3">
										최종합계금액 : &emsp;<fmt:formatNumber value="${sum}" pattern="#,###" />원
									</div>
								</div>
							</div>
						</div>

						<hr />

						<div>
							<!-- <span class="text-secondary-d1 text-105">Thank you for your business</span> -->
							<a href="/wine/pay?email=${User.email}"
								class="btn btn-info btn-bold px-10 float-right mt-3 mt-lg-0"
								onclick="order()">결제하기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
</html>
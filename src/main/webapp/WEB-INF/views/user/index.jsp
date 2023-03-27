<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>F88</title>
<!-- Link reset css -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"
	integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- Link icon-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- Link css -->
<link rel="stylesheet"
	href="<c:url value="/assets/user/css/base.css?version=51"/>" />
<link rel="stylesheet"
	href="<c:url value="/assets/user/css/home.css?version=51"/>" />
<link rel="stylesheet"
	href=" <c:url value="/assets/user/css/blog.css?version=51"/> " />

<!-- Link font chữ -->
<style>
@import
	url('https://fonts.googleapis.com/css2?family=ABeeZee&family=Mitr:wght@500;600&family=Montserrat:wght@400;500;600&family=Nunito:wght@400;500;600;700;800&family=Paytone+One&family=Tourney:wght@400;500;600;700&display=swap')
	;
</style>
</head>
<body>
	<div class="app">
		<!-- Header -->
		<div class="header">
			<img
				src="https://fullstack.edu.vn/static/media/f8-icon.18cd71cfcfa33566a22b.png"
				class="header-logo" />
			<div class="header-search">
				<div class="search">
					<i class="nav-icon-search fa-solid fa-magnifying-glass"></i> <input
						class="search-input" type="text"
						placeholder="Tìm kiếm khóa học, bài viết, ..." />
				</div>
			</div>

			<c:if test="${ not empty LoginInfo }">
				<a href="#">
					<li class="sidebar-item"><span>${LoginInfo.display_name }</span></li>
				</a>
				<a href="<c:url value="/dang-xuat"/>">
					<li class="sidebar-item"><span>Đăng xuất</span></li>
				</a>
			</c:if>

			<c:if test="${ empty LoginInfo }">
				<a href="<c:url value="/dang-nhap"/>">
					<li class="sidebar-item"><span>Đăng nhập</span></li>
				</a>
				<a href="<c:url value="/dang-ky"/>">
					<li class="sidebar-item"><span>Đăng ký</span></li>
				</a>
			</c:if>


			<div class="header__navbar-item header__navbar-user">
				<img
					src="https://cdn.shopify.com/s/files/1/1703/7103/products/red_velvet_cupcake_1000x.jpg?v=1601426850"
					alt="" class="header__navbar-user-img" />
				<ul class="header__navbar-user-menu">
					<li class="header__navbar-user-item"><a href="">Thông tin
							cá nhân</a></li>
					<li class="header__navbar-user-item"><a href="">Khóa học</a></li>
					<li class="header__navbar-user-item"><a href="">Bài viết
							của tôi</a></li>
					<li
						class="header__navbar-user-item header__navbar-user-item--seperate">
						<a href="/deleteCookie">Đăng xuất</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="container-wrap">
			<!-- Sidebar -->
			<div class="sidebar">
				<ul class="sidebar-list">
					<a class="sidebar-item-link" href="">
						<li class="sidebar-item"><i
							class="sidebar-icon fa-solid fa-house"></i><span>Home</span></li>
					</a>
					<a class="sidebar-item-link" href="">
						<li class="sidebar-item"><i
							class="sidebar-icon fa-solid fa-road"></i><span>Lộ trình</span></li>
					</a>
					<a class="sidebar-item-link" href="">
						<li class="sidebar-item"><i
							class="sidebar-icon fa-solid fa-lightbulb"></i><span>Học</span></li>
					</a>
					<a class="sidebar-item-link" href="">
						<li class="sidebar-item"><i
							class="sidebar-icon fa-solid fa-newspaper"></i><span>Blog</span>
					</li>
					</a>
				</ul>
			</div>
			<!-- Content -->
			<div class="content">
				<!-- Home -->
				<div class="home-page">
					<div class="home-product">
						<div class="product-heading">Khóa học Pro</div>
						<div class="product-list">
							<c:forEach var="item" items="${products}">
								<a href="" class="product-item"> <img src="${item.img }"></img>
									<div class="product-item-des">${item.name }</div>
									<div class="product-item-price">
										<fmt:formatNumber type="number" groupingUsed="true"
											value="${item.price}" />
										đ
									</div>
							</c:forEach>
						</div>
					</div>
					<div class="home-product">
						<div class="product-heading">Khóa học miễn phí</div>
						<div class="product-list">
							<a href="" class="product-item"> <img
								src="https://files.fullstack.edu.vn/f8-prod/courses/7.png"></img>
								<div class="product-item-des">Kiến thức nhập môn IT</div>
								<div class="product-item-total">
									<i class="fa-solid fa-users"></i> <span>100.510</span>
								</div>
							</a> <a href="" class="product-item"> <img
								src="https://files.fullstack.edu.vn/f8-prod/courses/2.png"></img>
								<div class="product-item-des">HTML CSS từ Zero đến Hero</div>
								<div class="product-item-total">
									<i class="fa-solid fa-users"></i> <span>100.510</span>
								</div>
							</a> <a href="" class="product-item"> <img
								src="https://files.fullstack.edu.vn/f8-prod/courses/2.png"></img>
								<div class="product-item-des">HTML CSS từ Zero đến Hero</div>
								<div class="product-item-total">
									<i class="fa-solid fa-users"></i> <span>100.510</span>
								</div>
							</a> <a href="" class="product-item"> <img
								src="https://files.fullstack.edu.vn/f8-prod/courses/2.png"></img>
								<div class="product-item-des">HTML CSS từ Zero đến Hero</div>
								<div class="product-item-total">
									<i class="fa-solid fa-users"></i> <span>100.510</span>
								</div>
							</a>
						</div>
					</div>


					<div class="home-product">
						<div class="product-heading">Bài viết mới nhất</div>
						<div class="product-list">
							<a href="" class="product-item"> <img
								src="https://files.fullstack.edu.vn/f8-prod/blog_posts/65/6139fe28a9844.png"></img>
								<div class="product-item-des">Tổng hợp các sản phẩm của
									học viên tại F8</div>
								<div class="product-item-user">
									<img
										src="https://files.fullstack.edu.vn/f8-prod/user_avatars/9143/6263caafdf588.jpg"
										alt=""> <span>Khai Vo</span>
								</div>
							</a> <a href="" class="product-item"> <img
								src="https://files.fullstack.edu.vn/f8-prod/blog_posts/279/6153f692d366e.jpg"></img>
								<div class="product-item-des">Tổng hợp các sản phẩm của
									học viên tại F8</div>
								<div class="product-item-user">
									<img
										src="https://files.fullstack.edu.vn/f8-prod/user_avatars/9143/6263caafdf588.jpg"
										alt=""> <span>Khai Vo</span>
								</div>
							</a> <a href="" class="product-item"> <img
								src="https://files.fullstack.edu.vn/f8-prod/blog_posts/273/614043e523ad9.png"></img>
								<div class="product-item-des">Tổng hợp các sản phẩm của
									học viên tại F8</div>
								<div class="product-item-user">
									<img
										src="https://files.fullstack.edu.vn/f8-prod/user_avatars/9143/6263caafdf588.jpg"
										alt=""> <span>Khai Vo</span>
								</div>
							</a> <a href="" class="product-item"> <img
								src="https://files.fullstack.edu.vn/f8-prod/blog_posts/6560/63f57e237dd2b.jpg"></img>
								<div class="product-item-des">Tổng hợp các sản phẩm của
									học viên tại F8</div>
								<div class="product-item-user">
									<img
										src="https://files.fullstack.edu.vn/f8-prod/user_avatars/9143/6263caafdf588.jpg"
										alt=""> <span>Khai Vo</span>
								</div>
							</a>
						</div>
					</div>
				</div>

				<!-- Blog -->
				<div class="blog-page">
					<div class="product-heading">Bài viết nổi bật</div>
					<div class="blog-introduct">Tổng hợp các bài viết chia sẻ về
						kinh nghiệm tự học lập trình online và các kỹ thuật lập trình web.
					</div>
					<div class="blog-list">
						<a href="" class="blog-item-link">
							<div class="blog-item">
								<div class="blog-heading">
									<div class="blog-user">
										<div class="product-item-user">
											<img
												src="https://files.fullstack.edu.vn/f8-prod/user_avatars/9143/6263caafdf588.jpg"
												alt="" /> <span>Khai Vo</span>
										</div>
									</div>
									<div class="blog-action">
										<i class="blog-action-save fa-regular fa-bookmark"></i>
									</div>
								</div>
								<div class="blog-content">
									<div class="blog-left">
										<div class="blog-title">Ngành gì đang hot hiện nay? Top
											ngành nghề dự báo trở thành xu thế</div>
										<div class="blog-des">Nếu bạn đang phân vân trong việc
											chọn ngành, chuyển ngành thì có thể tham khảo bài viết này để
											biết ngành gì đang hot hiện nay và top các ngành nghề được dự
											đoán sẽ trở thành xu thế nhé!</div>
										<div class="blog-info">
											<span>5</span> ngày trước
										</div>
									</div>
									<div class="blog-right">
										<img
											src="https://files.fullstack.edu.vn/f8-prod/blog_posts/6630/63fd6b687b938.jpg"
											alt="" />
									</div>
								</div>
							</div>
						</a> <a href="" class="blog-item-link">
							<div class="blog-item">
								<div class="blog-heading">
									<div class="blog-user">
										<div class="product-item-user">
											<img
												src="https://files.fullstack.edu.vn/f8-prod/user_avatars/9143/6263caafdf588.jpg"
												alt="" /> <span>Khai Vo</span>
										</div>
									</div>
									<div class="blog-action">
										<i class="blog-action-save fa-regular fa-bookmark"></i>
									</div>
								</div>
								<div class="blog-content">
									<div class="blog-left">
										<div class="blog-title">Ngành gì đang hot hiện nay? Top
											ngành nghề dự báo trở thành xu thế</div>
										<div class="blog-des">Nếu bạn đang phân vân trong việc
											chọn ngành, chuyển ngành thì có thể tham khảo bài viết này để
											biết ngành gì đang hot hiện nay và top các ngành nghề được dự
											đoán sẽ trở thành xu thế nhé!</div>
										<div class="blog-info">
											<span>5</span> ngày trước
										</div>
									</div>
									<div class="blog-right">
										<img
											src="https://files.fullstack.edu.vn/f8-prod/blog_posts/6630/63fd6b687b938.jpg"
											alt="" />
									</div>
								</div>
							</div>
						</a>
					</div>
				</div>

				<!-- 
                        Trang khóa học của tôi
                        Trang bài viết: Bài viết của tôi, bài viết đã lưu, tạo bài viết
                        Trang footer
                        Trang thông tin cá nhân 
                    -->
			</div>
		</div>
	</div>
</body>
</html>

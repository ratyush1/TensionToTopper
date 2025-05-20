<%@page import="com.entity.User"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Tension to Topper</title>
    <%@include file="all_component/allCSS.jsp"%>
    <style type="text/css">
        .hero-section {
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: #fff5f5;
            padding: 40px 60px;
            gap: 40px;
            flex-wrap: wrap;
        }

        .hero-text {
            max-width: 40%;
        }

        .hero-text h1 {
            font-size: 3rem;
            color: #270cf5;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .hero-text p {
            font-size: 1.2rem;
            color: #2c3e50;
            margin: 0;
        }

        .hero-image {
            max-width: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .hero-image img {
            width: 100%;
            height: auto;
            max-height: 400px;
            border-radius: 12px;
            object-fit: cover;
        }

        @media (max-width: 768px) {
            .hero-section {
                flex-direction: column;
                gap: 20px;
            }

            .hero-text,
            .hero-image {
                max-width: 100%;
                text-align: center;
            }

            .hero-image img {
                max-height: 300px;
            }
        }

        .crd-ho:hover {
            background-color: #fcf7f7;
        }
    </style>
</head>
<body style="background-color: #f7f7f7;">

<%
    User u = (User) session.getAttribute("userobj");
%>

<%@include file="all_component/navbar.jsp"%>

<!-- Hero Section Start -->
<div class="container-fluid hero-section">
    <div class="hero-text">
        <h1>Tension to Topper</h1>
        <p>When your syllabus is scarier than your ex</p>
        <p> TensionToTopper's got you.</p>
    </div>
    <div class="hero-image">
        <img src="img/b.jpg" alt="Hero Image">
    </div>
</div>
<!-- Hero Section End -->

<!-- Start Recent Courses -->
<div class="container">
    <h3 class="text-center">Recent Courses</h3>
    <div class="row">
        <%
            BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
            List<BookDtls> list2 = dao2.getRecentBooks();
            for (BookDtls b : list2) {
        %>
        <div class="col-md-3">
            <div class="card crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="books/<%=b.getPhotoName()%>" style="width: 150px; height: 200px" class="img-thumblin">
                    <p><%=b.getBookName()%></p>
                    <p><%=b.getAuthor()%></p>
                    <p>Category: <%=b.getBookCategory()%></p>
                    <div class="row">
                        <a href="view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-success btn-sm ml-5">View Details</a>
                        <a href="" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-rupee-sign"></i> <%=b.getPrice()%></a>
                    </div>
                </div>
            </div>
        </div>
        <% } %>
    </div>
    <div class="text-center mt-1">
        <a href="all_recent_book.jsp" class="btn btn-danger btn-sm text-white">View All</a>
    </div>
</div>
<!-- End Recent Courses -->

<hr>

<!-- Start New Books -->
<div class="container">
    <h3 class="text-center">New Books</h3>
    <div class="row">
        <%
            BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
            List<BookDtls> list = dao.getNewBook();
            for (BookDtls b : list) {
        %>
        <div class="col-md-3">
            <div class="card crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="books/<%=b.getPhotoName()%>" style="width: 150px; height: 200px" class="img-thumblin">
                    <p><%=b.getBookName()%></p>
                    <p><%=b.getAuthor()%></p>
                    <p>Category: <%=b.getBookCategory()%></p>
                    <div class="row">
                        <%
                            if (u == null) {
                        %>
                        <a href="login.jsp" class="btn btn-danger btn-sm ml">Add cart</a>
                        <%
                            } else {
                        %>
                        <a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>" class="btn btn-danger btn-sm ml">Add cart</a>
                        <% } %>
                        <a href="view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-success btn-sm ml-1">View Details</a>
                        <a href="" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-rupee-sign"></i> <%=b.getPrice()%></a>
                    </div>
                </div>
            </div>
        </div>
        <% } %>
    </div>
    <div class="text-center mt-1">
        <a href="all_new_book.jsp" class="btn btn-danger btn-sm text-white">View All</a>
    </div>
</div>
<!-- End New Books -->

<hr>

<!-- Start Old Books -->
<div class="container">
    <h3 class="text-center">Old Courses</h3>
    <div class="row">
        <%
            BookDAOImpl dao3 = new BookDAOImpl(DBConnect.getConn());
            List<BookDtls> list3 = dao3.getOldBooks();
            for (BookDtls b : list3) {
        %>
        <div class="col-md-3">
            <div class="card crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="books/<%=b.getPhotoName()%>" style="width: 150px; height: 200px" class="img-thumblin">
                    <p><%=b.getBookName()%></p>
                    <p><%=b.getAuthor()%></p>
                    <p>Category: <%=b.getBookCategory()%></p>
                    <div class="row">
                        <a href="view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-success btn-sm ml-5">View Details</a>
                        <a href="" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-rupee-sign"></i> <%=b.getPrice()%></a>
                    </div>
                </div>
            </div>
        </div>
        <% } %>
    </div>
    <div class="text-center mt-1">
        <a href="all_old_book.jsp" class="btn btn-danger btn-sm text-white">View All</a>
    </div>
</div>
<br>
<br>
<br>
<!-- End Old Books -->

<%@include file="all_component/footer.jsp"%>

</body>
</html>
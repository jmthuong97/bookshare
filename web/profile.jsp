<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link rel="stylesheet" type="text/css" media="screen" href="css/style.css" />
        <link rel="stylesheet" type="text/css" media="screen" href="css/profile.css" />
        <link rel="stylesheet" type="text/css" media="screen" href="css/upload_book.css" />
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
              crossorigin="anonymous">

    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="content">
            <jsp:include page="content-left.jsp"></jsp:include>
                <!--Đây là đoạn code nội dung cho page-->
                <div class="content-center">
                    <h3>Profile</h3>
                    <div class="avatar">
                        <form action="UpdateProfileController" method="POST" enctype="multipart/form-data">
                            <img src="<%=request.getContextPath()%>${viewuser.getAvatar()}" alt="${viewuser.getUserName()}.jpg">
                        <c:if test="${currentUser==viewuser}">
                            <input type="hidden" name="command" value="update-avatar">
                            <button type="submit">Change</button>
                        </c:if>
                    </form>
                </div>
                <div class="info">
                    <form action="UpdateProfileController" method="POST">
                        <input class="fullname" type="text" name="fullname" placeholder="Full name" value="${viewuser.getFullName()}" required="">
                        <p>Create Date: ${viewuser.getCreateDate()}</p>
                        <div class="rate">
                            <select id="rate">
                                <option value="1">1 Star</option>
                                <option value="2">2 Star</option>
                                <option value="3">3 Star</option>
                                <option value="4">4 Star</option>
                                <option value="5">5 Star</option>
                            </select>
                            <div id="star">
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                            </div>
                        </div>
                        <div class="info-book">
                            <div class="elements">
                                <div class="title"><i class="fas fa-birthday-cake"></i>Birthday</div>
                                <div class="input">
                                    <input type="date" name="birthday" placeholder="Date of birth" value="${viewuser.getBirthday()}" required="">
                                </div>
                            </div>
                            <div class="elements">
                                <div class="title"><i class="fas fa-user"></i>Username</div>
                                <div class="input">
                                    <input type="text" name="username" placeholder="Username" value="${viewuser.getUserName()}" disabled="">
                                </div>
                            </div>
                            <div class="elements">
                                <div class="title"><i class="fas fa-envelope"></i>Email</div>
                                <div class="input">
                                    <input type="text" name="email" placeholder="Email" value="${viewuser.getEmail()}" required="">
                                </div>
                            </div>
                            <div class="elements">
                                <div class="title"><i class="fas fa-address-card"></i>Address</div>
                                <div class="input">
                                    <input type="text" name="address" placeholder="Address" value="${viewuser.getAddress()}" required="">
                                </div>
                            </div>
                            <div class="elements">
                                <div class="title"><i class="fas fa-mobile"></i>Phone</div>
                                <div class="input">
                                    <input type="text" name="phonenumber" placeholder="Phone number" value="${viewuser.getPhoneNumber()}" required="">
                                </div>
                            </div>
                            <div class="elements">
                                <div class="title"><i class="fab fa-facebook-square"></i>Facebook</div>
                                <div class="input">
                                    <input type="text" name="linkfacebook" placeholder="Link facebook" value="${viewuser.getLinkFacebook()}" required="">
                                </div>
                            </div>
                            <c:if test="${currentUser==viewuser}">
                                <div class="submit-info">
                                    <input type="hidden" name="command" value="update-info">
                                    <button type="submit">Change Information</button>
                                </div>
                            </c:if>
                        </div>
                    </form>
                </div>
                <div class="book-recently">
                    <h1>Top recently book's user</h1>
                    <div class="items">
                        <selection>
                            <h3>How to Win Friends and Influence People</h3>
                            <p>Create Date: 22/07/2018</p>
                            <img src="img/1006_cover1.jpg">
                        </selection>
                        <selection>
                            <h3>How to Win Friends and Influence People</h3>
                            <p>Create Date: 22/07/2018</p>
                            <img src="img/1006_cover1.jpg">
                        </selection>
                    </div>
                </div>
            </div>
            <!--Kết thúc-->
            <jsp:include page="content-right.jsp"></jsp:include>
        </div>
        <script>
            window.onscroll = function () {
                myFunction();
            };
            var header = document.getElementById("myheader");
            var sticky = header.offsetTop;
            function myFunction() {
                if (window.pageYOffset > sticky) {
                    header.classList.add("sticky");
                } else {
                    header.classList.remove("sticky");
                }
            }
        </script>
    </body>
</html>

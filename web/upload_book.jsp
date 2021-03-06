<%-- 
    Document   : upload_book
    Created on : Jul 17, 2018, 10:24:30 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Upload Book Page</title>
        <link rel="stylesheet" type="text/css" media="screen" href="css/style.css" />
        <link rel="stylesheet" type="text/css" media="screen" href="css/upload_book.css" />
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
              crossorigin="anonymous">
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="content">
            <jsp:include page="content-left.jsp"></jsp:include>
                <!--Đây là đoạn code nội dung cho page-->
                <div class="content-center">
                    <div class="title-upload">
                        <i class="fas fa-plus-square"><b>Upload Book</b></i>
                    </div>
                    <form action="UploadBookController" method="POST" enctype="multipart/form-data">
                        <div class="upload-image">
                            <p>Upload images (Book cover) here:</p><br>
                            Cover 1: <input id="cover1" type="file" name="cover1" accept="image/png, image/jpeg" required=""><br>
                            Cover 2: <input id="cover2" type="file" name="cover2" accept="image/png, image/jpeg"><br>
                            Cover 3: <input id="cover3" type="file" name="cover3" accept="image/png, image/jpeg"><br>
                            Cover 4: <input id="cover4" type="file" name="cover4" accept="image/png, image/jpeg"><br>
                            Cover 5: <input id="cover5" type="file" name="cover5" accept="image/png, image/jpeg">
                        </div>
                        <div class="info-book">
                            <div class="elements">
                                <div class="title"><i class="fas fa-barcode"></i>ISBN</div>
                                <div class="input"><input id="isbn" type="number" name="isbn" placeholder="ISBN Book" required=""></div>
                                <input id="idBook" type="hidden" name="idBook" value="empty">
                            </div>
                            <div class="elements">
                                <div class="title"><i class="fas fa-file-signature"></i>Title</div>
                                <div class="input">
                                    <input id="title" type="text" name="title-book" placeholder="Title Book" required="">
                                </div>
                            </div>
                            <div class="elements">
                                <div class="title"><i class="fas fa-user-tie"></i>Author</div>
                                <div class="input">
                                    <input id="author" type="text" name="author" placeholder="Author Book" required="">
                                </div>
                            </div>
                            <div class="elements">
                                <div class="title"><i class="fas fa-tags"></i>Tag</div>
                                <div class="input">
                                    <input id="tag" type="text" name="tag" placeholder="Tag Book" required="">
                                </div>
                            </div>
                            <div class="elements">
                                <div class="title"><i class="fas fa-language"></i>Language</div>
                                <div class="input">
                                    <input id="language" type="text" name="language" placeholder="Language Book" required="">
                                </div>
                            </div>
                            <div class="elements">
                                <div class="title"><i class="fas fa-pen"></i>Description</div>
                                <div class="input">
                                    <textarea id="description" rows="6" cols="50" name="description" placeholder="Description Book" required="" style="border: none;"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="title-upload">
                            <i class="fas fa-info"><b>Information of lender</b></i>
                        </div>
                        <div class="info-book">
                            <div class="elements">
                                <div class="title"><i class="fas fa-envelope"></i>Email</div>
                                <div class="input">
                                    <input type="email" name="email" placeholder="Email" value="${sessionScope.currentUser.getEmail()}" readonly="true">
                            </div>
                        </div>
                        <div class="elements">
                            <div class="title"><i class="fas fa-address-card"></i>Address</div>
                            <div class="input">
                                <input type="text" name="address" placeholder="Address" value="${sessionScope.currentUser.getAddress()}" readonly="true">
                            </div>
                        </div>
                        <div class="elements">
                            <div class="title"><i class="fas fa-phone-square"></i>Phone number</div>
                            <div class="input">
                                <input type="text" name="phonenumber" placeholder="Phone Number" value="${sessionScope.currentUser.getPhoneNumber()}" readonly="true">
                            </div>
                        </div>
                        <div class="elements">
                            <div class="title"><i class="fab fa-facebook"></i>Link facebook</div>
                            <div class="input">
                                <input type="text" name="linkFacebook" placeholder="Link Facebook" value="${sessionScope.currentUser.getLinkFacebook()}" readonly="true">
                            </div>
                        </div>
                        <div class="elements" style="border: none;">
                            <div class="title"><i class="fas fa-gavel"></i>Rules</div>
                            <div class="input">
                                <textarea rows="6" cols="50" name="rules" readonly="true"></textarea><br>
                                <div class="check-rules"><input id="checkRules" type="checkbox">I have read, and agree to abide by the bookshare.com website rules.</div>
                            </div>
                        </div>
                    </div>
                    <div class="uploadBtn">
                        <input id="uploadBtn" type="submit" value="Upload" disabled="">
                    </div>
                </form>
            </div>
            <!--Kết thúc-->
            <jsp:include page="content-right.jsp"></jsp:include>
        </div>
        <script src="js/checkFileUpload.js"></script>
        <script src="js/check_book_exist.js"></script>
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
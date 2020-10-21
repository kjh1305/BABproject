<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html lang="ko">
<script>

var msg = "${msg}";
if(msg != "") {
	alert(msg);
}

function checkValue()
        {
			 inputForm = eval("document.userInfo");
			if(!document.userInfo.name.value){
		        alert("이름을 입력하세요.");
		        inputForm.name.focus();
		        return ;
		    }
            if(!document.userInfo.id.value){
                alert("아이디를 입력하세요.");
                inputForm.id.focus();
                return ;
            }
            
            if(!document.userInfo.pw.value){
                alert("비밀번호를 입력하세요.");
                inputForm.pw.focus();
                return ;
            }
            if(!document.userInfo.re_pw.value){
                alert("비밀번호 확인을 입력하세요.");
                inputForm.re_pw.focus();
                return ;
            }
          
            // 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
            if(document.userInfo.pw.value != document.userInfo.re_pw.value){
                alert("비밀번호를 동일하게 입력하세요.");
                inputForm.re_pw.focus();
                return ;
            }
            if(!document.userInfo.status.value){
                alert("교수or학생 선택하세요.");
               
                return ;
            }
            inputForm.submit();
        }
</script>


<head>
    <title>회원가입</title>
    <!-- HTML5 Shim and Respond.js IE10 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 10]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
      <!-- Meta -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />

      <meta name="keywords" content="bootstrap, bootstrap admin template, admin theme, admin dashboard, dashboard template, admin template, responsive" />
      <meta name="author" content="Codedthemes" />
      <!-- Favicon icon -->

     
      <!-- Google font-->
      <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
      <!-- Required Fremwork -->
      <link rel="stylesheet" type="text/css" href="/iducs/resources/css/bootstrap/css/bootstrap.min.css">
      <!-- waves.css -->
      <link rel="stylesheet" href="/iducs/resources/pages/waves/css/waves.min.css" type="text/css" media="all">
      <!-- themify-icons line icon -->
      <link rel="stylesheet" type="text/css" href="/iducs/resources/icon/themify-icons/themify-icons.css">
      <!-- ico font -->
      <link rel="stylesheet" type="text/css" href="/iducs/resources/icon/icofont/css/icofont.css">
      <!-- Font Awesome -->
      <link rel="stylesheet" type="text/css" href="/iducs/resources/icon/font-awesome/css/font-awesome.min.css">
      <!-- Style.css -->
      <link rel="stylesheet" type="text/css" href="/iducs/resources/css/style.css">
      
      <style>
        input[type=radio] {
             display: none;    
        }
        </style>

  </head>

  <body themebg-pattern="theme1">
  <!-- Pre-loader start -->
  <div class="theme-loader">
      <div class="loader-track">
          <div class="preloader-wrapper">
              <div class="spinner-layer spinner-blue">
                  <div class="circle-clipper left">
                      <div class="circle"></div>
                  </div>
                  <div class="gap-patch">
                      <div class="circle"></div>
                  </div>
                  <div class="circle-clipper right">
                      <div class="circle"></div>
                  </div>
              </div>
              <div class="spinner-layer spinner-red">
                  <div class="circle-clipper left">
                      <div class="circle"></div>
                  </div>
                  <div class="gap-patch">
                      <div class="circle"></div>
                  </div>
                  <div class="circle-clipper right">
                      <div class="circle"></div>
                  </div>
              </div>

              <div class="spinner-layer spinner-yellow">
                  <div class="circle-clipper left">
                      <div class="circle"></div>
                  </div>
                  <div class="gap-patch">
                      <div class="circle"></div>
                  </div>
                  <div class="circle-clipper right">
                      <div class="circle"></div>
                  </div>
              </div>

              <div class="spinner-layer spinner-green">
                  <div class="circle-clipper left">
                      <div class="circle"></div>
                  </div>
                  <div class="gap-patch">
                      <div class="circle"></div>
                  </div>
                  <div class="circle-clipper right">
                      <div class="circle"></div>
                  </div>
              </div>
          </div>
      </div>
  </div>
  <!-- Pre-loader end -->
  <section class="login-block">
        <!-- Container-fluid starts -->
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <form action="/iducs/membersignupgo.do" method="POST" class="md-float-material form-material" name="userInfo">
                        <div class="text-center">
                            
                        </div>
                        <div class="auth-box card">
                            <div class="card-block">
                                <div class="row m-b-20">
                                    <div class="col-md-12">
                                        <h3 class="text-center txt-primary">회원가입</h3>
                                    </div>
                                </div>
                                <div class="form-group form-primary">
                                    <input type="text" name="name" class="form-control">
                                    <span class="form-bar"></span>
                                    <label class="float-label">Choose Username</label>
                                </div>
                                <div class="form-group form-primary">
                                    <input type="text" name="id" class="form-control">
                                    <span class="form-bar"></span>
                                    <label class="float-label">Your id</label>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group form-primary">
                                            <input type="password" name="pw" class="form-control">
                                            <span class="form-bar"></span>
                                            <label class="float-label">Password</label>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group form-primary">
                                            <input type="password" name="re_pw" class="form-control">
                                            <span class="form-bar"></span>
                                            <label class="float-label">Confirm Password</label>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="form-group form-primary">
                                    <input type="file" name="img" class="form-control">
                                    <span class="form-bar"></span>
                                   
                                </div>
                                <div class="center">                                
                                    <div class="btn-group" style="margin-left: 140px;"data-toggle="buttons" id="radiotest">
                                    <label class="btn btn-primary btn-md" style="margin-right: 10px; border-radius:20%;">
                                        <input type="radio" name="status" value="professor">교수
                                    </label>
                                    <label class="btn btn-primary btn-md" style="border-radius:20%;">
                                        <input type="radio" name="status" value="student">학생
                                    </label>
                                </div> 
                            </div>

                                
                                
                                <div class="row m-t-30">
                                    <div class="col-md-12">
                                       <a href="javascript:checkValue();" class="btn btn-primary btn-md btn-block waves-effect waves-light text-center m-b-20">가입하기</a>
                                    </div>
                                </div>
                                <hr/>
                                <div class="row">
                                    <div class="col-md-10">
                                        <p class="text-inverse text-left m-b-0">감사합니다.</p>                               
                                        <p class="text-inverse text-left"><a href="/iducs/"><b>홈으로</b></a></p>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <!-- end of col-sm-12 -->
            </div>
            <!-- end of row -->
        </div>
        <!-- end of container-fluid -->
    </section>
    <!-- Warning Section Starts -->
    <!-- Older IE warning message -->
    <!--[if lt IE 10]>
<div class="ie-warning">
    <h1>Warning!!</h1>
    <p>You are using an outdated version of Internet Explorer, please upgrade <br/>to any of the following web browsers to access this website.</p>
    <div class="iew-container">
        <ul class="iew-download">
            <li>
                <a href="http://www.google.com/chrome/">
                    <img src="../resources/images/browser/chrome.png" alt="Chrome">
                    <div>Chrome</div>
                </a>
            </li>
            <li>
                <a href="https://www.mozilla.org/en-US/firefox/new/">
                    <img src="../resources/images/browser/firefox.png" alt="Firefox">
                    <div>Firefox</div>
                </a>
            </li>
            <li>
                <a href="http://www.opera.com">
                    <img src="../resources/images/browser/opera.png" alt="Opera">
                    <div>Opera</div>
                </a>
            </li>
            <li>
                <a href="https://www.apple.com/safari/">
                    <img src="../resources/images/browser/safari.png" alt="Safari">
                    <div>Safari</div>
                </a>
            </li>
            <li>
                <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                    <img src="../resources/images/browser/ie.png" alt="">
                    <div>IE (9 & above)</div>
                </a>
            </li>
        </ul>
    </div>
    <p>Sorry for the inconvenience!</p>
</div>
<![endif]-->
<!-- Warning Section Ends -->
<!-- Required Jquery -->
<script type="text/javascript" src="/iducs/resources/js/jquery/jquery.min.js "></script>
<script type="text/javascript" src="/iducs/resources/js/jquery-ui/jquery-ui.min.js "></script>
<script type="text/javascript" src="/iducs/resources/js/popper.js/popper.min.js"></script>
<script type="text/javascript" src="/iducs/resources/js/bootstrap/js/bootstrap.min.js "></script>
<!-- waves js -->
<script src="/iducs/resources/pages/waves/js/waves.min.js"></script>
<!-- jquery slimscroll js -->
<script type="text/javascript" src="/iducs/resources/js/jquery-slimscroll/jquery.slimscroll.js"></script>
<script type="text/javascript" src="/iducs/resources/js/common-pages.js"></script>
</body>

</html>

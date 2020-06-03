<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Theater Home-OMTB</title>
<meta name="format-detection" content="telephone=no">
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="css/grid.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/camera.css">
    <link rel="stylesheet" href="css/owl-carousel.css">
    <script src="js/jquery.js"></script>
    <script src="js/jquery-migrate-1.2.1.js"></script><!--[if lt IE 9]>
    <html class="lt-ie9">
      <div style="clear: both; text-align:center; position: relative;"><a href="http://windows.microsoft.com/en-US/internet-explorer/.."><img src="images/ie8-panel/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."></a></div>
    </html>
    <script src="js/html5shiv.js"></script><![endif]-->
    <script src="js/device.min.js"></script>
    <style type="text/css">
#TextBox1{
background:url(web/download.jpg) no-repeat;
background-color:#fff;
border: 2px solid red;
border-color:Background;
padding-left: 7px;
font-size:18px;
height:28px;
border: 1px #2E9AFE solid; border-radius: 5px;
width:300px;
}

#TextBox2{
background:url(web/images.jpg) no-repeat;
background-color:#fff;
border: 2px solid red;
border-color:Background;
padding-left: 7px;
font-size:18px;
height:28px;
border: 1px #2E9AFE solid; border-radius: 5px;
width:300px;
}
</style>
<script type="text/javascript">
<!--//
    function sizeFrame(frameId) {

        var F = document.getElementById(frameId);
        if (F.contentDocument) {
            F.height = F.contentDocument.documentElement.scrollHeight + 30; //FF 3.0.11, Opera 9.63, and Chrome
        } else {



            F.height = F.contentWindow.document.body.scrollHeight + 30; //IE6, IE7 and Chrome

        }

    }

    // window.onload=sizeFrame; 

    //-->
</script>
</head>
<body>

<%
try
{
session=request.getSession(false);
String thlid=session.getValue("thaid").toString();
String thtime=session.getValue("thtime").toString();
%>
  <div class="page">
      <!--
      ========================================================
      							HEADER
      ========================================================
      
      
      -->
      <header>
        <div class="container">
          <div class="brand">
            <h1 class="brand_name"><a href="#"><img src="images/img/LOGO.png" /></a></h1>
           <!-- <p class="brand_slogan">Company</p>-->
          </div>
            <!--<a href="callto:#" class="fa-phone">800-2345-6789</a>-->
          <!--<p>One of our representatives will happily contact you within 24 hours. For urgent needs call us at</p>-->
        </div>
        <div id="stuck_container" class="stuck_container">
          <div class="container">
            <nav class="nav">
              <ul data-type="navbar" class="sf-menu">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="MovieInterfaces.jsp" target="aa">Movies</a></li>
                <li><a href="ScreenInterfaces.jsp" target="aa">Screen</a></li>
                <li><a href="TotalBooking.jsp" target="aa">Total Booking</a></li>
                <li><a href="ShowInterfaces.jsp" target="aa">Shows</a></li>
                <!--<li><a href="#">About</a>
                   <ul>
                    <li><a href="#">Lorem ipsum dolor</a></li>
                    <li><a href="#">Conse ctetur adipisicing</a></li>
                    <li><a href="#">Elit sed do eiusmod
                        <ul>
                          <li><a href="#">Lorem ipsum</a></li>
                          <li><a href="#">Conse adipisicing</a></li>
                          <li><a href="#">Sit amet dolore</a></li>
                        </ul></a></li>
                    <li><a href="#">Incididunt ut labore</a></li>
                    <li><a href="#">Et dolore magna</a></li>
                    <li><a href="#">Ut enim ad minim</a></li>
                  </ul>-->
                </li>
               <!--  <li><a href="#">Services</a>
                </li>
                <li><a href="#">FAQS</a>
                </li>
                <li><a href="#">Contacts</a></li>-->
                <li><a href="TheaterLogout.jsp">Logout</a></li>
              </ul>
            </nav>
          </div>
        </div>
      </header>
      <!--
      ========================================================
                                  CONTENT
      ========================================================
      -->
      <main>
        
        <!--<section>
          <div class="container banner_wr">
            <ul class="banner">
              <li>
                <div class="fa-globe"></div>
                <h3>Global<br/>research</h3>
                <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p><a href="#"></a>
              </li>
              <li>
                <div class="fa-lightbulb-o"></div>
                <h3>Creative<br/>ideas</h3>
                <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p><a href="#"></a>
              </li>
              <li>
                <div class="fa-cog"></div>
                <h3>New<br/>services</h3>
                <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p><a href="#"></a>
              </li>
              <li>
                <div class="fa-briefcase"></div>
                <h3>Pro<br/>management</h3>
                <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p><a href="#"></a>
              </li>
            </ul>
          </div>
        </section>-->
        
        <section class="well1">
          <div class="container">
            <div class="row">
              <div class="grid_8">
                <h4 style="background-color: #2E9AFE; color:white; padding:10px;">Welcome: <%= thlid %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Login Time: <%= thtime%></h4>
                <div style="border:2px solid #2E9AFE; padding:20px;">
                <iframe name="aa" src=MovieInterfaces.jsp width="100%" id="myFrame" scrolling="no" frameborder="0" onload="sizeFrame('myFrame')" ></iframe></div>
              </div>
               <div class="grid_4">
                <h4></h4>
             <!-- <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
                <marquee behavior="scroll" height="390" direction="up" scrollamount="4" onmouseover="this.stop();" onmouseout="this.start();">
                  <ul class="marked-list">
                  <li><a href="#">2016 THE END - 4 NOV 2016</a></li>
                  <li><a href="#">ROCK ON 2 - 11 NOV 2016</a></li>
                  <li><a href="#">DONGRI KA RAJA - 11 NOV 2016</a></li>
                  <li><a href="#">YEH HAI LOLLIPOP - 11 NOV 2016</a></li>
                  <li><a href="#">SAANSEIN - 11 NOV 2016</a></li>
                  <li><a href="#">MOH MAYA MONEY - 11 NOV 2016</a></li>
                  <li><a href="#">30 MINUTES - 11 NOV 2016</a></li>
                  <li><a href="#">ISHQ JUNOON - 11 NOV 2016</a></li>
                  <li><a href="#">TUM BIN 2 - 18 NOV 2016</a></li>
                  <li><a href="#">FORCE 2 - 18 NOV 2016</a></li>
                  <li><a href="#">DEAR ZINDAGI - 25 NOV 2016</a></li>
                </ul></marquee>
                    <a href="#" class="btn">Read more</a>-->
              </div>
              <div class="grid_4">
                <div class="info-box">
                  <h2 class="fa-user">Coming Soon</h2>
                  <hr>
                  <marquee behavior="scroll" height="200" direction="up" scrollamount="4" onmouseover="this.stop();" onmouseout="this.start();">
                  <ul class="marked-list">
                  <li><font color="white"><a href="#">2016 THE END - 4 NOV 2016</font></li>
                  <li><font color="white"><a href="#">ROCK ON 2 - 11 NOV 2016</font></a></li>
                  <li><font color="white"><a href="#">DONGRI KA RAJA - 11 NOV 2016</font></a></li>
                  <li><font color="white"><a href="#">YEH HAI LOLLIPOP - 11 NOV 2016</font></a></li>
                  <li><font color="white"><a href="#">SAANSEIN - 11 NOV 2016</font></a></li>
                  <li><font color="white"><a href="#">MOH MAYA MONEY - 11 NOV 2016</font></a></li>
                  <li><font color="white"><a href="#">30 MINUTES - 11 NOV 2016</font></a></li>
                  <li><font color="white"><a href="#">ISHQ JUNOON - 11 NOV 2016</font></a></li>
                  <li><font color="white"><a href="#">TUM BIN 2 - 18 NOV 2016</font></a></li>
                  <li><font color="white"><a href="#">FORCE 2 - 18 NOV 2016</font></a></li>
                  <li><font color="white"><a href="#">DEAR ZINDAGI - 25 NOV 2016</font></a></li>
                </ul></marquee>
                  <hr>
                  <h3>24/7 Online Support:</h3>
                  <!-- <dl>
                    <dt>800-2345-6789</dt>
                  </dl>-->
                </div>
                <div class="owl-carousel">
                  <div class="item">
                    <blockquote class="box">
                      <div class="box_aside"><img src="images/img/moveimg/1.jpg" alt=""></div>
                      <div class="box_cnt__no-flow">
                        <p>
                          <q>Latest Up Comming Movies</q>
                        </p>
                        <cite>Ae Dil Hai Mushkil</cite>
                      </div>
                    </blockquote>
                  </div>
                  <div class="item">
                    <blockquote class="box">
                      <div class="box_aside"><img src="images/img/moveimg/2.jpg" alt=""></div>
                      <div class="box_cnt__no-flow">
                        <p>
                          <q>Latest Up Comming Movies</q>
                        </p>
                        <cite>Shivaay</cite>
                      </div>
                    </blockquote>
                  </div>
                  <div class="item">
                    <blockquote class="box">
                      <div class="box_aside"><img src="images/img/moveimg/4.jpg" alt=""></div>
                      <div class="box_cnt__no-flow">
                        <p>
                          <q>Latest Up Comming Movies</q>
                        </p>
                        <cite>Rustom</cite>
                      </div>
                    </blockquote>
                  </div>
                  <div class="item">
                    <blockquote class="box">
                      <div class="box_aside"><img src="images/img/moveimg/5.jpg" alt=""></div>
                      <div class="box_cnt__no-flow">
                        <p>
                          <q>Latest Up Comming Movies</q>
                        </p>
                        <cite>M. S. Dhoni</cite>
                      </div>
                    </blockquote>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
        <!-- <section class="well ins1">
          <div class="container hr">
            <ul class="row product-list">
              <li class="grid_6">
                <div class="box wow fadeInRight">
                  <div class="box_aside">
                    <div class="icon fa-comments"></div>
                  </div>
                  <div class="box_cnt__no-flow">
                    <h3><a href="#">Incididunt ut labore et dolore</a></h3>
                    <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolor.</p>
                  </div>
                </div>
                <hr>
                <div data-wow-delay="0.2s" class="box wow fadeInRight">
                  <div class="box_aside">
                    <div class="icon fa-calendar-o"></div>
                  </div>
                  <div class="box_cnt__no-flow">
                    <h3><a href="#">Incididunt ut labore et dolore</a></h3>
                    <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolor.</p>
                  </div>
                </div>
              </li>
              <li class="grid_6">
                <div data-wow-delay="0.3s" class="box wow fadeInRight">
                  <div class="box_aside">
                    <div class="icon fa-group"></div>
                  </div>
                  <div class="box_cnt__no-flow">
                    <h3><a href="#">Incididunt ut labore et dolore</a></h3>
                    <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolor.</p>
                  </div>
                </div>
                <hr>
                <div data-wow-delay="0.4s" class="box wow fadeInRight">
                  <div class="box_aside">
                    <div class="icon fa-thumbs-up"></div>
                  </div>
                  <div class="box_cnt__no-flow">
                    <h3><a href="#">Incididunt ut labore et dolore</a></h3>
                    <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolor.</p>
                  </div>
                </div>
              </li>
            </ul>
          </div>
        </section>-->
      </main>
      <!--
      ========================================================
                                  FOOTER
      ========================================================
      -->
      <footer>
        <section>
          <div class="container">
            <div class="copyright">Designed By:- Gaurav Taluja</div>
          </div>
        </section>
      </footer>
    </div>
    <script src="js/script.js"></script>


<%
}
catch(Exception ex)
{
	response.sendRedirect("TheaterLogin.jsp");
}
%>
</body>
</html>
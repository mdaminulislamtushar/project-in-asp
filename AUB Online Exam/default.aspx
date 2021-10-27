<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication4.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AUBSkillTest - Home </title>
    <link rel="shortcut icon" href="https://aub.edu.bd/assets/images/img/favicon.ico" type="image/ico" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="hero-content">
                <!--#include file ="header.html"-->
                <header class="site-header">
            <div runat="server" id="thetophead" class="top-header-bar">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12 col-lg-6 d-none d-md-flex flex-wrap justify-content-center justify-content-lg-start mb-3 mb-lg-0">
                            <div class="header-bar-email d-flex align-items-center"></div><!-- .header-bar-email -->
                            <div class="header-bar-text lg-flex align-items-center"></div><!-- .header-bar-text -->
                        </div><!-- .col -->

                        <div class="col-12 col-lg-6 d-flex flex-wrap justify-content-center justify-content-lg-end align-items-center">
                            <div class="header-bar-search"></div><!-- .header-bar-search -->
                            <div class="header-bar-menu">
                                <ul class="flex justify-content-center align-items-center py-2 pt-md-0">
                                    <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/registration.aspx">Register</asp:HyperLink></li>
                                    <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/login.aspx">Login</asp:HyperLink></li>
                                </ul>
                            </div><!-- .header-bar-menu -->
                        </div><!-- .col -->
                    </div><!-- .row -->
                </div><!-- .container-fluid -->
            </div><!-- .top-header-bar -->

            <div class="nav-bar">
                <div class="container">
                    <div class="row">
                        <div class="col-9 col-lg-3">
                            <div class="site-branding">
                                <h1 class="site-title">
                                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/default.aspx">AUB<span>SkillTest</span></asp:HyperLink>
                                </h1>
                            </div><!-- .site-branding -->
                        </div><!-- .col -->

                        <div class="col-3 col-lg-9 flex justify-content-end align-content-center">
                            <nav class="site-navigation flex justify-content-end align-items-center">
                                <ul class="flex flex-column flex-lg-row justify-content-lg-end align-content-center">
                                    <li class="current-menu-item">
                                        <asp:HyperLink ID="HyperLink10" runat="server" ForeColor="White"> </asp:HyperLink>
                                    </li>
                                    <li class="current-menu-item">
                                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/default.aspx" ForeColor="White">Home</asp:HyperLink>
                                    </li>
                                    <li>
                                        <asp:HyperLink ID="HyperLink5" runat="server" ForeColor="White" NavigateUrl="~/examrules.aspx">Exam</asp:HyperLink>
                                     </li>
                                    <li>
                                        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/about.aspx" ForeColor="White">About</asp:HyperLink>
                                    </li>
                                    <li>
                                        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/contact.aspx" ForeColor="White">Contact<span class="ml-2">Us</span></asp:HyperLink>
                                     </li>
                                    <li>
                                        <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/profile.aspx" Visible="false">My<span class="ml-2">Account</span></asp:HyperLink>
                                    </li>
                                    <li>
                                        <asp:Button ID="Button1" runat="server" Text="LogOut" CssClass="btn btn-sm btn-info mt-2" Visible="false" />
                                    </li>
                                </ul>

                                <div class="hamburger-menu d-lg-none">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </div><!-- .hamburger-menu -->

                                <div class="header-bar-cart">
                                    <a href="#" class="flex justify-content-center align-items-center"></a>
                                </div><!-- .header-bar-search -->
                            </nav><!-- .site-navigation -->
                        </div><!-- .col -->
                    </div><!-- .row -->
                </div><!-- .container -->
            </div><!-- .nav-bar -->
        </header><!-- .site-header -->
                <div class="hero-content-overlay">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <div class="hero-content-wrap flex flex-column justify-content-center align-items-start">
                                    <header class="entry-header">
                                        <h4>Get started with AUB Skill Test</h4>
                                        <h1>best online<br />
                                            Exam system</h1>
                                    </header>
                                    <!-- .entry-header -->

                                    <div class="entry-content">
                                        <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium</p>
                                    </div>
                                    <!-- .entry-content -->

                                    <footer class="entry-footer read-more">
                                        <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/login.aspx">read more</asp:HyperLink>
                                    </footer>
                                    <!-- .entry-footer -->
                                </div>
                                <!-- .hero-content-wrap -->
                            </div>
                            <!-- .col -->
                        </div>
                        <!-- .row -->
                    </div>
                    <!-- .container -->
                </div>
                <!-- .hero-content-hero-content-overlay -->
            </div>
            <!-- .hero-content -->

            <section class="about-section">
                <div class="container">
                    <div class="row">
                        <div class="col-12 col-lg-6 align-content-lg-stretch">
                            <header class="heading">
                                <h2 class="entry-title">About ExamCorner</h2>

                                <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium.</p>
                            </header>
                            <!-- .heading -->

                            <div class="entry-content ezuca-stats">
                                <div class="stats-wrap flex flex-wrap justify-content-lg-between">
                                    <div class="stats-count">
                                        50<span>M+</span>
                                        <p>STUDENTS</p>
                                    </div>
                                    <!-- .stats-count -->

                                    <div class="stats-count">
                                        30<span>K+</span>
                                        <p>Teachers</p>
                                    </div>
                                    <!-- .stats-count -->

                                    <div class="stats-count">
                                        340<span>M+</span>
                                        <p>Question</p>
                                    </div>
                                    <!-- .stats-count -->

                                    <div class="stats-count">
                                        20<span>+</span>
                                        <p>Country Reached</p>
                                    </div>
                                    <!-- .stats-count -->
                                </div>
                                <!-- .stats-wrap -->
                            </div>
                            <!-- .ezuca-stats -->
                        </div>
                        <!-- .col -->

                        <div class="col-12 col-lg-6 flex align-content-center mt-5 mt-lg-0">
                            <div class="ezuca-video position-relative">
                                <div class="video-play-btn position-absolute">
                                </div>
                                <asp:Image ID="Image1" runat="server" ImageUrl="images/video-screenshot.png" />
                            </div>
                            <!-- .ezuca-video -->
                        </div>
                        <!-- .col -->
                    </div>
                    <!-- .row -->
                </div>
                <!-- .container -->
            </section>
            <!-- .about-section -->
            <section class="home-gallery container">
                <h2 class="entry-title">OUR Gallary</h2>
                <div class="gallery-wrap flex flex-wrap">
                    <div class="gallery-grid gallery-grid1x1">
                        <a href="#">
                            <asp:Image ID="Image2" runat="server" ImageUrl="images/a.jpg" />
                        </a>
                    </div>
                    <!-- .gallery-grid -->

                    <div class="gallery-grid gallery-grid1x1">
                        <a href="#">
                            <asp:Image ID="Image3" runat="server" ImageUrl="images/b.jpg" />
                            </a>
                    </div>
                    <!-- .gallery-grid -->

                    <div class="gallery-grid gallery-grid2x2">
                        <a href="#">
                            <asp:Image ID="Image4" runat="server" ImageUrl="images/c.jpg" />
                         </a>
                    </div>
                    <!-- .gallery-grid -->

                    <div class="gallery-grid gallery-grid1x1">
                        <a href="#">
                            <asp:Image ID="Image5" runat="server" ImageUrl="images/d.jpg" />
                         </a>
                    </div>
                    <!-- .gallery-grid -->

                    <div class="gallery-grid gallery-grid1x1">
                        <a href="#">
                            <asp:Image ID="Image6" runat="server" ImageUrl="images/e.jpg" />
                        </a>
                    </div>
                    <!-- .gallery-grid -->

                    <div class="gallery-grid gallery-grid2x1">
                        <a href="#">
                            <asp:Image ID="Image7" runat="server" ImageUrl="images/g.jpg" />
                        </a>
                    </div>
                    <!-- .gallery-grid -->

                    <div class="gallery-grid gallery-grid2x1">
                        <a href="#">
                            <asp:Image ID="Image8" runat="server" ImageUrl="images/h.jpg" />
                        </a>
                    </div>
                    <!-- .gallery-grid -->

                    <div class="gallery-grid gallery-grid1x1">
                        <a href="#">
                            <asp:Image ID="Image9" runat="server" ImageUrl="images/i.jpg" />
                            </a>
                    </div>
                    <!-- .gallery-grid -->

                    <div class="gallery-grid gallery-grid2x2 ">
                        <a href="#">
                            <asp:Image ID="Image10" runat="server" ImageUrl="images/j.jpg" />
                         </a>
                    </div>
                    <!-- .gallery-grid -->

                    <div class="gallery-grid gallery-grid1x1">
                        <a href="#">
                            <asp:Image ID="Image11" runat="server" ImageUrl="images/k.jpg" />
                       </a>
                    </div>
                    <!-- .gallery-grid -->

                    <div class="gallery-grid gallery-grid1x1">
                        <a href="#">
                            <asp:Image ID="Image12" runat="server" ImageUrl="images/l.jpg" />
                         </a>
                    </div>
                    <!-- .gallery-grid -->

                    <div class="gallery-grid gallery-grid2x1">
                        <a href="#">
                            <asp:Image ID="Image13" runat="server" ImageUrl="images/m.jpg" />
                         </a>
                    </div>
                    <!-- .gallery-grid -->

                    <div class="gallery-grid gallery-grid3x1">
                        <a href="#">
                            <asp:Image ID="Image14" runat="server" ImageUrl="images/n.jpg" />
                          </a>
                    </div>
                    <!-- .gallery-grid -->

                    <div class="gallery-grid gallery-grid1x1">
                        <a href="#">
                            <asp:Image ID="Image15" runat="server" ImageUrl="images/o.jpg" />
                         </a>
                    </div>
                    <!-- .gallery-grid -->
                </div>
                <!-- .gallery-wrap -->
            </section>
            <!-- .home-gallery -->


            <!--#include file ="footer.html"-->
        </div>
    </form>
</body>
</html>

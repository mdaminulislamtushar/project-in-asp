<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="examrules.aspx.cs" Inherits="WebApplication4.examrules" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AUBSkillTest - Exam Rules</title>
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
                                    <div class="header-bar-email d-flex align-items-center"></div>
                                    <!-- .header-bar-email -->
                                    <div class="header-bar-text lg-flex align-items-center"></div>
                                    <!-- .header-bar-text -->
                                </div>
                                <!-- .col -->

                                <div class="col-12 col-lg-6 d-flex flex-wrap justify-content-center justify-content-lg-end align-items-center">
                                    <div class="header-bar-search"></div>
                                    <!-- .header-bar-search -->
                                    <div class="header-bar-menu">
                                        <ul class="flex justify-content-center align-items-center py-2 pt-md-0">
                                            <li>
                                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/registration.aspx">Register</asp:HyperLink></li>
                                            <li>
                                                <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/login.aspx">Login</asp:HyperLink></li>
                                        </ul>
                                    </div>
                                    <!-- .header-bar-menu -->
                                </div>
                                <!-- .col -->
                            </div>
                            <!-- .row -->
                        </div>
                        <!-- .container-fluid -->
                    </div>
                    <!-- .top-header-bar -->

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
                                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/dashboard.aspx" ForeColor="White">Home</asp:HyperLink>
                                    </li>
                                    <li>
                                        <asp:HyperLink ID="HyperLink5" runat="server" ForeColor="White" NavigateUrl="~/examrules.aspx">Exam</asp:HyperLink>
                                     </li>
                                    <li>
                                        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/about.aspx" ForeColor="White">About</asp:HyperLink>
                                    </li>
                                    <li class="mr-2">
                                        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/contact.aspx" ForeColor="White">Contact<span class="ml-2">Us</span></asp:HyperLink>
                                     </li>
                                    <li>
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/profile.aspx" Visible="false">My<span class="ml-2">Account</span></asp:HyperLink>
                                    </li>
                                    <li>
                                        <asp:Button ID="Button3" runat="server" Text="Logout" CssClass="btn btn-sm btn-info mt-2" Visible="false" />
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
                <div class="page-header-overlay">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <header class="entry-header">
                            <h1 class="text-white text-center">Exam Rules</h1>
                        </header><!-- .entry-header -->
                    </div><!-- .col -->
                </div><!-- .row -->
            </div><!-- .container -->
        </div><!-- .page-header-overlay -->
                <!-- .hero-content-hero-content-overlay -->
            </div>
            <!-- .hero-content -->

        <div class="container">

        <div class="row">
            <div class="col-12">
                <div class="about-heading">
                    <h2 class="entry-title">Welcome to AUB Skill Test System</h2>

                    <p class="text-warning">Read the rules carefully before start your test. Rules are sated below:</p>
                </div><!-- .about-heading -->
            </div><!-- .col -->

            <div class="col-12 col-lg-6">
                <div class="about-stories">
                    <h3>Mock Exam</h3>

                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium.</p>

                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque quis eros lobortis, vestibulum turpis ac, pulvinar odio. </p>

                    <ul class="p-0 m-0 green-ticked">
                        <li>You can attempt 75 Questions in a day</li>
                        <li>Positive learning environment</li>
                        <li>Learning through play</li>
                    </ul><!-- .green-ticked -->
                    <asp:Button ID="Button1" runat="server" Text="Proceed to Mock Test" CssClass="mt-2 btn btn-info" PostBackUrl="~/mockexam.aspx" />
                </div><!-- .about-stories -->
            </div><!-- .col -->

            <div class="col-12 col-lg-6">
                <div class="about-values">
                    <h3>Final Exam</h3>

                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium.</p>

                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque quis eros lobortis, vestibulum turpis ac, pulvinar odio. </p>

                    <ul class="p-0 m-0 green-ticked">
                        <li>You can attempt 25 Questions in a day</li>
                        <li>Positive learning environment</li>
                        <li>Learning through play</li>
                    </ul><!-- .green-ticked -->
                    <asp:Button ID="Button2" runat="server" Text="Proceed to Final Test (Today's Test)" CssClass="mt-2 btn btn-info" PostBackUrl="~/finalexam.aspx" />
                </div><!-- .about-values -->
            </div><!-- .col -->
        </div><!-- .row -->
    </div><!-- .container -->

        <!--#include file ="footer.html"-->
    </div>
    </form>
</body>
</html>

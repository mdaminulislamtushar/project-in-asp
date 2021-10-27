<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="WebApplication4.contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AUBSkillTest - Contact</title>
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
                                        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/contact.aspx" ForeColor="White">Contact<span class="ml-2">Us</span> </asp:HyperLink>
                                     </li>
                                    <li>
                                        <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/profile.aspx" Visible="false">My<span class="ml-2">Account</span></asp:HyperLink>
                                    </li>
                                    <li>
                                        <asp:Button ID="Button2" runat="server" Text="Logout" CssClass="btn btn-sm btn-info mt-2" OnClick="Button2_Click" Visible="false" />
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
                            <h1 class="text-white text-center">Contact</h1>
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
                <div class="breadcrumbs">
                    <ul class="flex flex-wrap align-items-center p-0 m-0">
                        <li><a href="#"><i class="fa fa-home"></i> Home</a></li>
                        <li>Contact</li>
                    </ul>
                </div><!-- .breadcrumbs -->
            </div><!-- .col -->
        </div><!-- .row -->

            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-6 col-lg-12">
                        <div class="team-member bg-dark">
                            <div class="d-flex justify-content-center mb-3">
                                <asp:TextBox ID="TextBox1" runat="server" Placeholder="Name" CssClass=" form-control form-control-md col-md-4" />
                            </div>
                            <div class="d-flex justify-content-center mb-3">
                                <asp:TextBox ID="TextBox2" runat="server" Placeholder="Email" TextMode="Email" CssClass=" form-control form-control-md col-md-4" />
                            </div>
                            <div class="d-flex justify-content-center mb-3">
                                <asp:TextBox ID="TextBox3" runat="server" Placeholder="Subject" CssClass=" form-control form-control-md col-md-4" />
                            </div>
                            <div class="d-flex justify-content-center mb-3">
                                <asp:TextBox ID="TextBox4" runat="server" Placeholder="Your Message" TextMode="MultiLine" CssClass=" form-control form-control-md col-md-4" />
                            </div>
                            <div class="d-flex justify-content-center mb-3">
                                <asp:Button ID="Button1" runat="server" Text="Send Message" OnClick="Button1_Click" CssClass="btn btn-md btn-info col-md-4" />
                            </div>

                            <div class="d-flex justify-content-center mb-3">
                                <asp:Label ID="Label1" runat="server" CssClass="text-warning" Text="" />
                            </div>
                        </div>
                        <!-- .team-member -->
                    </div>
                    <!-- .col -->
                </div>
                <!-- .row -->
            </div>
            <!-- .container -->

         <!--<div class="row justify-content-between">
            <!--<div class="col-12">
                <div class="contact-gmap">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7310.563876310067!2d90.4892991!3d23.6300721!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b103cd22b2af%3A0x7e7d61724d71a9b2!2sEducation+Office+Narayanganj!5e0!3m2!1sen!2sbd!4v1556430861444!5m2!1sen!2sbd" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div><!-- .contact-gmap -->
           <!-- </div><!-- .col -->

          <!--  <div class="col-12 col-lg-6">
                <div class="contact-form">
                    <h3>Contact Form</h3>

                    <div>
                        <!--boxes
                    </div>
                </div><!-- .contact-form -->
           <!-- </div><!-- .col -->

           <!-- <div class="col-12 col-lg-6">
                <div class="contact-info">
                    <h3>Contact Information</h3>

                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia dese mollit anim id est laborum. </p>

                    <ul class="p-0 m-0">
                        <li><span>Location:</span>Uttara,Dhaka, BD</li>
                        <li><span>Email:</span><a href="#">mdaminulislamtushar@yahoo.com</a></li>
                        <li><span>Phone:</span><a href="#">(203) 123-6666</a></li>
                    </ul>
                </div><!-- .contact-info -->
             <!-- </div><!-- .col -->
        <!-- </div><!-- .row -->
     <!-- </div><!-- .container -->

            <!--#include file ="footer.html"-->
    </div>
    </form>
</body>
</html>

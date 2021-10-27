<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AUBSkillTest - Login</title>
    <link rel="shortcut icon" href="https://aub.edu.bd/assets/images/img/favicon.ico" type="image/ico" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="hero-content">
                <!--#include file ="header.html"-->
                <header class="site-header">

                    <div class="nav-bar">
                        <div class="container">
                            <div class="row">
                                <div class="col-9 col-lg-3">
                                    <div class="site-branding">
                                        <h1 class="site-title">
                                            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/default.aspx">AUB<span>SkillTest</span></asp:HyperLink>
                                        </h1>
                                    </div>
                                    <!-- .site-branding -->
                                </div>
                                <!-- .col -->

                                <div class="col-3 col-lg-9 flex justify-content-end align-content-center">
                                    <nav class="site-navigation flex justify-content-end align-items-center">
                                        <ul class="flex flex-column flex-lg-row justify-content-lg-end align-content-center">
                                            <li class="current-menu-item">
                                                <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="White"> </asp:HyperLink>
                                            </li>
                                            <li class="current-menu-item">
                                                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/default.aspx" ForeColor="White">Home</asp:HyperLink>
                                            </li>
                                            <li>
                                                <asp:HyperLink ID="HyperLink6" runat="server" ForeColor="White" NavigateUrl="~/examrules.aspx">Exam</asp:HyperLink>
                                            </li>
                                            <li>
                                                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/about.aspx" ForeColor="White">About</asp:HyperLink>
                                            </li>
                                            <li>
                                                <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/contact.aspx" ForeColor="White">Contact<span class="ml-2">Us</span></asp:HyperLink>
                                            </li>
                                        </ul>

                                        <div class="hamburger-menu d-lg-none">
                                            <span></span>
                                            <span></span>
                                            <span></span>
                                            <span></span>
                                        </div>
                                        <!-- .hamburger-menu -->

                                        <div class="header-bar-cart">
                                            <a href="#" class="flex justify-content-center align-items-center"></a>
                                        </div>
                                        <!-- .header-bar-search -->
                                    </nav>
                                    <!-- .site-navigation -->
                                </div>
                                <!-- .col -->
                            </div>
                            <!-- .row -->
                        </div>
                        <!-- .container -->
                    </div>
                    <!-- .nav-bar -->
                </header>
                <!-- .site-header -->
                <div class="page-header-overlay">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <header class="entry-header">
                                    <h1 class="text-white text-center">Login</h1>
                                </header>
                                <!-- .entry-header -->
                            </div>
                            <!-- .col -->
                        </div>
                        <!-- .row -->
                    </div>
                    <!-- .container -->
                </div>
                <!-- .page-header-overlay -->
                <!-- .hero-content-hero-content-overlay -->
            </div>
            <!-- .hero-content -->

 <div class="container">
       <div class="row">
            <div class="col-12 col-md-6 col-lg-12">
                <div class="team-member bg-dark">
                    <asp:Label ID="Label2" runat="server" Text="Sign to AUB Skill Test System" CssClass="text-white"></asp:Label>
                    <div class="d-flex justify-content-center mb-3">
                           <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control form-control-md col-md-4 mt-3" Placeholder="Enter Your Phone Number" MaxLength="11" ></asp:TextBox>
                        </div>
                     <div class="d-flex justify-content-center mb-3">
                        
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control form-control-md col-md-4" TextMode="Password" Placeholder="Enter Your Password"></asp:TextBox>
                       
                    </div>
                    <div class="d-flex justify-content-center">
                        <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-md btn-info col-md-4" OnClick="Button1_Click" ></asp:Button>
                    </div>
                    <asp:Label ID="Label3" runat="server" CssClass="text-warning" />
                    <br />
                    <asp:Label ID="Label4" runat="server" CssClass="text-white" Text="Create " />
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="text-white" NavigateUrl="~/registration.aspx">Account / Sign Up</asp:HyperLink>
                    <br />
                    <asp:Label ID="Label1" runat="server" CssClass="text-white" Text="Trouble " />
                    <asp:HyperLink ID="HyperLink3" runat="server" CssClass="text-white" NavigateUrl="#" >Login / Sign in ?</asp:HyperLink>
                </div><!-- .team-member -->
            </div><!-- .col -->
        </div><!-- .row -->
    </div><!-- .container -->

            <!--#include file ="footer.html"-->
        </div>
    </form>
</body>
</html>

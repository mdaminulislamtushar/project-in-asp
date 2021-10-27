<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="WebApplication4.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>AUBSkillTest - Registration</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
                                                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White"> </asp:HyperLink>
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
                                    <h1 class="text-white text-center">Registration</h1>
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
                            <div class="d-flex justify-content-center mb-3">
                                <asp:TextBox ID="TextBox1" runat="server" CssClass=" form-control form-control-md col-md-4" Placeholder="Name"></asp:TextBox>
                            </div>
                            <div class="d-flex justify-content-center mb-3">
                                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="title" DataValueField="title" CssClass=" form-control form-control-md col-md-4"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [title] FROM [Subjects]"></asp:SqlDataSource>
                            </div>
                            <div class="d-flex justify-content-center mb-3">
                                <asp:TextBox ID="TextBox2" runat="server" CssClass=" form-control form-control-md col-md-4" Placeholder="Address"></asp:TextBox>
                            </div>
                            <div class="d-flex justify-content-center mb-3">
                                <asp:TextBox ID="TextBox3" runat="server" CssClass=" form-control form-control-md col-md-4" Placeholder="Phone" MaxLength="11"></asp:TextBox>
                            </div>
                            <div class="d-flex justify-content-center mb-3">
                                <asp:TextBox ID="TextBox4" runat="server" TextMode="Email" CssClass=" form-control form-control-md col-md-4" Placeholder="Email"></asp:TextBox>
                            </div>
                            <div class="d-flex justify-content-center mb-3">
                                <asp:TextBox ID="TextBox9" runat="server" CssClass=" form-control form-control-md col-md-4" Placeholder="Institution"></asp:TextBox>
                            </div>
                            <div class="d-flex justify-content-center mb-3">
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass=" form-control form-control-md col-md-4">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                    <asp:ListItem>Other</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <!-- <div class="d-flex justify-content-center mb-3">
                        <asp:Calendar ID="Calendar1" runat="server" BorderColor="#66CCFF">
                            <SelectedDayStyle BackColor="#FF0066" />
                        </asp:Calendar>
                    </div> -->
                            <div class="d-flex justify-content-center mb-3">
                                <asp:TextBox ID="TextBox6" runat="server" CssClass=" form-control form-control-md col-md-4" Placeholder="Password" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="d-flex justify-content-center mb-3">
                                <asp:TextBox ID="TextBox7" runat="server" CssClass=" form-control form-control-md col-md-4" Placeholder="Re-Type Password" TextMode="Password"></asp:TextBox>
                            </div>

                            <br />
                            <asp:Button ID="Button2" runat="server" Text="Register" OnClick="Button2_Click" CssClass="btn btn-md btn-info col-md-4" />
                            <br />
                            <asp:Label ID="Label18" runat="server" CssClass="text-warning" />
                            <br />
                            <br />
                            <asp:Label ID="Label1" runat="server" CssClass="text-warning" />
                            <br />
                            <asp:Label ID="Label19" runat="server" CssClass="text-white" Text="Have Account?" />
                            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="text-white" NavigateUrl="~/login.aspx">Login</asp:HyperLink>
                        </div>
                        <!-- .team-member -->
                    </div>
                    <!-- .col -->
                </div>
                <!-- .row -->
            </div>
            <!-- .container -->

                <!--#include file ="footer.html"-->

            <div>

            </div>
        </div>
    </form>
</body>
</html>



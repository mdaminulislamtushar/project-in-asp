<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mockexam.aspx.cs" Inherits="WebApplication4.mockexam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AUBSkillTest -Mock Exam</title>
    <link rel="shortcut icon" href="https://aub.edu.bd/assets/images/img/favicon.ico" type="image/ico" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="hero-content">
                <!--#include file ="header.html"-->
                <header class="site-header">
                    <a href="mockexam.aspx">mockexam.aspx</a>
            <div class="nav-bar">
                <div class="container">
                    <div class="row">
                        <div class="col-9 col-lg-3">
                            <div class="site-branding">
                                <h1 class="site-title">
                                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/default.aspx">AUB<span>SkillTest</span></asp:HyperLink>
                                </h1>
                            </div><!-- .site-branding -->
                        </div><!-- .col -->

                        <div class="col-3 col-lg-9 flex justify-content-end align-content-center">
                            <nav class="site-navigation flex justify-content-end align-items-center">
                                <ul class="flex flex-column flex-lg-row justify-content-lg-end align-content-center">
                                    <li class="current-menu-item">
                                        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White"> </asp:HyperLink>
                                    </li>
                                    <li>
                                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/default.aspx">Home</asp:HyperLink>
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
                                    <li>
                                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/profile.aspx">My<span class="ml-2">Account</span></asp:HyperLink>
                                    </li>
                                    <li class="mt-2">
                                        <asp:Button ID="Button5" runat="server" Text="Log Out" CssClass="btn btn-sm btn-info" OnClick="Button5_Click" />
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
                                        <h1 class="text-white text-center">Test Your Skill</h1>
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
                                <div class="p-2">
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control form-control-md" Enabled="false"></asp:TextBox>
                                </div>
                                <div class="p-2">
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control form-control-md" Enabled="false"></asp:TextBox>
                                </div>
                            </div>
                            <div class="d-flex justify-content-center mb-2">
                                <div class="p-2">
                                    <asp:Label ID="Label6" runat="server" Text="Choose Subject :" CssClass="text-white"></asp:Label>
                                
                                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control form-control-sm" DataSourceID="SqlDataSource1" DataTextField="title" DataValueField="title"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT [title] FROM [Subjects]"></asp:SqlDataSource>

                                </div>

                            </div>

                            <div class="d-flex justify-content-center">
                                <div class="p-2">
                                    <asp:Button ID="Button1" runat="server" Text="Start Exam" OnClick="Button1_Click" CssClass="btn btn-md btn-info" />
                                </div>
                            </div>

                            <div class="d-flex justify-content-center mt-5">
                                <div class="p-2">
                                    <asp:Label ID="Label4" runat="server" Text="Question will Display Here " CssClass="text-white h3"></asp:Label>
                                </div>
                            </div>
                            <div class="d-flex justify-content-center">
                                <div class="p-2">
                                    <asp:Label ID="Label5" runat="server" Text="Answer : " CssClass="text-white"></asp:Label>
                                </div>
                                <div class="p-2">
                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control form-control-md" ToolTip="Find Your Answer Here" Width="159px">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="d-flex justify-content-center mt-5">
                                <div class="p-2">
                                    <asp:Button ID="Button4" runat="server" Text="Submit Answer" OnClick="Button4_Click" CssClass="btn btn-md btn-info mt-2" />
                                    <asp:Button ID="Button2" runat="server" Text="Next Question" OnClick="Button2_Click" CssClass="btn btn-md btn-info mt-2" />
                                    <asp:Button ID="Button3" runat="server" Text="Close Exam" OnClick="Button3_Click" CssClass="btn btn-md btn-info mt-2" />
                               </div>
                                    <asp:Label ID="Label7" runat="server" CssClass="text-warning" ></asp:Label>

                                    <asp:Label ID="Label8" runat="server"></asp:Label>
                                    &nbsp;<asp:Label ID="Label9" runat="server"></asp:Label>
                                    <asp:Label ID="Label10" runat="server"></asp:Label>

                                
                            </div>

                            <asp:Label ID="Label12" runat="server" CssClass="text-warning" />
                            <br />

                        </div>
                        <!-- .team-member -->
                    </div>
                    <!-- .col -->
                </div>
                <!-- .row -->
            </div>
            <!-- .container -->

        <!--#include file ="footer.html"-->
    </div>
    </form>
</body>
</html>

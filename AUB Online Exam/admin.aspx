<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="WebApplication4.adminpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AUBSkillTest - Admin</title>
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
                            </div><!-- .site-branding -->
                        </div><!-- .col -->

                        <div class="col-3 col-lg-9 flex justify-content-end align-content-center">
                            <nav class="site-navigation flex justify-content-end align-items-center">
                                <ul class="flex flex-column flex-lg-row justify-content-lg-end align-content-center">
                                    <li class="current-menu-item">
                                        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White"> </asp:HyperLink>
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
                                        <h1 class="text-white text-center">Admin Panel</h1>
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
        <i runat="server" id="top" class="fa fa-angle-double-up" onclick="topFunction()"></i>
        <div class="container d-flex justify-content-center mt-5 bg-info">
            <div class="p-2">
                <asp:HyperLink ID="HyperLink2" runat="server" CssClass="text-white mr-5" NavigateUrl="#createquestion">Create Question</asp:HyperLink>
            </div>
            <div class="p-2">
                <asp:HyperLink ID="HyperLink3" runat="server" CssClass="text-white" NavigateUrl="#insertsubject">Insert Subject</asp:HyperLink>
            </div>
            <div class="p-2">
                <asp:HyperLink ID="HyperLink5" runat="server" CssClass="text-white ml-5" NavigateUrl="#searchstudent">Search Student</asp:HyperLink>
            </div>
        </div>
        <div runat="server" id="createquestion" class="container">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-12">
                    <div class="team-member bg-dark">
                        <h3 class="text-white tect-center">CREATE QUESTION</h3>
                        <div class="d-flex justify-content-center mb-3">
                            <div class="p-2">
                                <asp:Label ID="Label6" runat="server" Text="Choose Subjects :" CssClass="text-white"></asp:Label>
                            </div>
                            <div class="p-2">
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control form-control-sm col-md-12" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="title" DataValueField="title" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [title] FROM [Subjects]"></asp:SqlDataSource>
                            </div>
                        </div>
                        <div class="d-flex justify-content-center mb-3">
                            <div class="p-2">
                                <asp:Label ID="Label1" runat="server" Text="Question No :" CssClass="text-white" />
                                <asp:TextBox ID="TextBox1" runat="server" CssClass=" form-control form-control-md"></asp:TextBox>
                                
                            </div>
                        </div>

                        <div class="d-flex justify-content-center mb-3">
                            <div class="p-2">
                                <asp:Label ID="Label2" runat="server" Text="Title :" CssClass="text-white" />
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control form-control-md"></asp:TextBox>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </div>
                        </div>

                        <div class="d-flex justify-content-center mb-3">
                            <div class="p-2">
                                <asp:Label ID="Label3" runat="server" Text="Answer Option :" CssClass="text-white" />
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control form-control-md mb-1"></asp:TextBox>
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control form-control-md mb-1"></asp:TextBox>
                                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control form-control-md mb-1"></asp:TextBox>
                                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control form-control-md mb-1"></asp:TextBox>
                            </div>
                        </div>

                        <div class="d-flex justify-content-center mb-3">
                            <div class="p-2">
                                <asp:Label ID="Label4" runat="server" Text="Correct Answer :" CssClass="text-white" />
                                <asp:TextBox ID="TextBox7" runat="server" CssClass=" form-control form-control-md"></asp:TextBox>
                            </div>
                        </div>

                        <div class="d-flex justify-content-center mb-3">
                            <div class="p-2">
                                <asp:Button ID="Button3" runat="server" Text="Insert" OnClick="Button1_Click" CssClass="btn btn-md btn-info" />
                                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click2" Text="Next question" CssClass="btn btn-md btn-info" />
                            </div>
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

        <div runat="server" id="insertsubject" class="container">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-12">
                    <div class="team-member bg-dark">
                        <h3 class="text-white tect-center">Insert Subject</h3>
                        <div class="d-flex justify-content-center mb-3">
                            <div class="p-2">
                                <asp:Label ID="Label7" runat="server" Text="Subject Code :" CssClass="text-white" />
                                <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control form-control-md"></asp:TextBox>
                            </div>
                        </div>

                        <div class="d-flex justify-content-center mb-3">
                            <div class="p-2">
                                <asp:Label ID="Label8" runat="server" Text="Subject Title :" CssClass="text-white" />
                                <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control form-control-md"></asp:TextBox>
                            </div>
                        </div>

                        <div class="d-flex justify-content-center mb-3">
                            <div class="p-2">
                                <asp:Label ID="Label10" runat="server" Text="Subject Area :" CssClass="text-white" />
                                <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control form-control-md"></asp:TextBox>
                            </div>
                        </div>

                        <div class="d-flex justify-content-center mb-3">
                            <asp:Button ID="Button6" runat="server" Text="Insert" OnClick="Button6_Click" CssClass="btn btn-md btn-info col-md-4" />
                        </div>
                        <asp:Label ID="Label11" runat="server" CssClass="text-warning" />
                        <br />
                    </div>
                    <!-- .team-member -->
                </div>
                <!-- .col -->
            </div>
            <!-- .row -->
        </div>
        <!-- .container -->

        <div runat="server" id="searchstudent" class="container">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-12">
                    <div class="team-member bg-dark">
                        <h3 class="text-white tect-center">Search Student</h3>
                        <div class="d-flex justify-content-center mb-3">
                            <div class="p-2">
                                <asp:Label ID="Label5" runat="server" Text="Enter UserID :" CssClass="text-white" />
                                </div>
                                <div class="p-2">
                                <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control form-control-md"></asp:TextBox>
                            </div>
                            <div class="p-2">
                                <asp:Button ID="Button2" runat="server" Text="Search" CssClass="btn btn-md btn-info" OnClick="Button2_Click" />
                            </div>
                        </div>

                            <div class="d-flex justify-content-center mb-3">
                                <asp:TextBox ID="TextBox12" runat="server" Enabled="false" CssClass="form-control form-control-md col-md-4" Placeholder="Name"></asp:TextBox>
                            </div>
                            <div class="d-flex justify-content-center mb-3">
                                <asp:TextBox ID="TextBox13" runat="server" Enabled="false" CssClass="form-control form-control-md col-md-4" Placeholder="Class"></asp:TextBox>
                            </div>
                        

                        
                            <div class="d-flex justify-content-center mb-3">
                                <asp:TextBox ID="TextBox14" runat="server" Enabled="false" CssClass="form-control form-control-md col-md-4" Placeholder="Address"></asp:TextBox>
                            </div>
                            <div class="d-flex justify-content-center mb-3">
                                <asp:TextBox ID="TextBox15" runat="server" Enabled="false" CssClass="form-control form-control-md col-md-4" Placeholder="Institution"></asp:TextBox>
                            </div>
                       

                        <div class="d-flex justify-content-center mb-3">
                            <asp:TextBox ID="TextBox16" runat="server" Enabled="false" CssClass="form-control form-control-md col-md-4" Placeholder="Email"></asp:TextBox>
                        </div>
                        <div class="d-flex justify-content-center mb-3">
                            <asp:TextBox ID="TextBox17" runat="server" Enabled="false" CssClass="form-control form-control-md col-md-4" Placeholder="Phone"></asp:TextBox>
                        </div>

                        <div class="d-flex justify-content-center mb-3">
                            <div class="p-2">
                                <asp:TextBox ID="TextBox18" runat="server" Enabled="false" CssClass="form-control form-control-md" Placeholder="Gender"></asp:TextBox>
                            </div>
                            <div class="p-2">
                                <asp:TextBox ID="TextBox19" runat="server" Enabled="false" CssClass="form-control form-control-md col-md-12" Placeholder="Join Date"></asp:TextBox>
                            </div>
                        </div>

                        <asp:Label ID="Label14" runat="server" CssClass="text-warning" />
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


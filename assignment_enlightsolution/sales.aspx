<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sales.aspx.cs" Inherits="assignment_enlightsolution.sales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container border border-primary my-3">
            <!-- Sales Header -->
            <div class="container border border-secondary my-4">
                <div class="my-4">
                    <h6>Sales Header</h6>
                    <div class="row">
                        <div class="col-2">
                            <asp:Label ID="Label1" runat="server" Text="Customer Name" />
                        </div>
                        <div class="col-10">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control form-control-sm"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-2">
                            <asp:Label ID="Label2" runat="server" Text="Customer Phone" />
                        </div>
                        <div class="col-10">
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control form-control-sm"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-2">
                            <asp:Label ID="Label3" runat="server" Text="Customer Address" />
                        </div>
                        <div class="col-10">
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control form-control-sm"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Sales Items -->
            <div class="container border border-secondary my-4">
                <div class="my-4">
                    <h6>Sales Items</h6>
                    <div class="row">
                        <div class="col">
                            <asp:Label ID="Label4" runat="server" Text="Item" class="form-label" />
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown form-control" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="itemname" DataValueField="itemname" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [itemname] FROM [items]"></asp:SqlDataSource>
                        </div>
                        <div class="col">
                            <asp:Label ID="Label5" runat="server" Text="Price" class="form-label" />
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" AutoPostBack="True" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                        </div>
                        <div class="col">
                            <asp:Label ID="Label6" runat="server" Text="Quantity" class="form-label" />
                            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" AutoPostBack="True" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
                        </div>
                        <div class="col">
                            <asp:Label ID="Label7" runat="server" Text="Total" class="form-label" />
                            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                        </div>
                        <div class="col my-4">
                            <asp:Button ID="Button1" runat="server" Text="Add" CssClass=" btn btn-outline-primary" OnClick="Button1_Click" />
                        </div>
                    </div>
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered" OnRowDeleting="OnRowDeleting">
                        <Columns>
                            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" HeaderText="Action"/>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <!-- Sales Summary -->
            <div class="container border border-secondary my-4">
                <div class="my-4">
                    <h6>Sales Summary</h6>
                    <div class="row">
                        <div class="col-2">
                            <asp:Label ID="Label8" runat="server" Text="Total Price" />
                        </div>
                        <div class="col-10">
                            <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-2">
                            <asp:Label ID="Label9" runat="server" Text="Paid" />
                        </div>
                        <div class="col-10">
                            <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" AutoPostBack="True" OnTextChanged="TextBox8_TextChanged"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-2">
                            <asp:Label ID="Label10" runat="server" Text="Due" />
                        </div>
                        <div class="col-10">
                            <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Action Button -->
            <div class="mb-3">
                <asp:Button ID="Button3" runat="server" Text="Create" CssClass="btn btn-info" OnClick="Button3_Click" />
                <asp:Button ID="Button2" runat="server" Text="View" CssClass="btn btn-info" OnClick="Button2_Click" />
            </div>
        </div>
        <div class="container border border-primary my-3">
            <div class=" container my-4">
                <h6>Sales List</h6>
            <asp:GridView ID="GridView2" runat="server" Visible="False" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" CssClass="table table-bordered">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="SL" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="customer" HeaderText="Customer" SortExpression="customer" />
                    <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                    <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                    <asp:BoundField DataField="total" HeaderText="Total" SortExpression="total" />
                    <asp:BoundField DataField="paid" HeaderText="Paid" SortExpression="paid" />
                    <asp:BoundField DataField="due" HeaderText="Due" SortExpression="due" />
                    <asp:CommandField ButtonType="Button" HeaderText="Action" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [saleslist]"></asp:SqlDataSource>
        </div>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

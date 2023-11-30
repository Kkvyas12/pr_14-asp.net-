<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="pr_10.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" Font-Size="XX-Large" Text="Registration Form"></asp:Label>
            <br />
            <table>
                <tr>
                    <th>
                        <asp:Label ID="Label1" runat="server" Text="Name :"></asp:Label>
                    </th>
                    <td>
                        <asp:TextBox ID="tbname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <th>
                        <asp:Label ID="Label2" runat="server" Text="Email :"></asp:Label>
                    </th>
                    <td>
                        <asp:TextBox ID="tbemail" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <th>
                        <asp:Label ID="Label3" runat="server" Text="Gender :"></asp:Label>
                    </th>
                    <td>
                        <asp:RadioButtonList ID="rblgender" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                 <tr>
                    <th>
                        <asp:Label ID="Label4" runat="server" Text="DOB :"></asp:Label>
                    </th>
                    <td>
                        <asp:TextBox ID="tbdob" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <th>
                        <asp:Label ID="Label5" runat="server" Text="City :"></asp:Label>
                    </th>
                    <td>
                        <asp:DropDownList ID="ddlcity" runat="server">
                            <asp:ListItem>Mehsana</asp:ListItem>
                            <asp:ListItem>Gandhinagar</asp:ListItem>
                            <asp:ListItem>Surat</asp:ListItem>
                            <asp:ListItem>Rajkot</asp:ListItem>
                            <asp:ListItem>Baroda</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                 <tr>
                    <th>
                        <asp:Label ID="Label6" runat="server" Text="Hobby :"></asp:Label>
                    </th>
                    <td>
                        <asp:CheckBoxList ID="cblhobby" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Cricket</asp:ListItem>
                            <asp:ListItem>Sleeping</asp:ListItem>
                            <asp:ListItem>Reading</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
                 <tr>
                    <th colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                    </th>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:TemplateField HeaderText="gender" SortExpression="gender">
                        <EditItemTemplate>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" SelectedValue='<%# Bind("gender") %>'>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("gender") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                    <asp:TemplateField HeaderText="city" SortExpression="city">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("city") %>'>
                                <asp:ListItem>Mehsana</asp:ListItem>
                                <asp:ListItem>Gandhinagar</asp:ListItem>
                                <asp:ListItem>Surat</asp:ListItem>
                                <asp:ListItem>Rajkot</asp:ListItem>
                                <asp:ListItem>Baroda</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("city") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="hobby" SortExpression="hobby">
                        <EditItemTemplate>
                            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                                 <asp:ListItem >Cricket</asp:ListItem>
                                 <asp:ListItem>Sleeping</asp:ListItem>
                                 <asp:ListItem>Reading</asp:ListItem>
                            </asp:CheckBoxList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("hobby") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [pr10] WHERE [Id] = @Id" InsertCommand="INSERT INTO [pr10] ([name], [email], [gender], [dob], [city], [hobby]) VALUES (@name, @email, @gender, @dob, @city, @hobby)" SelectCommand="SELECT * FROM [pr10]" UpdateCommand="UPDATE [pr10] SET [name] = @name, [email] = @email, [gender] = @gender, [dob] = @dob, [city] = @city, [hobby] = @hobby WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter DbType="Date" Name="dob" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="hobby" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter DbType="Date" Name="dob" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="hobby" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

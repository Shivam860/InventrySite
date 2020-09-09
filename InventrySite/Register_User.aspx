<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Register_User.aspx.cs" Inherits="InventrySite.Register_User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table>
    <tr>
        <td>Name :</td>
        <td><asp:TextBox ID="txtName" runat="server" /></td>
    </tr>
    <tr>
        <td>Email :</td>
        <td><asp:TextBox ID="txtEmail" runat="server" /></td>
    </tr>
    <tr>
        <td>Gender :</td>
        <td><asp:RadioButtonList ID="rbGender" runat="server" RepeatColumns="3" >
                <asp:ListItem Text="Male" Value="1"></asp:ListItem>
                <asp:ListItem Text="Female" Value="2"></asp:ListItem>
                <asp:ListItem Text="Others" Value="3"></asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td>Comment :</td>
        <td><asp:TextBox ID="txtComment" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td>Password :</td>
        <td><asp:TextBox ID="txtPassword" runat="server" /></td>
    </tr>
    <tr>
        <td></td>
        <td><asp:Button ID="btn_submit" runat="server" Text="Submit" OnClick="btn_submit_Click" /></td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="labmsg" runat="server" ForeColor="Red" Font-Bold="true"></asp:Label>
        </td>
    </tr>

</table>
</asp:Content>

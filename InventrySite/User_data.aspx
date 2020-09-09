<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="User_data.aspx.cs" Inherits="InventrySite.User_data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>Image :</td>
            <td><asp:FileUpload ID="img" runat="server" /></td>
        </tr>
        <tr>
            <td>Name :</td>
            <td><asp:TextBox ID="txtname" runat="server" /></td>
        </tr>
        <tr>
            <td>Comment :</td>
            <td><asp:TextBox ID="txtcomment" runat="server" /></td>
        </tr>
        <tr>
            <td></td>
            <td><asp:Button  ID="btn_insert" runat="server" Text="Insert" OnClick="btn_insert_Click" /></td>
        </tr>
        <tr>
            <td><asp:Label ID="labData" runat="server" ></asp:Label></td>
        </tr>
    </table>
</asp:Content>

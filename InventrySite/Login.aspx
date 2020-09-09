<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="InventrySite.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
         function Validation() {
             var msgs = "";
             msgs += checkemail();
             msgs += checkpassword();
             if (msgs != "") {
                 alert(msgs);
                 return false;
             }
         }

         function checkemail() {
             var CTR = document.getElementById('<%=txtemail.ClientID%>');
              if (CTR.value == "") {
                  return 'Please enter your email !!\n';
              }
              else {
                  return "";
              }
          }

          function checkpassword() {
              var CTR = document.getElementById('<%=txtpassword.ClientID%>');
            if (CTR.value == "") {
                return 'Please enter your password !!\n';
            }
            else {
                return "";
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table>
         <tr>
            <td>User Type :</td>
            <td>
                <asp:DropDownList ID="ddlusertype" runat="server">
                    <asp:ListItem Text="--Select--" Value="0"></asp:ListItem>
                    <asp:ListItem Text="User" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Admin" Value="2"></asp:ListItem>
                </asp:DropDownList></td>

        </tr>
         <tr>
            <td>Email :</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Password :</td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
            <td></td>
            <td>
               <asp:Button ID="btnlogin" runat="server" Text="Login" OnClientClick="return Validation()" OnClick="btnlogin_Click" />
                <a href="Register_User.aspx">Sign Up Register</a>
            </td>
        </tr>

         <tr>
             <td></td>
            <td>
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red" Font-Bold="true"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

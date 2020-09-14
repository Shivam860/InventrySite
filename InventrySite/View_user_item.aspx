<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="View_user_item.aspx.cs" Inherits="InventrySite.View_user_item" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 933px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="1" >
        <tr>
                <asp:GridView ID="gv_items" runat="server" OnRowCommand="gv_items_RowCommand" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" style="margin-right: 33px" Width="895px" >
                    
                    <AlternatingRowStyle BackColor="White" />
                    
                    <Columns>
                         <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Image ID="img1" runat="server" Width="100px" Height="100px" ImageUrl='<%#Eval("imgname","~/Image_User/{0}") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Name">
                            <ItemTemplate>
                                <%#Eval("name") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Comment">
                            <ItemTemplate>
                                <%#Eval("comment") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btn" runat="server" Text="Delete" Width="50px" Height="25px" CommandArgument='<%#Eval("id") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    

                    
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                    

                    
                </asp:GridView>
            
        </tr>
    </table>
</asp:Content>

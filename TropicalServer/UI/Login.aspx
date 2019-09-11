<%@ Page Language="C#" MasterPageFile="~/MasterPage/TropicalServer.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TropicalServer.UI.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <title></title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div id ="container">
        <div id="BodyDetail">
            <div id ="Loginlbl">MOBILE CUSTOMER ORDER TRACKING</div>
            <div id="loginBox" class="formBody">
                <table>
                    <tr>
                        <td id="useridlbl">Login ID:</td>          
                            <td> <asp:TextBox ID="useridtextbox" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td id ="passwordlbl">Password:</td>
                        <td>
                            <asp:TextBox ID="passwordtextbox" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                </table>
                <asp:CheckBox ID="RemenberMeID" runat="server" Text="Remenber My ID" TextAlign="Left" />
                <asp:Button ID="loginButton" Text="Login in" runat="server"  onclick ="LoginUser"/>
            </div>
            <div id="forgot">
                <asp:HyperLink ID="forgotUsername" runat="server" Text="Forgot Username"></asp:HyperLink>
                <asp:HyperLink ID="forgotPassword" runat="server" Text="Forgot Password"></asp:HyperLink>
            </div>
            
        </div>
    </div>
 </asp:Content>
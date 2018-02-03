<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forgotpass.aspx.cs" Inherits="Forgotpass" MasterPageFile="~/MasterPage.master" %>

<asp:Content ContentPlaceHolderID="ContentBody" ID ="forgotpass" runat="server">
        <div class="container">
                   <div class="row">
                    <div class="col s12">
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="txtEmail" type="email" class="validate"  runat="server" />
                                <label  for="email">Enter Your Email ID</label>
                            </div>
                        </div>
                         <asp:Label ID="lblMessage" runat="server" />
                        <div class="row">
                            <div class="input-field col s12">
                <a  id="a" runat="server" onserverclick="SendEmail">Send</a></div>
                        </div>
                        
                       
                      
                        

                    </div>
        </div>
            </div>
</asp:Content>

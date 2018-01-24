<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BookTicket.aspx.cs" Inherits="BookTicket"  MasterPageFile="~/MasterPage.master"%>
<asp:Content ID="BookTicket" ContentPlaceHolderID="ContentBody" runat="server">
        <div class="container">
                   <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Larger" Text="Source"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1"  Width="500px" BackColor="#F6F1DB" ForeColor="#7d6754" Font-Names="Andalus" CssClass="browser-default ddl"  runat="server">
                        
                <asp:ListItem>churchgate</asp:ListItem>
                <asp:ListItem>marinelines</asp:ListItem>
                <asp:ListItem>charniroad</asp:ListItem>
                <asp:ListItem>grantroad</asp:ListItem>
                <asp:ListItem>mumbaicentral</asp:ListItem>
                <asp:ListItem>mahalaxmi</asp:ListItem>
                <asp:ListItem>lowerparel</asp:ListItem>
                <asp:ListItem>prabhadevi</asp:ListItem>
                <asp:ListItem>dadar</asp:ListItem>
                <asp:ListItem>matungaroad</asp:ListItem>
                <asp:ListItem>mahim</asp:ListItem>
                <asp:ListItem>bandra</asp:ListItem>
                <asp:ListItem>kharroad</asp:ListItem>
                <asp:ListItem>santacruz</asp:ListItem>
                <asp:ListItem>vileparle</asp:ListItem>
                <asp:ListItem>andheri</asp:ListItem>
                <asp:ListItem>jogeshwari</asp:ListItem>
                <asp:ListItem>goregaon</asp:ListItem>
                <asp:ListItem>malad</asp:ListItem>
                <asp:ListItem>kandivali</asp:ListItem>
                <asp:ListItem>borivali</asp:ListItem>
                <asp:ListItem>dahisar</asp:ListItem>
                <asp:ListItem>miraroad</asp:ListItem>
                <asp:ListItem>bhayandar</asp:ListItem>
                <asp:ListItem>naigaon</asp:ListItem>
                <asp:ListItem>vasairoad</asp:ListItem>
                <asp:ListItem>nalasopara</asp:ListItem>
                <asp:ListItem>virar</asp:ListItem>
               
      

            </asp:DropDownList>
        <style type="text/css">
        .ddl
        {
            border:2px solid #7d6754;
            border-radius:5px;
            padding:3px;
            -webkit-appearance: none; 
            background-image:url('');
            background-position:88px;
            background-repeat:no-repeat;
            text-indent: 0.01px;/*In Firefox*/
            text-overflow: ellipsis;/*In Firefox*/
            font-size:large;
            text-align:center;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font:200;
          
        }
</style>
        <br />
        <br />

                   <asp:Label  ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Text="Destination"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:DropDownList ID="DropDownList2"  Width="500px" BackColor="#F6F1DB" ForeColor="#7d6754" Font-Names="Andalus" CssClass="browser-default ddl" runat="server">
                <asp:ListItem>churchgate</asp:ListItem>
                <asp:ListItem>marinelines</asp:ListItem>
                <asp:ListItem>charniroad</asp:ListItem>
                <asp:ListItem>grantroad</asp:ListItem>
                <asp:ListItem>mumbaicentral</asp:ListItem>
                <asp:ListItem>mahalaxmi</asp:ListItem>
                <asp:ListItem>lowerparel</asp:ListItem>
                <asp:ListItem>prabhadevi</asp:ListItem>
                <asp:ListItem>dadar</asp:ListItem>
                <asp:ListItem>matungaroad</asp:ListItem>
                <asp:ListItem>mahim</asp:ListItem>
                <asp:ListItem>bandra</asp:ListItem>
                <asp:ListItem>kharroad</asp:ListItem>
                <asp:ListItem>santacruz</asp:ListItem>
                <asp:ListItem>vileparle</asp:ListItem>
                <asp:ListItem>andheri</asp:ListItem>
                <asp:ListItem>jogeshwari</asp:ListItem>
                <asp:ListItem>goregaon</asp:ListItem>
                <asp:ListItem>malad</asp:ListItem>
                <asp:ListItem>kandivali</asp:ListItem>
                <asp:ListItem>borivali</asp:ListItem>
                <asp:ListItem>dahisar</asp:ListItem>
                <asp:ListItem>miraroad</asp:ListItem>
                <asp:ListItem>bhayandar</asp:ListItem>
                <asp:ListItem>naigaon</asp:ListItem>
                <asp:ListItem>vasairoad</asp:ListItem>
                <asp:ListItem>nalasopara</asp:ListItem>
                <asp:ListItem>virar</asp:ListItem>
            </asp:DropDownList>
                    <br /><br />
    
      <label>
        <input name="group1" id="Single" Text="Single"  type="radio" value="Single" checked runat="server"/>
        <span>Single</span>
      </label>
    <br />
    
      <label>
        <input name="group1"  id="Return" Text="Return" type="radio" value="Return" runat="server" />
        <span>Return</span>
      </label>
   
                    <br /><br />


         <asp:DropDownList ID="DropDownList3" Width="300px" BackColor="SeaGreen" ForeColor="White" Font-Names="Andalus" CssClass="browser-default ddl" runat="server">
                 <asp:ListItem>FirstClass(I)</asp:ListItem>
                <asp:ListItem>SecondClass(II)</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br/>
            <br />
            
             <input type="button" class="btn" value="-" id="dec" onserverclick="Decrement_Click" runat="server"/>

    <label id="display" style="text-align:center; font:bold;font-size:large; width:120px;display: inline-block;" runat="server" >1</label>

<input type="button" class="btn" value="+" id="inc" onserverclick="Increment_Click" runat="server"/>
    <script type="text/javascript">

        var i = 1;
        function incNumber() {
            if (i < 10) {
                i++;
            } else if (i = 10) {
                i = 1;
            }
            document.getElementById("display").innerHTML = i;
        }

        function decNumber() {
            if (i > 1) {
                --i;
            } else if (i = 1) {
                i = 10;
            }
            document.getElementById("display").innerHTML = i;
        }
        function bookticket() {
            var amt = document.getElementById('<%=Amount.ClientID%>').innerHTML;
            if (amt != "" && amt > 0) {
                var elem1 = document.getElementById('modal3');
                var instance1 = new M.Modal(elem1); instance1.open();

            }
            else if (amt == "") {
                M.toast({ html: 'Please Check Total AMOUNT' })
            }
            else {
                M.toast({ html: 'Please Select Proper Station' })
            }
        }

      
    </script>
            
            <br />
            <br />
            <br />
          
            
            <asp:LinkButton ID="LinkButton3" class="btn" runat="server" OnClick="LinkButton3_Click" >Check Total Amount</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Amount" runat="server"></asp:Label>
                       <br /><br />        <br /><br />

        <a href="#" onclick="bookticket()"
                        class="btn modal-trigger">Book</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton2" OnClick="Cancle_Click" CssClass="btn" runat="server">Cancel</asp:LinkButton>
</div>
    <div id="modal3" class="modal">
            <div class="modal-content">
                


                
                <ul id="tabs-swipe-demo" class="tabs">
                    <li class="tab col s3"><a href="#debit">Debit Card</a></li>
                    <li class="tab col s3"><a href="#credit">Credit card</a></li>
                </ul>
                <div id="debit" class="col s12" >
                     <div class="row">
                        <form class="col s12">
                            <div class="row">
                                <div class="input-field col s12">
                                    <input id="first_name" type="text" class="validate">
                                    <label for="first_name">Enter Name</label>
                                </div>
                               
                            </div>
                            <div class="row">
                                <div class="col s12">
                                    <div class="input-field ">
                                        <input id="email" type="email" class="validate">
                                        <label for="email">Enter Debit Card Number</label>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <input id="mobileno" type="text" class="validate">
                                    <label for="mobileno">Mobile number</label>
                                </div>
                            </div>
                           
                            
                        </form>
                    </div>
                </div>
                <div id="credit" class="col s12">
                       <div class="row">
                        <form class="col s12">
                            <div class="row">
                                <div class="input-field col s12">
                                    <input id="name2" type="text" class="validate">
                                    <label for="first_name">Enter Name</label>
                                </div>
                               
                            </div>
                            <div class="row">
                                <div class="col s12">
                                    <div class="input-field ">
                                        <input id="email1" type="email" class="validate">
                                        <label for="email">Enter Credit Card Number</label>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <input id="mobileno1" type="text" class="validate">
                                    <label for="mobileno">Mobile number</label>
                                </div>
                            </div>
                           
                            
                        </form>
                    </div>
                </div>
                
                </div>
        </div>
               <!-- <div id="debit">
                     <div class="row">
                        <form class="col s12">
                            <div class="row">
                                <div class="input-field col s12">
                                    <input id="name2" type="text" class="validate">
                                    <label for="first_name">Enter Name</label>
                                </div>
                               
                            </div>
                            <div class="row">
                                <div class="col s12">
                                    <div class="input-field ">
                                        <input id="email1" type="email" class="validate">
                                        <label for="email">Enter Credit Card Number</label>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <input id="mobileno1" type="text" class="validate">
                                    <label for="mobileno">Mobile number</label>
                                </div>
                            </div>
                           
                            
                        </form>
                    </div>
                </div>
                <div id="credit">
                    <div class="row">
                        <form class="col s12">
                            <div class="row">
                                <div class="input-field col s12">
                                    <input id="first_name" type="text" class="validate">
                                    <label for="first_name">Enter Name</label>
                                </div>
                               
                            </div>
                            <div class="row">
                                <div class="col s12">
                                    <div class="input-field ">
                                        <input id="email" type="email" class="validate">
                                        <label for="email">Enter Debit Card Number</label>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <input id="mobileno" type="text" class="validate">
                                    <label for="mobileno">Mobile number</label>
                                </div>
                            </div>
                           
                            
                        </form>
                    </div>

                </div>
            </div>
            <div class="modal-footer">
                <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Sign Up</a>
                <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Cancle</a>
            </div>
        </div>
    -->


</asp:Content>
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
                window.onload = function () {
                    new M.Tabs(document.querySelector('.tabs'));
                }
            </script>
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
               
           <!-- Tab links -->
                <!--
<div class="tab">
  <button class="tablinks" onclick="openCity(event, 'DebitCard')" id="defaultOpen">Debit Card</button>
  <button class="tablinks" onclick="openCity(event, 'CreditCard')">Credit Card</button>
  
</div>

<div id="DebitCard" class="tabcontent">
      <div class="row">
                        <form class="col s12">
                            <div class="row">
                                <div class="input-field col s12">
                                    <input id="first_name" type="text" class="validate" required="required" runat="server">
                                    <label for="first_name">Enter Name</label>
                                </div>
                               
                            </div>
                            <div class="row">
                                <div class="col s12">
                                    <div class="input-field ">
                                        <input id="email" type="email" class="validate" required="required" runat="server">
                                        <label for="email">Enter Debit Card Number</label>
                                        
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
  
</div> 

             <div id="CreditCard" class="tabcontent">
                      <div class="row">
                        <form class="col s12">
                            <div class="row">
                                <div class="input-field col s12">
                                    <input id="name2" type="text" required="required" class="validate">
                                    <label for="first_name">Enter Name</label>
                                </div>
                               
                            </div>
                            <div class="row">
                                <div class="col s12">
                                    <div class="input-field ">
                                        <input id="email1" type="email" required="required" class="validate">
                                        <label for="email">Enter Credit Card Number</label>
                                        
                                    </div>
                                </div>
                            </div>
                         </form>
                    </div>

</div>


                
                <style>
                    /* Style the tab */
.tab {
    overflow: hidden;
    border: 1px solid #ccc;
    background-color: #f1f1f1;
}

/* Style the buttons that are used to open the tab content */
.tab button {
    background-color: inherit;
    float: left;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 14px 16px;
    transition: 0.3s;
}

/* Change background color of buttons on hover */
.tab button:hover {
    background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
    background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
    display: none;
    padding: 6px 12px;
    border: 1px solid #ccc;
    border-top: none;
}
                </style>
                <script>
                    function openCity(evt, cityName) {
                        // Declare all variables
                        var i, tabcontent, tablinks;

                        // Get all elements with class="tabcontent" and hide them
                        tabcontent = document.getElementsByClassName("tabcontent");
                        for (i = 0; i < tabcontent.length; i++) {
                            tabcontent[i].style.display = "none";
                        }

                        // Get all elements with class="tablinks" and remove the class "active"
                        tablinks = document.getElementsByClassName("tablinks");
                        for (i = 0; i < tablinks.length; i++) {
                            tablinks[i].className = tablinks[i].className.replace(" active", "");
                        }

                        // Show the current tab, and add an "active" class to the button that opened the tab
                        document.getElementById(cityName).style.display = "block";
                        evt.currentTarget.className += " active";
                    }
                    // Get the element with id="defaultOpen" and click on it
                    document.getElementById("defaultOpen").click();
                </script>
               -->

               
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
                                        <input id="debitcard" type="text" class="validate">
                                        <label for="debitcard">Enter Debit Card Number</label>
                                        
                                   </div>
                                </div>
                            </div>
                            <div>
                                <div class="col s6">
                                    <div class="input-field">
                                        <input id="month" type="number" class="validate" />
                                        <label for="month"> Month</label>
                                    </div>
                                </div>
                                  <div class="col s6">
                                    <div class="input-field">
                                        <input id="year" type="text" class="validate" />
                                        <label for="year"> Year</label>
                                    </div>
                                </div>
                            </div>
                           <div class="row">
                                <div class="col s6">
                                    <div class="input-field ">
                                        <input id="cvv" type="text" class="validate">
                                        <label for="cvv">Enter CVV Number</label>
                                        
                                   </div>
                                </div>
                               <div class="col s6">
                                    <ul class="collapsible popout">
                                         <script>
                                             var elem = document.querySelector('.collapsible');
                                             var instance = new M.Collapsible(elem);
                                             var instance = M.Collapsible.getInstance(elem);
                                             instance.open(3);
                             </script>
        <li>
            <div class="collapsible-header"><i class="material-icons">fiber_manual_record</i>WHAT IS CVV ?</div>
            <div class="collapsible-body"><img src="Images/CVV.png" alt="CVV" />
                <br /><span>The CVV Number ("Card Verification Value") on your credit card or debit card is a 3 digit number on VISA®, MasterCard® and Discover® branded credit and debit cards. On your American Express® branded credit or debit card it is a 4 digit numeric code.</span></div>
        </li>
                                        </ul>
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
                                        <input id="creditcard" type="text" class="validate">
                                        <label for="creditcard">Enter Credit Card Number</label>
                                        
                                    </div>
                                </div>
                            </div>
                             <div>
                                <div class="col s6">
                                    <div class="input-field">
                                        <input id="month1" type="number" class="validate" />
                                        <label for="month1"> Month</label>
                                    </div>
                                </div>
                                  <div class="col s6">
                                    <div class="input-field">
                                        <input id="year1" type="text" class="validate" />
                                        <label for="year1"> Year</label>
                                    </div>
                                </div>
                            </div>
                           <div class="row">
                                <div class="col s12">
                                    <div class="input-field ">
                                        <input id="cvv1" type="text" class="validate">
                                        <label for="cvv1">Enter CVV Number</label>
                                        
                                   </div>
                                </div>
                              
                            </div>
                        
                           
                            
                        </form>
                    </div>
                </div >
               
                </div>
       
                <div class=" modal-fixed-footer">
                <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">BOOK</a>
                <a href="BookTicket.aspx" class="modal-action modal-close waves-effect waves-green btn-flat">CANCEL</a>
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
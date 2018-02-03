<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup"  MasterPageFile="~/MasterPage.master"%>
<asp:Content ID="Signup" ContentPlaceHolderID="ContentBody" runat="server">
    <div class="container">             
    <div class="row">
                    <div class="col s12">
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="fname" type="text" class="validate" required="required" runat="server" />
                                <label for="FirstName">Enter First Name</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s12">
                                <input id="lname" type="text" class="validate" required="required" runat="server" />
                                <label for="LastName">Enter Last Name</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="age" type="text" class="validate" required="required" runat="server" />
                                <label for="Age">Enter Your Age</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="mobileno" type="text" class="validate" required="required" maxlength="10" pattern="[0-9]{10}" title="Enter Your Mobile Number" runat="server" />
                                <label for="Number">Mobile Number</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="address" type="text" class="validate" required="required" runat="server" />
                                <label for="address">Enter Your Address</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="email1" type="email" class="validate" required="required" runat="server" />
                                <label for="email1">Email</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="password1" type="password" class="validate" runat="server" />
                                <label for="password1">Password</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="password2" type="password" class="validate" runat="server" oninput="check(this)" />
                                <label for="password2">ConfirmPassword</label>
                            </div>
                            <script type='text/javascript'>
                                function check(input) {
                                    if (input.value != document.getElementById('password1').value) {
                                        input.setCustomValidity('Password Must be Matching.');
                                    } else {
                                        // input is valid -- reset the error message
                                        input.setCustomValidity('');
                                    }
                                }
                                function successfull() {
                                    alert("SignUp Successfull Please Log In ... ")
                                }
                            </script>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                          <a href="#!" runat="server" onserverclick="signup_click"  class="btn">Sign Up</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <a href="#!" runat="server" onserverclick="cancel_click" class="btn">Cancel</a>
                            </div>
                              
                              
                           
                            </div>
                         


                    </div>
                </div>
    </div>
</asp:Content>
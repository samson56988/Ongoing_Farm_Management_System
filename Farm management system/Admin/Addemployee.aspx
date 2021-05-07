<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admi.Master" AutoEventWireup="true" CodeBehind="Addemployee.aspx.cs" Inherits="Farm_management_system.Admin.Addemployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">

    <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Add Employee</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Add Employee</h3>
                                  </div>
                                  <hr>
                                  <form id="Form1" action="" runat="server" method="post" novalidate="novalidate">
                                     
                                      <div class="form-group">
                                          <label>Name</label>
                                          <asp:TextBox ID="txt_name" CssClass="form-control" runat="server"></asp:TextBox>

                                      </div>
                                       <div class="form-group">
                                          <label>DOB</label>
                                          <asp:TextBox ID="txt_dob" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>

                                      </div>

                                      <div class="form-group">
                                          <label>Phone</label>
                                          <asp:TextBox ID="txt_phone" CssClass="form-control"  runat="server"></asp:TextBox>

                                      </div>
                                      <div class="form-group">
                                          <label>Address</label>
                                          <asp:TextBox ID="txt_address" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>

                                      </div>
                                      <div class="form-group">
                                          <label>Username</label>
                                          <asp:TextBox ID="txt_username" CssClass="form-control"  runat="server"></asp:TextBox>

                                      </div>
                                      <div class="form-group">
                                          <label>Password</label>
                                          <asp:TextBox ID="txt_password" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>

                                      </div>

                                       <div class="form-group">
                                          <label>Gender</label>
                                         <asp:DropDownList ID="Genderlist" CssClass="form-control" runat="server">
                                             <asp:ListItem>Male</asp:ListItem>
                                             <asp:ListItem>Female</asp:ListItem>
                                           </asp:DropDownList>

                                      </div>





                                       
                                      
                                     
                                      
                                      <div>
                                         

                                         <asp:Button ID="btnadd" class="btn btn-lg btn-info btn-block"  runat="server" Text="Save" OnClick="btnadd_Click1" />
                                      
                                      </div>
                                        <div class="alert alert-success"  id="msg" runat="server" style="margin-top:10px; display:none">
                           <strong>Employee Added Successfully </strong>
                        </div>
                                  </form>
                              </div>
                          </div>

                        </div>
                    </div> <!-- .card -->

                  </div>



</asp:Content>

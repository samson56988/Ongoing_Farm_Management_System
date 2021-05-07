<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/Employeemaster.Master" AutoEventWireup="true" CodeBehind="Addcow.aspx.cs" Inherits="Farm_management_system.Employee.Addcow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">


    <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Add Cow</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Add Cow</h3>
                                  </div>
                                  <hr>
                                  <form id="Form1" action="" runat="server" method="post" novalidate="novalidate">
                                     
                                      <div class="form-group">
                                          <label>Cow Name</label>
                                          <asp:TextBox ID="txt_name" CssClass="form-control" runat="server"></asp:TextBox>

                                      </div>
                                       <div class="form-group">
                                          <label>Ear Tag</label>
                                          <asp:TextBox ID="txt_eartag" CssClass="form-control"  runat="server"></asp:TextBox>

                                      </div>

                                      <div class="form-group">
                                          <label>Color</label>
                                          <asp:TextBox ID="txt_color" CssClass="form-control"  runat="server"></asp:TextBox>

                                      </div>
                                      <div class="form-group">
                                          <label>Breed</label>
                                          <asp:TextBox ID="txt_breed" CssClass="form-control"  runat="server"></asp:TextBox>

                                      </div>
                                      <div class="form-group">
                                          <label>Age</label>
                                          <asp:TextBox ID="txt_age" CssClass="form-control"  runat="server"></asp:TextBox>

                                      </div>

                                       <div class="form-group">
                                          <label>Gender</label>
                                         <asp:DropDownList ID="Genderlist" CssClass="form-control" runat="server">
                                             <asp:ListItem>M</asp:ListItem>
                                             <asp:ListItem>F</asp:ListItem>
                                           </asp:DropDownList>

                                      </div>

                                      <div class="form-group">
                                          <label>Pasture</label>
                                          <asp:TextBox ID="txt_pasture" CssClass="form-control"  runat="server"></asp:TextBox>

                                      </div>





                                       
                                      
                                     
                                      
                                      <div>
                                         

                                         <asp:Button ID="btnadd" class="btn btn-lg btn-info btn-block"  runat="server" Text="Save" OnClick="btnadd_Click" />
                                        

                                      </div>
                                        <div class="alert alert-success"  id="msg" runat="server" style="margin-top:10px; display:none">
                           <strong>Cow Added Successfully </strong>
                        </div>
                                  </form>
                              </div>
                          </div>

                        </div>
                    </div> <!-- .card -->

                  </div>




</asp:Content>

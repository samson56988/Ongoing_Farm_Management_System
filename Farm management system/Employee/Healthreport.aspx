<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/Employeemaster.Master" AutoEventWireup="true" CodeBehind="Healthreport.aspx.cs" Inherits="Farm_management_system.Employee.Healthreport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">

    
    <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Health

                            </strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Health Report</h3>
                                  </div>
                                  <hr>
                                  <form id="Form1" action="" runat="server" method="post" novalidate="novalidate">
                                     
                                      <div class="form-group">
                                          <label>Date</label>
                                          <asp:TextBox ID="txt_date" CssClass="form-control" TextMode="Date"  runat="server"></asp:TextBox>

                                      </div>
                                       <div class="form-group">
                                          <label>Cowname</label>
                                          <asp:TextBox ID="txt_cowid" CssClass="form-control"  runat="server"></asp:TextBox>

                                      </div>

                                      <div class="form-group">
                                          <label>Event</label>
                                          <asp:TextBox ID="txt_event" CssClass="form-control"  runat="server"></asp:TextBox>

                                      </div>

                                      <div class="form-group">
                                          <label>Diagnosis</label>
                                          <asp:TextBox ID="txt_diagnosis" CssClass="form-control"  runat="server"></asp:TextBox>

                                      </div>

                                      <div class="form-group">
                                          <label>Treatment</label>
                                          <asp:TextBox ID="Txt_treatment" CssClass="form-control"  runat="server"></asp:TextBox>

                                      </div>

                                      <div class="form-group">
                                          <label>Cost of treatment</label>
                                          <asp:TextBox ID="txt_treatmentcost" CssClass="form-control"  runat="server"></asp:TextBox>

                                      </div>

                                      <div class="form-group">
                                          <label>Vet Name</label>
                                          <asp:TextBox ID="TextBox1" CssClass="form-control"  runat="server"></asp:TextBox>

                                      </div>

                                      

                                      <div class="form-group">
                                          <label>Cow ID</label>
                                          <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server"></asp:DropDownList>

                                      </div>




                                     
                                      <div>
                                         

                                         <asp:Button ID="btnadd" class="btn btn-lg btn-info btn-block"  runat="server" Text="Save" />
                                         

                                      </div>
                                        <div class="alert alert-success"  id="msg" runat="server" style="margin-top:10px; display:none">
                           <strong>Report Added Successfully </strong>
                        </div>


                                      <hr />

                                      <div class="form-group">
                                          <h3>Health Report</h3>
                                          <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server">
                                              
                                          </asp:GridView>

                                      </div>
                                       
                                  </form>
                              </div>
                          </div>

                        </div>
                    </div> <!-- .card -->

                  </div>
</asp:Content>

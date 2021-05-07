<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/Employeemaster.Master" AutoEventWireup="true" CodeBehind="Expenditures.aspx.cs" Inherits="Farm_management_system.Employee.Expenditures" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">


    <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Expenditures</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Expenditure</h3>
                                  </div>
                                  <hr>
                                   <form id="Form1" runat="server">
                                     
                                      <div class="form-group">
                                          <label>Date</label>
                                          <asp:TextBox ID="txt_date" CssClass="form-control" TextMode="Date"  runat="server"></asp:TextBox>

                                      </div>
                                       <div class="form-group">
                                          <label>Amount</label>
                                          <asp:TextBox ID="txt_amount" CssClass="form-control"  runat="server"></asp:TextBox>

                                      </div>

                                     
                                      <div>
                                         

                                         <asp:Button ID="btnadd" class="btn btn-lg btn-info btn-block"  runat="server" Text="Save" OnClick="btnadd_Click" />
                                         

                                      </div>
                                        <div class="alert alert-success"  id="msg" runat="server" style="margin-top:10px; display:none">
                           <strong>Expenditure Added Successfully </strong>
                        </div>


                                      <hr />

                                      <div class="form-group">
                                          <h3>Expenditure List</h3>
                                          <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="Expenditureid" DataSourceID="SqlDataSource1">
                                              <Columns>
                                                  <asp:BoundField DataField="Expenditureid" HeaderText="Expenditureid" InsertVisible="False" ReadOnly="True" SortExpression="Expenditureid" />
                                                  <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                                  <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                                              </Columns>
                                              
                                          </asp:GridView>

                                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FarmmanagmentsystemConnectionString %>" SelectCommand="SELECT * FROM [Expenditures]"></asp:SqlDataSource>

                                      </div>
                                       
                                   </form>
                              </div>
                          </div>

                        </div>
                    </div> <!-- .card -->

                  </div>



</asp:Content>

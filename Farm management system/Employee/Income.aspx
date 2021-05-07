<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/Employeemaster.Master" AutoEventWireup="true" CodeBehind="Income.aspx.cs" Inherits="Farm_management_system.Employee.Income" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">


    <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Income</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Income</h3>
                                  </div>
                                  <hr>
                                   <form id="Form1" runat="server">
                                     
                                      <div class="form-group">
                                          <label>Date</label>
                                          <asp:TextBox ID="txt_date" CssClass="form-control" TextMode="Date"  runat="server"></asp:TextBox>

                                      </div>
                                      <div class="form-group">
                                          <label>Type</label>
                                          <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                              <asp:ListItem>Milk</asp:ListItem>
                                          </asp:DropDownList>

                                      </div>

                                       <div class="form-group">
                                          <label>Amount</label>
                                          <asp:TextBox ID="txt_amount" CssClass="form-control"  runat="server"></asp:TextBox>

                                      </div>

                                     
                                      <div>
                                         

                                         <asp:Button ID="btnadd" class="btn btn-lg btn-info btn-block"  runat="server" Text="Save" OnClick="btnadd_Click" />
                                         

                                      </div>
                                        <div class="alert alert-success"  id="msg" runat="server" style="margin-top:10px; display:none">
                           <strong>Income Added Successfully </strong>
                        </div>


                                      <hr />

                                      <div class="form-group">
                                          <h3>Income List</h3>
                                          <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="incomeID" DataSourceID="SqlDataSource1">
                                              <Columns>
                                                  <asp:BoundField DataField="incomeID" HeaderText="incomeID" InsertVisible="False" ReadOnly="True" SortExpression="incomeID" />
                                                  <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                                                  <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                                                  <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                                              </Columns>
                                              
                                          </asp:GridView>

                                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FarmmanagmentsystemConnectionString %>" SelectCommand="SELECT * FROM [income]"></asp:SqlDataSource>

                                      </div>
                                       
                                   </form>
                              </div>
                          </div>

                        </div>
                    </div> <!-- .card -->

                  </div>


</asp:Content>

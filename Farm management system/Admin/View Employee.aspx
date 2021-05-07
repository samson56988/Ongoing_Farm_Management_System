<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admi.Master" AutoEventWireup="true" CodeBehind="View Employee.aspx.cs" Inherits="Farm_management_system.Admin.View_Employee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">

    <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">View Staff</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Staff List</h3>
                                  </div>
                                  <hr>
                                   <form id="form1" runat="server">
                                     
                                      <div class="form-group">

                                          <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="EmployeeID" DataSourceID="SqlDataSource1">
                                              <Columns>
                                                  <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" InsertVisible="False" ReadOnly="True" SortExpression="EmployeeID" />
                                                  <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                                                  <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                                                  <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                                  <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                                                  <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                                                  <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                              </Columns>
                                              
                                          </asp:GridView>

                                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FarmmanagmentsystemConnectionString %>" SelectCommand="SELECT * FROM [Staff]"></asp:SqlDataSource>

                                      </div>
                                       
                                      
                                     
                                      
                                      <div>
                                         

                        </div>
                                   </form>
                              </div>
                          </div>

                        </div>
                    </div> <!-- .card -->
</div>


</asp:Content>

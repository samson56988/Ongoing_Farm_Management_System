<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/Employeemaster.Master" AutoEventWireup="true" CodeBehind="viewcows.aspx.cs" Inherits="Farm_management_system.Employee.viewcows" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">
    <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">View Cows</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">View Cows</h3>
                                  </div>
                                  <hr>
                                   <form id="form1" runat="server">
                                     
                                      <div class="form-group">

                                          <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="CowID" DataSourceID="SqlDataSource1">
                                              <Columns>
                                                  <asp:BoundField DataField="CowID" HeaderText="CowID" InsertVisible="False" ReadOnly="True" SortExpression="CowID" />
                                                  <asp:BoundField DataField="Cowname" HeaderText="Cowname" SortExpression="Cowname" />
                                                  <asp:BoundField DataField="Eartag" HeaderText="Eartag" SortExpression="Eartag" />
                                                  <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                                                  <asp:BoundField DataField="Breed" HeaderText="Breed" SortExpression="Breed" />
                                                  <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                                                  <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                                  <asp:BoundField DataField="Pasture" HeaderText="Pasture" SortExpression="Pasture" />
                                              </Columns>
                                              
                                          </asp:GridView>

                                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FarmmanagmentsystemConnectionString %>" SelectCommand="SELECT * FROM [Cows]"></asp:SqlDataSource>

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

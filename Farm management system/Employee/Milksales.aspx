<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/Employeemaster.Master" AutoEventWireup="true" CodeBehind="Milksales.aspx.cs" Inherits="Farm_management_system.Employee.Milksales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">
    <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Milk Sales

                            </strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Sales</h3>
                                  </div>
                                  <hr>
                                   <form id="Form1" runat="server">
                                     
                                      <div class="form-group">
                                          <label>Date</label>
                                          <asp:TextBox ID="txt_date" CssClass="form-control" TextMode="Date"  runat="server"></asp:TextBox>

                                      </div>
                                       <div class="form-group">
                                          <label>Price</label>
                                          <asp:TextBox ID="txt_price" CssClass="form-control"  runat="server"></asp:TextBox>

                                      </div>

                                      <div class="form-group">
                                          <label>Client Name</label>
                                          <asp:TextBox ID="txt_clientname" CssClass="form-control"  runat="server"></asp:TextBox>

                                      </div>

                                      <div class="form-group">
                                          <label>Client Phone</label>
                                          <asp:TextBox ID="txt_Phone" CssClass="form-control"  runat="server"></asp:TextBox>

                                      </div>
                                      <div class="form-group">
                                          <label>Quantity</label>
                                          <asp:TextBox ID="txt_quantity" CssClass="form-control"  runat="server"></asp:TextBox>

                                      </div>

                                      

                                      <div class="form-group">
                                          <label>Total</label>
                                          <asp:TextBox ID="txt_total" CssClass="form-control"  runat="server"></asp:TextBox>

                                      </div>

                                      <div class="form-group">
                                          <label>Employee ID</label>
                                          <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server"></asp:DropDownList>

                                      </div>




                                     
                                      <div>
                                         

                                         <asp:Button ID="btnadd" class="btn btn-lg btn-info btn-block"  runat="server" Text="Save" OnClick="btnadd_Click" />
                                         

                                      </div>
                                        <div class="alert alert-success"  id="msg" runat="server" style="margin-top:10px; display:none">
                           <strong>Sales Added Successfully </strong>
                        </div>


                                      <hr />

                                      <div class="form-group">
                                          <h3>Sales List</h3>
                                          <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                              <Columns>
                                                  <asp:BoundField DataField="SalesID" HeaderText="SalesID" SortExpression="SalesID" />
                                                  <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                                  <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                                  <asp:BoundField DataField="Clientname" HeaderText="Clientname" SortExpression="Clientname" />
                                                  <asp:BoundField DataField="ClientPhone" HeaderText="ClientPhone" SortExpression="ClientPhone" />
                                                  <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                                                  <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                                                  <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" SortExpression="EmployeeID" />
                                              </Columns>
                                              
                                          </asp:GridView>

                                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FarmmanagmentsystemConnectionString %>" SelectCommand="SELECT * FROM [Milksales]"></asp:SqlDataSource>

                                      </div>
                                       
                                   </form>
                              </div>
                          </div>

                        </div>
                    </div> <!-- .card -->

                  </div>


</asp:Content>

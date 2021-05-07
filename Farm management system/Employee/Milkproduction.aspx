<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/Employeemaster.Master" AutoEventWireup="true" CodeBehind="Milkproduction.aspx.cs" Inherits="Farm_management_system.Employee.Milkproduction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">
    <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Milk Production

                            </strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Daily Milk Production</h3>
                                  </div>
                                  <hr>
                                   <form id="Form1" runat="server">
                                     
                                      <div class="form-group">
                                          <label>Date</label>
                                          <asp:TextBox ID="txt_date" CssClass="form-control" TextMode="Date"  runat="server"></asp:TextBox>

                                      </div>
                                       

                                      <div class="form-group">
                                          <label>Cow Name</label>
                                          <asp:TextBox ID="txt_cowname" CssClass="form-control"  runat="server"></asp:TextBox>

                                      </div>

                                      <div class="form-group">
                                          <label>AM Milk</label>
                                          <asp:TextBox ID="txt_ammilk" CssClass="form-control"  runat="server"></asp:TextBox>

                                      </div>

                                      <div class="form-group">
                                          <label>Noon Milk</label>
                                          <asp:TextBox ID="Txt_noonmilk" CssClass="form-control"  runat="server"></asp:TextBox>

                                      </div>

                                      <div class="form-group">
                                          <label>PM Milk</label>
                                          <asp:TextBox ID="txt_PmMilk" CssClass="form-control"  runat="server"></asp:TextBox>

                                      </div>


                                      <div class="form-group">
                                          <label>Total Milk</label>
                                          <asp:TextBox ID="txt_totalmilk" CssClass="form-control"  runat="server"></asp:TextBox>

                                      </div>

                                      




                                     
                                      <div>
                                         

                                         <asp:Button ID="btnadd" class="btn btn-lg btn-info btn-block"  runat="server" Text="Save" OnClick="btnadd_Click" />
                                         

                                      </div>
                                        <div class="alert alert-success"  id="msg" runat="server" style="margin-top:10px; display:none">
                           <strong>Production Added Successfully </strong>
                        </div>


                                      <hr />

                                      <div class="form-group">
                                          <h3>Sales List</h3>
                                          <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductionID" DataSourceID="SqlDataSource1">
                                              <Columns>
                                                  <asp:BoundField DataField="ProductionID" HeaderText="ProductionID" InsertVisible="False" ReadOnly="True" SortExpression="ProductionID" />
                                                  <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                                  <asp:BoundField DataField="Cowname" HeaderText="Cowname" SortExpression="Cowname" />
                                                  <asp:BoundField DataField="AMmilk" HeaderText="AMmilk" SortExpression="AMmilk" />
                                                  <asp:BoundField DataField="Noonmilk" HeaderText="Noonmilk" SortExpression="Noonmilk" />
                                                  <asp:BoundField DataField="PMmilk" HeaderText="PMmilk" SortExpression="PMmilk" />
                                                  <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                                                  <asp:BoundField DataField="CowID" HeaderText="CowID" SortExpression="CowID" />
                                              </Columns>
                                              
                                          </asp:GridView>

                                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FarmmanagmentsystemConnectionString %>" SelectCommand="SELECT * FROM [Production]"></asp:SqlDataSource>

                                      </div>
                                       
                                   </form>
                              </div>
                          </div>

                        </div>
                    </div> <!-- .card -->

                  </div>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/Employeemaster.Master" AutoEventWireup="true" CodeBehind="Cowbreeding.aspx.cs" Inherits="Farm_management_system.Employee.Cowbreeding" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">


    <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Cow Breeding


                            </strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Cow Breeding</h3>
                                  </div>
                                  <hr>
                                   <form id="Form1" runat="server">
                                     
                                      <div class="form-group">
                                          <label>Heat Date</label>
                                          <asp:TextBox ID="heattxt_date" CssClass="form-control" TextMode="Date"  runat="server"></asp:TextBox>

                                      </div>
                                      <div class="form-group">
                                          <label>Bread Date</label>
                                          <asp:TextBox ID="txt_breaddate" CssClass="form-control" TextMode="Date"  runat="server"></asp:TextBox>

                                      </div>
                                      <div class="form-group">
                                          <label>Pregnancy Date</label>
                                          <asp:TextBox ID="txt_datepregnant" CssClass="form-control" TextMode="Date"  runat="server"></asp:TextBox>

                                      </div>
                                      <div class="form-group">
                                          <label>Expected date to Calve</label>
                                          <asp:TextBox ID="Txt_expectedcalve" CssClass="form-control" TextMode="Date"  runat="server"></asp:TextBox>

                                      </div>
                                      <div class="form-group">
                                          <label> Date Calved</label>
                                          <asp:TextBox ID="Text_datecalve" CssClass="form-control" TextMode="Date"  runat="server"></asp:TextBox>

                                      </div>


                                       <div class="form-group">
                                          <label>Cowname</label>
                                          <asp:TextBox ID="txt_cowname" CssClass="form-control"  runat="server"></asp:TextBox>

                                      </div>

                                      <div class="form-group">
                                          <label>Cow Age</label>
                                          <asp:TextBox ID="txt_event" CssClass="form-control"  runat="server"></asp:TextBox>

                                      </div>
                                     
                                      



                                     
                                      <div>
                                         

                                         <asp:Button ID="btnadd" class="btn btn-lg btn-info btn-block"  runat="server" Text="Save" OnClick="btnadd_Click" />
                                         

                                      </div>
                                        <div class="alert alert-success"  id="msg" runat="server" style="margin-top:10px; display:none">
                           <strong>Breading Added Successfully </strong>
                        </div>


                                      <hr />

                                      <div class="form-group">
                                          <h3>Breading Report</h3>
                                          <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="BreadID" DataSourceID="SqlDataSource1">
                                              <Columns>
                                                  <asp:BoundField DataField="BreadID" HeaderText="BreadID" InsertVisible="False" ReadOnly="True" SortExpression="BreadID" />
                                                  <asp:BoundField DataField="Heatdate" HeaderText="Heatdate" SortExpression="Heatdate" />
                                                  <asp:BoundField DataField="Breaddate" HeaderText="Breaddate" SortExpression="Breaddate" />
                                                  <asp:BoundField DataField="Pregnancydate" HeaderText="Pregnancydate" SortExpression="Pregnancydate" />
                                                  <asp:BoundField DataField="Expectedcalvedate" HeaderText="Expectedcalvedate" SortExpression="Expectedcalvedate" />
                                                  <asp:BoundField DataField="Datecalved" HeaderText="Datecalved" SortExpression="Datecalved" />
                                                  <asp:BoundField DataField="Cowname" HeaderText="Cowname" SortExpression="Cowname" />
                                                  <asp:BoundField DataField="CowID" HeaderText="CowID" SortExpression="CowID" />
                                              </Columns>
                                              
                                          </asp:GridView>

                                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FarmmanagmentsystemConnectionString %>" SelectCommand="SELECT * FROM [Bread]"></asp:SqlDataSource>

                                      </div>
                                       
                                   </form>
                              </div>
                          </div>

                        </div>
                    </div> <!-- .card -->

                  </div>

</asp:Content>

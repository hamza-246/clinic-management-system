<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="orderdetail.aspx.cs" Inherits="clinic_management_system.admin.orderdetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
							<div class="col-12"> 
                  <!-- Recent Order Table -->
                  <div class="card card-table-border-none" id="recent-orders">
                    <div class="card-header justify-content-between">
                      <h2>Recent Orders</h2>
                      <div class="date-range-report ">
                        <span></span>
                      </div>
                    </div>
                    <div class="card-body pt-0 pb-5">
                      <table class="table card-table table-responsive table-responsive-large" style="width:100%">
                        <thead>
                          <tr>
                            <th>Clinic User ID</th>
                            <th class="d-none d-md-table-cell">Total Price</th>
                            <th class="d-none d-md-table-cell">Order Date</th>
                            <th class="d-none d-md-table-cell">Order Status</th>
                            <th></th>
                          </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="Repeater1" OnItemCommand="Repeater1_ItemCommand" runat="server">
                                <ItemTemplate>
                                    <tr>
                            <td ><%# Eval("clinicUserID") %></td>
                            <td class="d-none d-md-table-cell"><%# Eval("TotalPrice") %></td>
                            <td class="d-none d-md-table-cell"><%# Eval("OrderDate") %></td>
                            <td >
                              <span><%# Eval("orderStatus") %></span>
                            </td>
                            <td>
                                <asp:Button ID="Details" class="btn btn-block mt-2 btn-lg btn-primary btn-pill" style="background-color:#B0B435;border-color:#B0B435" CommandArgument='<%# Eval("clinicUserID") %>' CommandName="ClinicUserID" runat="server" Text="Detail" />
                            </td>
                          </tr>
                          <tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                      </table>
                    </div>
                  </div>
</div>
						</div>

</asp:Content>

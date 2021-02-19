<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="updatestatus.aspx.cs" Inherits="clinic_management_system.admin.updatestatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <div class="row">
                                  <div class="col-lg-12">
                                      <div class="card card-default">
                                          <div class="card-header card-header-border-bottom">
                                              <h2>Update Status</h2>
                                          </div>
                                          <div class="card-body">
                                              
                                                  <div class="form-row">
                                                      <div class="col-md-12 mb-3">
                                                          <label for="">Order Id</label>
                                                          <asp:TextBox type="text" class="form-control" id="Orderid" placeholder="OrderId"  runat="server"></asp:TextBox>
                                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="Orderid" Font-Size="Small" ForeColor="Red">*Required</asp:RequiredFieldValidator>
                                                      </div>
                                                      <div class="col-md-12 mb-3">
                                                          <label for="">Order Status</label>
                                                          <asp:TextBox type="text" class="form-control" id="Orderstatus" placeholder="Order status"  runat="server"></asp:TextBox>
                                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="Orderstatus" Font-Size="Small" ForeColor="Red">*Required</asp:RequiredFieldValidator>
                                                          
                                                      </div>
                                                    
                                                  </div>
                                            
                                                  </div>

                                             
                                             
                                          <div class="d-flex justify-content-center align-items-center mb-5">
                                              <asp:Button ID="Update" style="background-color:#b0b435 ;" class="btn btn-primary w-50" OnClick="Update_Click" runat="server" Text="Update" />
                                          </div>

                                      </div>
                                      </div>
                                  </div>
                             
        </div>

</asp:Content>

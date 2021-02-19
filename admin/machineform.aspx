<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="machineform.aspx.cs" Inherits="clinic_management_system.admin.machineform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content-wrapper">
            <div class="content">

                 <div runat="server" id="alert" class="alert alert-success alert-dismissible fade">
                                               <button type="button" class="close" data-dismiss="alert">&times;</button>
                                                 <strong>  Add Successfully </strong>
                                                     </div>

                <div class="row">
                                  <div class="col-lg-12">
                                      <div class="card card-default">
                                          <div class="card-header card-header-border-bottom">
                                              <h2>Add New Machine</h2>
                                          </div>
                                          <div class="card-body">
                                              
                                                  <div class="form-row">
                                                      <div class="col-md-12 mb-3">
                                                          <label for="">Machine name</label>
                                                          <asp:TextBox type="text" class="form-control" id="machinename" placeholder="Machine name"  runat="server"></asp:TextBox>
                                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="machinename" Font-Size="Small" ForeColor="Red">*Required</asp:RequiredFieldValidator>
                                                      </div>
                                                      <div class="col-md-12 mb-3">
                                                          <label for="">Machine price</label>
                                                          <asp:TextBox type="text" class="form-control" id="machineprice" placeholder="machine price"  runat="server"></asp:TextBox>
                                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="machineprice" Font-Size="Small" ForeColor="Red">*Required</asp:RequiredFieldValidator>
                                                          
                                                      </div>

                                                      <div class="col-md-12 mb-3">
                                                          <label for="">Machine quantity</label>
                                                          <asp:TextBox type="text" TextMode="Number" class="form-control" id="machinequantity" placeholder="Machine quantity"  runat="server"></asp:TextBox>
                                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="machinequantity" Font-Size="Small" ForeColor="Red">*Required</asp:RequiredFieldValidator>
                                                      </div>
                                                    
                                                  </div>
                                                  <div class="form-row">
                                                      <div class="col-md-6 mb-3">
                                                          <label for="">Image:</label>
                                                          <br />
                                                          <asp:FileUpload ID="productimage" runat="server" />
                                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required" ControlToValidate="productimage" Font-Size="Small" ForeColor="Red">*Required</asp:RequiredFieldValidator>
                                                      </div>
                                                      <div class="col-md-12 mb-3">
                                                          <label for="">product description</label>
                                                          <asp:TextBox ID="Description" class="form-control" runat="server" placeholder="Short Description"></asp:TextBox>
                                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required" ControlToValidate="Description" Font-Size="Small" ForeColor="Red">*Required</asp:RequiredFieldValidator>
                                                      </div>
                                            
                                                  </div>

                                             
                                             

                                              <asp:Button ID="Button1" style="background-color:#b0b435 ;" class="btn btn-primary" runat="server" OnClick="Button1_Click" Text="Add product" />
                                          </div>
                                      </div>
                                  </div>
                              </div>
  </div>
  
            
  
  
          </div>

</asp:Content>

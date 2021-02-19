<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="clinic_management_system.admin.admin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="content-wrapper">
          <div class="content">						 
                  <!-- Top Statistics -->
                  <div class="row">
                    <div class="col-xl-3 col-sm-6">
                      <div class="card card-mini mb-4">
                        <div class="card-body">
                           <h2><asp:Label ID="Label1" class="mb-1" runat="server" Text="Label"></asp:Label></h2> 
                          <p>Total Users</p>
                          <div class="chartjs-wrapper">
                              
                            <i style="color:#B0B435" class="fas fa-users fa-6x d-flex justify-content-center align-items-center mt-4"></i>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-xl-3 col-sm-6">
                      <div class="card card-mini  mb-4">
                        <div class="card-body">
                          <h2><asp:Label ID="Label2" class="mb-1" runat="server" Text="Label"></asp:Label></h2>
                          <p>Total Products</p>
                          <div class="chartjs-wrapper">
                             <i style="color:#B0B435" class="fas fa-prescription-bottle-alt fa-6x d-flex justify-content-center align-items-center mt-4"></i>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-xl-3 col-sm-6">
                      <div class="card card-mini mb-4">
                        <div class="card-body">
                          <h2 class="mb-1"><asp:Label ID="orderCount" runat="server" Text="Label"></asp:Label></h2>
                          <p>Total Order</p>
                          <div class="chartjs-wrapper">
                            <i style="color:#B0B435" class="fas fa-cart-plus fa-6x d-flex justify-content-center align-items-center mt-4"></i>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-xl-3 col-sm-6">
                      <div class="card card-mini mb-4">
                        <div class="card-body">
                          <h2><asp:Label ID="Label3" class="mb-1" runat="server" Text="Label"></asp:Label></h2>
                          <p>Total Feedbacks</p>
                          <div class="chartjs-wrapper">
                            <i style="color:#B0B435" class="fas fa-comment-alt fa-6x d-flex justify-content-center align-items-center mt-4"></i>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

						<div class="row">


<div class="col-xl-12">
  <!-- Top Products -->
  <div class="card card-default" data-scroll-height="580">
    <div class="card-header justify-content-between mb-4">
      <h2>Top Products</h2>
      <div>
          <button class="text-black-50 mr-2 font-size-20"><i class="mdi mdi-cached"></i></button>
          <div class="dropdown show d-inline-block widget-dropdown">
              <a class="dropdown-toggle icon-burger-mini" href="#" role="button" id="dropdown-product" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static">
              </a>
              <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdown-product">
                <li class="dropdown-item"><a  href="#">Update Data</a></li>
                <li class="dropdown-item"><a  href="#">Detailed Log</a></li>
                <li class="dropdown-item"><a  href="#">Statistics</a></li>
                <li class="dropdown-item"><a  href="#">Clear Data</a></li>
              </ul>
            </div>
      </div>

    </div>
    <div class="card-body py-0">

        <asp:Repeater ID="Repeater1" runat="server">

            <ItemTemplate>
                <div class="media d-flex mb-5">
        <div class="media-image align-self-center mr-3 rounded">
          <a href="#"><img width="100px" src='<%#Eval("medicineImage")%>'' alt="customer image"></a>
        </div>
        <div class="media-body align-self-center">
          <a href="#"><h6 class="mb-3 text-dark font-weight-medium"> <%#Eval("medicineName")%></h6></a>
          <p class="float-md-right"><span class="text-dark mr-2"> <%#Eval("medicineQuantity") %> </span>Stock</p>
          <p class="d-none d-md-block"><%#Eval("medicineShortdescription") %></p>
          <p class="mb-0">
            <span class="text-dark ml-3">Rs <%#Eval("medicinePrice") %></span>
          </p>
        </div>
      </div>
            </ItemTemplate>
        </asp:Repeater>


                        <asp:Repeater ID="Repeater2" runat="server">

                    <ItemTemplate>

                                         <div class="media d-flex mb-5">
        <div class="media-image align-self-center mr-3 rounded">
          <a href="#"><img width="100px" src='<%#Eval("machineImage")%>'' alt="customer image"></a>
        </div>
        <div class="media-body align-self-center">
          <a href="#"><h6 class="mb-3 text-dark font-weight-medium"> <%#Eval("machineName")%></h6></a>
          <p class="float-md-right"><span class="text-dark mr-2"> <%#Eval("machineQuantity") %> </span>Stock</p>
          <p class="d-none d-md-block"><%#Eval("machineShortdescription") %></p>
          <p class="mb-0">
            <span class="text-dark ml-3">Rs <%#Eval("machinePrice") %></span>
          </p>
        </div>
      </div>

                    </ItemTemplate>
                </asp:Repeater>

      </div>
  </div>
</div>
						</div>
</div>

          


        </div>

</asp:Content>

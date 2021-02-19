<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="recentorders.aspx.cs" Inherits="clinic_management_system.recentorders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <!-- Start All Title Box -->
    <div class="all-title-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>Checkout</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="shop.aspx">Shop</a></li>
                        <li class="breadcrumb-item active">Recent Orders</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->


	<div class="content-wrapper">
          <div class="content">					<div class="invoice-wrapper rounded border bg-white py-5 px-3 px-md-4 px-lg-5">
						<div class="d-flex justify-content-end">
							
							<div class="btn-group" style="background-color:#B0B435 ">
                                <asp:Button ID="Pdfcreater" class="btn btn-sm btn-secondary" style="background-color:#B0B435;border-color:#B0B435" runat="server" Text="Save as Pdf" />
								<button class="btn btn-sm btn-secondary" style="background-color:#B0B435;border-color:#B0B435">
									<i class="mdi mdi-printer"></i> Print</button>
							</div>
						</div>

						<div class="row pt-5">
							<div class="col-xl-3 col-lg-4">
								<p class="text-dark mb-2 font-weight-bold">From</p>
								<address>
									cilinic management system
									<br> Aptech Site, karachi. 
									<br> Email: cms@gmail.com
									
								</address>
							</div>
							<div class="col-xl-3 col-lg-4">
								<p class="text-dark mb-2 font-weight-bold">To</p>
								<address>

                                    <asp:Repeater ID="Repeater3" runat="server">
										<ItemTemplate>

										 Clinic Name:  <%#Eval("clinicName") %>
									<br> Address:  <%# Eval("clinicAddress") %>
									<br> Email:  <%# Eval("clinicEmail") %>

										</ItemTemplate>
                                    </asp:Repeater>
								</address>
							</div>
						</div>


			  <table class="table table-striped">
  <thead>
    <tr>
      
      <th scope="col">Name</th>
      <th scope="col">Price</th>
      <th scope="col">Quantity</th>
		<th scope="col">Total price</th>
		      <th scope="col">OrderDate</th>
		<th scope="col">Order Status</th>
    </tr>
  </thead>
  <tbody>
           <asp:Repeater ID="Repeater1" runat="server">
									<ItemTemplate>
										<tr>
									
									<td><%#Eval("medicineName") %></td>
									<td><%#Eval("medicinePrice") %></td>
									<td><%#Eval("UsermedicineQuantity") %></td>
									<td><%#Eval("totalmedicineprice") %></td>
											<td><%#Eval("OrderDate") %></td>
											<td><%#Eval("orderStatus") %></td>

								</tr>
									</ItemTemplate>
                                </asp:Repeater>

	  <asp:Repeater ID="Repeater2" runat="server">
									<ItemTemplate>
										<tr>
									
									<td><%#Eval("machineName") %></td>
									<td><%#Eval("machinePrice") %></td>
									<td><%#Eval("UsermachineQuantity") %></td>
									<td><%#Eval("totalmachineprice") %></td>
											<td><%#Eval("OrderDate") %></td>
											<td><%#Eval("orderStatus") %></td>
								</tr>
									</ItemTemplate>
                                </asp:Repeater>


  </tbody>
</table>
			  
					
					</div>
</div>

          


        </div>


</asp:Content>

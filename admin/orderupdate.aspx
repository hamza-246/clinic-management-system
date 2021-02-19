<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="orderupdate.aspx.cs" Inherits="clinic_management_system.admin.orderupdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
       <th scope="col">Order ID</th>
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
									<td><%#Eval("orderID") %></td>
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
									<td><%#Eval("orderID") %></td>
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
			  
			 <div class="row justify-content-end">
							<div class="col-lg-5 col-xl-4 col-xl-3 ml-sm-auto">
                                <asp:Button ID="update" OnClick="update_Click" class="btn btn-block mt-2 btn-lg btn-primary btn-pill" style="background-color:#B0B435;border-color:#B0B435" runat="server" Text="Update Status" />
							</div>
						</div>		
					</div>
</div>

          


        </div>

</asp:Content>

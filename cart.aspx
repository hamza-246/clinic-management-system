<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="Clinic_Management_System.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Start All Title Box -->
    <div class="all-title-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>Cart</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="shop.aspx">Shop</a></li>
                        <li class="breadcrumb-item active">Cart</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->


   

    <!-- Start Cart  -->
    <div class="cart-box-main">
        <div class="container">
            <div class="row">

                 

                <div class="col-lg-12">

                    <div runat="server" id="alert" class="alert alert-danger alert-dismissible fade">
    <button type="button" class="close" data-dismiss="alert">&times;</button>
    <strong>  Please Add product in cart! </strong>
  </div>

                    <div class="table-main table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Images</th>
                                    <th>Product Name</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Total</th>
                                    <th>Remove</th>
                                </tr>
                            </thead>
                            <tbody>

                                <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand" OnItemDataBound="Repeater1_ItemDataBound">

                                    <ItemTemplate>

                                        <tr>

                                    <td class="thumbnail-img">
                                        <a href="#">
									<img class="img-fluid" src='<%# Eval("medicineImage") %>'' alt="" />
								</a>
                                    </td>
                                    <td class="name-pr">
                                        <a href="#">
									<%# Eval("medicineName") %>
								</a>
                                    </td>
                                    <td class="price-pr">
                                        <p><%# Eval("medicinePrice") %></p>
                                    </td>
                                    <td class="quantity-box"><input type="number" size="4" value='<%#Eval("UsermedicineQuantity") %>' readonly="readonly" class="c-input-text qty text"></td>
                                    <td class="total-pr">
                                        <%# Eval("totalmedicineprice") %>
                                    </td>
                                   <td class="remove-pr">
                                        <a>
									 <asp:Button ID="medicineRemove" CommandArgument='<%# Eval("OrderID") %>' CommandName="OrderID" runat="server" Text="Remove" CssClass="bg-white border-0" ForeColor="black" Font-Bold="true" /> 
								</a>
                                    </td>
                                </tr>

                                    </ItemTemplate>

                                </asp:Repeater>
                                
                                

                                <asp:Repeater ID="Repeater2" runat="server" OnItemCommand="Repeater2_ItemCommand" OnItemDataBound="Repeater2_ItemDataBound">

                                    <ItemTemplate>

                                        <tr>

                                    <td class="thumbnail-img">
                                        <a href="#">
									<img class="img-fluid" src='<%# Eval("machineImage") %>'' alt="" />
								</a>
                                    </td>
                                    <td class="name-pr">
                                        <a href="#">
									<%# Eval("machineName") %>
								</a>
                                    </td>
                                    <td class="price-pr">
                                        <p><%# Eval("machinePrice") %></p>
                                    </td>
                                    <td class="quantity-box"><input type="number" size="4" value='<%#Eval("UsermachineQuantity") %>' readonly="readonly" class="c-input-text qty text"></td>
                                    <td class="total-pr">
                                        <%# Eval("totalmachineprice") %>
                                    </td>
                                    <td class="remove-pr">
                                        <a>
									 <asp:Button ID="removemachinecart" runat="server" Text="Remove" CommandArgument='<%# Eval("OrderID") %>' CommandName="OrderID" CssClass="bg-white border-0" ForeColor="black" Font-Bold="true" /> 
								</a>
                                    </td>
                                </tr>

                                    </ItemTemplate>

                                </asp:Repeater>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div class="row my-5">
                <div class="col-lg-8 col-sm-12"></div>
                <div class="col-lg-4 col-sm-12">
                    <div class="order-box">
                        <h3>Order summary</h3>
                        <div class="d-flex">
                            <h4>Sub Total</h4>
                            <asp:Label ID="subTotal" class="ml-auto font-weight-bold" runat="server" Text="0"></asp:Label>
                        </div>
                       
                        <hr class="my-1">
                        <div class="d-flex">
                            <h4>Tax</h4>
                            <div class="ml-auto font-weight-bold"> 0 </div>
                        </div>
                        <div class="d-flex">
                            <h4>Shipping Cost</h4>
                            <div class="ml-auto font-weight-bold"> Free </div>
                        </div>
                        <hr>
                        <div class="d-flex gr-total">
                            <h5>Grand Total</h5>
                             <asp:Label ID="gTotal" class="ml-auto font-weight-bold" runat="server" Text="0"></asp:Label>
                        </div>
                        <hr> </div>
                </div>
                <a class="d-flex shopping-box ml-auto"><asp:Button OnClick="Checkout_Click" ID="Checkout" class="ml-auto btn hvr-hover" runat="server" Text="Checkout" /></a>
            </div>

        </div>
    </div>
    <!-- End Cart -->
</asp:Content>

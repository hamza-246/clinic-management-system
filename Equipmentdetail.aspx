<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Equipmentdetail.aspx.cs" Inherits="Clinic_Management_System.Equipmentdetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <!-- Start All Title Box -->
    <div class="all-title-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>Medicine Detail</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="shop.aspx">Medicine Shop</a></li>
                        <li class="breadcrumb-item active">Medicine Detail</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->

    <!-- Start Shop Detail  -->
    <div class="shop-detail-box-main">
        <div class="container">
            <div class="row">
                
			
                <asp:Repeater ID="Repeater1" runat="server" OnItemDataBound="Repeater1_ItemDataBound">
                    <ItemTemplate>

                        <div class="col-xl-5 col-lg-5 col-md-6">
                    <div id="carousel-example-1" class="single-product-slider carousel slide" data-ride="carousel">
                        <div class="carousel-inner" role="listbox">
                            <div class="carousel-item active"> <img class="d-block w-100" src='<%#Eval("machineImage") %>' alt="First slide"> </div>
                            <div class="carousel-item"> <img class="d-block w-100" src='<%#Eval("machineImage") %>' alt="Second slide"> </div>
                            <div class="carousel-item"> <img class="d-block w-100" src='<%#Eval("machineImage") %>' alt="Third slide"> </div>
                        </div>
                        <a class="carousel-control-prev" href="#carousel-example-1" role="button" data-slide="prev"> 
						<i class="fa fa-angle-left" aria-hidden="true"></i>
						<span class="sr-only">Previous</span> 
					</a>
                        <a class="carousel-control-next" href="#carousel-example-1" role="button" data-slide="next"> 
						<i class="fa fa-angle-right" aria-hidden="true"></i> 
						<span class="sr-only">Next</span> 
					</a>
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-example-1" data-slide-to="0" class="active">
                                <img class="d-block w-100 img-fluid" src='<%#Eval("machineImage") %>' alt="" />
                            </li>
                            <li data-target="#carousel-example-1" data-slide-to="1">
                                <img class="d-block w-100 img-fluid" src='<%#Eval("machineImage") %>' alt="" />
                            </li>
                            <li data-target="#carousel-example-1" data-slide-to="2">
                                <img class="d-block w-100 img-fluid" src='<%#Eval("machineImage") %>' alt="" />
                            </li>
                        </ol>
                    </div>
                </div>
                <div class="col-xl-7 col-lg-7 col-md-6">
                    <div class="single-product-details">
                        <h2><%#Eval("machineName") %></h2>
                        <h5> Rs <%#Eval("machinePrice") %> </h5>
                        <p class="available-stock"><span> <%#Eval("machineQuantity") %> / <a style=" font-weight:800" href="#">8 sold </a></span><p>
						<h4>Short Description:</h4>
						<p><%#Eval("machineShortdescription") %></p>
						<ul>
							<li>
								<div class="form-group quantity-box">
									<label class="control-label">Quantity</label>
                                     <asp:TextBox class="form-control" id="machinequantity" TextMode="Number" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter the Quantity" ControlToValidate="machinequantity" ForeColor="Red">*Enter the Quantity</asp:RequiredFieldValidator>
								</div>
							</li>
						</ul>

						<div class="price-box-bar">
							<div class="cart-and-bay-btn">
								<a class="btn hvr-hover" data-fancybox-close="" href="#">Buy New</a>
							<asp:Button ID="Addtocart" class="btn hvr-hover" CommandArgument='<%#Eval("machineID") %>' CommandName="machineID" runat="server" OnClick="Addtocart_Click" Text="Add to cart" />
							</div>
						</div>

						<div class="add-to-btn">
							<div class="add-comp">
								<a class="btn hvr-hover" href="#"><i class="fas fa-heart"></i> Add to wishlist</a>
								<a class="btn hvr-hover" href="#"><i class="fas fa-sync-alt"></i> Add to Compare</a>
							</div>
							<div class="share-bar">
								<a class="btn hvr-hover" href="#"><i class="fab fa-facebook" aria-hidden="true"></i></a>
								<a class="btn hvr-hover" href="#"><i class="fab fa-google-plus" aria-hidden="true"></i></a>
								<a class="btn hvr-hover" href="#"><i class="fab fa-twitter" aria-hidden="true"></i></a>
								<a class="btn hvr-hover" href="#"><i class="fab fa-pinterest-p" aria-hidden="true"></i></a>
								<a class="btn hvr-hover" href="#"><i class="fab fa-whatsapp" aria-hidden="true"></i></a>
							</div>
						</div>
                    </div>
                </div>
            </div>

                    </ItemTemplate>
                </asp:Repeater>

        </div>
    </div>
    <!-- End Cart -->

    </div>
</asp:Content>

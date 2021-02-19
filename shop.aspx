<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="shop.aspx.cs" Inherits="clinic_management_system.shop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Start Shop Page  -->
    <div class="shop-box-inner">
        <div class="container">
            <div class="row">
                <div class="col-xl-9 col-lg-9 col-sm-12 col-xs-12 shop-content-right">

                    <div class="right-product-box">
                        <div class="product-categorie-box">
                            
                            <div class="tab-content">
                            <div class="row">

                                <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">

                                    <ItemTemplate>

                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                            <div class="products-single fix">
                                                <div class="box-img-hover">
                                                    <div class="type-lb">
                                                        <p class="new">New</p>
                                                    </div>
                                                    <img src='<%#Eval("medicineImage")%>' class="img-fluid" alt="Image">
                                                    <div class="mask-icon">
                                                        <ul>
                                                            <li><a href="shop-detail.aspx" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                            <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                                        </ul>
                                                        <a class="cart"><asp:Button ID="addCart" CommandArgument='<%#Eval("medicineID") %>' CommandName="medicinecart" runat="server" BackColor="#B0B435" BorderStyle="None" Text="Add to Cart" /></a>   
                                                    </div>
                                                </div>
                                                <div class="why-text">
                                                    <p class="available-stock"><span> <%#Eval("medicineQuantity")%> / <a style=" font-weight:800" href="#">8 sold </a></span><p>
                                                        <h4>  <%#Eval("medicineName")%></h4>
                                                        <h5> Rs <%#Eval("medicinePrice")%></h5>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                                     <asp:Button ID="Button1" BackColor="#B0B435" CommandArgument='<%#Eval("medicineID") %>' CommandName="medicineID" BorderStyle="None" ForeColor="White" Font-Bold="true" Height="28px" runat="server" Text="View Detail" />                                                </div>
                                            </div>
                                        </div>


                                    </ItemTemplate>

                                </asp:Repeater>

                                        
                               </div>
                                </div>
                        </div>
                    </div>
                </div>
				<div class="col-xl-3 col-lg-3 col-sm-12 col-xs-12 sidebar-shop-left">
                    <div class="product-categori">
                        <div class="search-product">
                            <asp:TextBox ID="TextBox1" runat="server">Search Here...</asp:TextBox>
                                
                            <asp:Button ID="Button2" OnClick="Unnamed_Click" runat="server" Text="Button" />
                        </div>
                        <div class="filter-sidebar-left">
                            <div class="title-left">
                                <h3>Categories</h3>
                            </div>
                            <div class="list-group list-group-collapse list-group-sm list-group-tree" id="list-group-men" data-children=".sub-men">
                                <div class="list-group-collapse sub-men">
                                    <a class="list-group-item list-group-item-action" href="#sub-men1" data-toggle="collapse" aria-expanded="true" aria-controls="sub-men1">ACE Inhibitor <small class="text-muted">(100)</small>
								</a>
                                    <div class="collapse show" id="sub-men1" data-parent="#list-group-men">
                                        <div class="list-group">
                                            <a href="#" class="list-group-item list-group-item-action active">Allergy, Cold and Cough <small class="text-muted">(50)</small></a>
                                            <a href="#" class="list-group-item list-group-item-action">Aminoglycoside Anti-bacterial <small class="text-muted">(10)</small></a>
                                            <a href="#" class="list-group-item list-group-item-action">Aminoglycosides <small class="text-muted">(10)</small></a>
                                            <a href="#" class="list-group-item list-group-item-action">Anaesthetics <small class="text-muted">(10)</small></a>
                                            <a href="#" class="list-group-item list-group-item-action">Analgesic/Anti-inflammatory <small class="text-muted">(20)</small></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="list-group-collapse sub-men">
                                    <a class="list-group-item list-group-item-action" href="#sub-men2" data-toggle="collapse" aria-expanded="false" aria-controls="sub-men2">Androgen 
								<small class="text-muted">(50)</small>
								</a>
                                    <div class="collapse" id="sub-men2" data-parent="#list-group-men">
                                        <div class="list-group">
                                            <a href="#" class="list-group-item list-group-item-action">Angiotensin-II Antagonist <small class="text-muted">(10)</small></a>
                                            <a href="#" class="list-group-item list-group-item-action">Anthelmintic <small class="text-muted">(20)</small></a>
                                            <a href="#" class="list-group-item list-group-item-action">Anti Psychotics/Neuroleptics <small class="text-muted">(20)</small></a>
                                        </div>
                                    </div>
                                </div>
                                <a href="#" class="list-group-item list-group-item-action"> Anti-Acne  <small class="text-muted">(150) </small></a>
                                <a href="#" class="list-group-item list-group-item-action"> Anti-acne Preps <small class="text-muted">(11)</small></a>
                                <a href="#" class="list-group-item list-group-item-action"> Anti-Allergic <small class="text-muted">(22)</small></a>
                            </div>
                        </div>
                        <div class="filter-price-left">
                            <div class="title-left">
                                <h3>Price</h3>
                            </div>
                            <div class="price-box-slider">
                                <div id="slider-range"></div>
                                <p>
                                    <input type="text" id="amount" readonly style="border:0; color:#fbb714; font-weight:bold;">
                                    <button class="btn hvr-hover" type="submit">Filter</button>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Shop Page -->


</asp:Content>

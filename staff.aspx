<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="staff.aspx.cs" Inherits="clinic_management_system.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <!-- Start All Title Box -->
    <div class="all-title-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>Staff</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="staff.aspx">Education</a></li>
                        <li class="breadcrumb-item active">Staff</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->

    <!-- Start Shop Page  -->
    <div class="shop-box-inner">
        <div class="container">
            <div class="row">
                <div class="col-xl-9 col-lg-9 col-sm-12 col-xs-12 shop-content-right">
                    <div class="right-product-box">
                        <div class="">
                            <div class="col-12 col-sm-8 text-center text-sm-left">
                                <div class="toolbar-sorter-right">
                                    
                                </div>
                               
                            </div>
                            <div class="col-12 col-sm-4 text-center text-sm-right">
                             
                            </div>
                        </div>

                        <div class="product-categorie-box">
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane fade show active" id="grid-view">
                                    <div class="row">


                                        <asp:Repeater ID="Repeater1" runat="server">
                                            <ItemTemplate>
                                                <div onclick="location.href='staffdetails.aspx'" class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                            <div class="products-single fix">
                                                <div class="box-img-hover">
                                                    <div class="type-lb">
                                                       
                                                    </div>
                                                    <img src='<%# Eval("staffImage") %>' class="img-fluid" alt="Image">
                                                    <div class="mask-icon">
                                                        
                                                       
                                                    </div>
                                                </div>
                                                <div class="why-text">

                                                    <h4><%# Eval("staffName") %></h4>
                                                    <p><%# Eval("field") %></p>
                                                    <p><%# Eval("speciality") %></p>
                                                    <p class="text-center"><strong style="color:#b0b435;"><%# Eval("timing") %></strong></p>
                                                </div>
                                            </div>
                                        </div>
                                            </ItemTemplate>
                                        </asp:Repeater>

                                       <%-- <div onclick="location.href='staffdetails.aspx'" class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                            <div class="products-single fix">
                                                <div class="box-img-hover">
                                                    <div class="type-lb">
                                                       
                                                    </div>
                                                    <img src="images/DrUmar.jpg" class="img-fluid" alt="Image">
                                                    <div class="mask-icon">
                                                        
                                                       
                                                    </div>
                                                </div>
                                                <div class="why-text">

                                                    <h4>Dr. Umar Mustaq</h4>
                                                    <p>Dermatologist</p>
                                                    <p>MBBS, FCPS (Dermatology), CAAAM ( USA )</p>
                                                    <p class="text-center"><strong style="color:#b0b435;">06:00 PM-09:00 PM</strong></p>
                                                </div>
                                            </div>
                                        </div>--%>
                                       
                                       
                                       
                                </div>
                                 </div>
                            </div>
                        </div>
                    </div>
                </div>
				<div class="col-xl-3 col-lg-3 col-sm-12 col-xs-12 sidebar-shop-left" >
                    <div class="product-categori">
                        <div class="search-product">
                           
                                
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Search here..." type="text"></asp:TextBox>
                                <asp:Button type="submit" OnClick="Button1_Click" ID="Button1" runat="server" Text="Button" /><i class="fa fa-search"></i> 
                            
                        </div>
                        <div class="filter-sidebar-left">
                            <div class="title-left">
                                <h3>Categories</h3>
                            </div>
                            <div class="list-group list-group-collapse list-group-sm list-group-tree" id="list-group-men" data-children=".sub-men">
                                <div class="list-group-collapse sub-men">
                                    <a class="list-group-item list-group-item-action" href="#sub-men1" data-toggle="collapse" aria-expanded="true" aria-controls="sub-men1">Pre-Medical / MCAT <small class="text-muted">(100)</small>
								</a>
                                    <div class="collapse show" id="sub-men1" data-parent="#list-group-men">
                                        <div class="list-group">
                                            <a href="#" class="list-group-item list-group-item-action active">USMLE Step 1 Preparation <small class="text-muted">(50)</small></a>
                                            <a href="#" class="list-group-item list-group-item-action">USMLE Step 2 Preparation<small class="text-muted">(10)</small></a>
                                            <a href="#" class="list-group-item list-group-item-action">USMLE Step 3 Preparation <small class="text-muted">(10)</small></a>
                                            <a href="#" class="list-group-item list-group-item-action">USMLE Step 4 Preparation <small class="text-muted">(10)</small></a>
                                            <a href="#" class="list-group-item list-group-item-action">USMLE Step 6 Preparation <small class="text-muted">(20)</small></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="list-group-collapse sub-men">
                                    <a class="list-group-item list-group-item-action" href="#sub-men2" data-toggle="collapse" aria-expanded="false" aria-controls="sub-men2">COMLEX Level 1
                                        Preparation 
								<small class="text-muted">(50)</small>
								</a>
                                    <div class="collapse" id="sub-men2" data-parent="#list-group-men">
                                        <div class="list-group">
                                            <a href="#" class="list-group-item list-group-item-action">COMLEX Level 2
                                                Preparation <small class="text-muted">(10)</small></a>
                                            <a href="#" class="list-group-item list-group-item-action">COMLEX Level 3
                                                Preparation <small class="text-muted">(20)</small></a>
                                            <a href="#" class="list-group-item list-group-item-action">COMLEX Level 4
                                                Preparation <small class="text-muted">(20)</small></a>
                                        </div>
                                    </div>
                                </div>
                                <a href="#" class="list-group-item list-group-item-action"> Pre-Clinical / MBBS (MBChB)  <small class="text-muted">(150) </small></a>
                                <a href="#" class="list-group-item list-group-item-action"> Fundamentals by Subject <small class="text-muted">(11)</small></a>
                                <a href="#" class="list-group-item list-group-item-action"> Fundamentals by Organ System<small class="text-muted">(22)</small></a>
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

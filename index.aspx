<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Clinic_Management_System.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Start Slider -->
    <div id="slides-shop" class="cover-slides">
        <ul class="slides-container">
            <li class="text-center">
                <img src="images/banner-02c.jpg" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="m-b-20"><strong>Welcome To <br> <span style="color: #b0b435; -webkit-text-stroke-width: 1px;-webkit-text-stroke-color: rgb(255, 255, 255);"> Clinic Management System</span></strong></h1>
                            <p class="m-b-40">From the beginning in the scientific laboratories and research
                                establishments, computers have enclosed to become essential for
                                modern business and industry.</p>
                            <p><a class="btn hvr-hover" href="about.aspx">More</a></p>
                        </div>
                    </div>
                </div>
            </li>
            <li class="text-center">
                <img src="images/banner-01c.jpg" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="m-b-20"><strong>Welcome To <br><span style="color: #b0b435; -webkit-text-stroke-width: 1px;-webkit-text-stroke-color: rgb(255, 255, 255);"> Clinic Management System</span></strong></h1>
                            <p class="m-b-40">From the beginning in the scientific laboratories and research
                                establishments, computers have enclosed to become essential for
                                modern business and industry.</p>
                            <p><a class="btn hvr-hover" href="about.aspx">More</a></p>
                        </div>
                    </div>
                </div>
            </li>
            <li class="text-center">
                <img src="images/banner-03c.jpg" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="m-b-20"><strong>Welcome To <br><span style="color: #b0b435; -webkit-text-stroke-width: 1px;-webkit-text-stroke-color: rgb(255, 255, 255);"> Clinic Management System</span></strong></h1>
                            <p class="m-b-40">From the beginning in the scientific laboratories and research
                                establishments, computers have enclosed to become essential for
                                modern business and industry.</p>
                            <p><a class="btn hvr-hover" href="about.aspx">More</a></p>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
        <div class="slides-navigation">
            <a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
            <a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
        </div>
    </div>
    <!-- End Slider -->






    <!-- Start Categories  -->
    <div class="categories-shop">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="title-all text-center">
                        <h1>Business Applications</h1>
                        <p>Its deals with the supply
                            of medicine or scientific machine and Educational lectures.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="shop-cat-box">
                        <img class="img-fluid" src="images/categories_img_01.jpg" alt="" />
                        <a class="btn hvr-hover" href="shop.aspx">Medical Application</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="shop-cat-box">
                        <img class="img-fluid" src="images/categories_img_02.jpg" alt="" />
                        <a class="btn hvr-hover" href="equipments.aspx">Scientific Application</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="shop-cat-box">
                        <img class="img-fluid" src="images/categories_img_03.jpg" alt="" />
                        <a class="btn hvr-hover" href="lectures.aspx">Educational Application</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Categories -->


<!-- Start About Page  -->
<div id="about"></div>
<div  class="about-box-main" style="background-color: rgb(235, 235, 235);">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="title-all text-center">
                    <h1>About Us</h1>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="banner-frame"> <img class="img-fluid" src="images/about-img.jpg" alt="" />
                </div>
            </div>
            <div class="col-lg-6">
                <h2 class="noo-sh-title-top">We are <span>Clinic Management System</span></h2>
                <p>"From the beginning in the scientific laboratories and research
                    establishments, computers have enclosed to become essential for
                    modern business and industry. Today their presence is felt in all way
                    of life such as making passenger reservation for the railways,
                    forecasting the weather, monitors and run power plants, helping
                    hospital to render service to patients etc.</p>
                <p>The software is developed for providence clinic. This project deals with
                    the task of computerizing the lab and pharmacy of the providence
                    clinic.</p>
                <a class="btn hvr-hover" href="about.aspx">Read More</a>
            </div>
        </div>
        </div>
        </div>
<!-- End About Page  -->



    <!-- Start Products  -->
    <div  class="products-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="title-all text-center">
                        <h1>Medicines and Medical Equipments</h1>
                        <p>Its deals with the supply
                            of medicine or scientific machine.</p>
                    </div>
                </div>
            </div>
           

            <div class="row special-list">

                <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">

                    <ItemTemplate>

                        <div class="col-lg-3 col-md-6 special-grid best-seller">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <div class="type-lb">
                                <p class="sale">Sale</p>
                            </div>
                            <img src="<%#Eval("medicineImage") %>"" class="img-fluid" alt="Image">
                            <div class="mask-icon">
                                <ul>
                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                </ul>
                             <a class="cart"><asp:Button ID="addCart" CommandArgument='<%#Eval("medicineID") %>' CommandName="medicinecart" runat="server" BackColor="#B0B435" BorderStyle="None" Text="Add to Cart" /></a>   
                            </div>
                        </div>
                        <div class="why-text">
                            <p class="available-stock"><span> <%#Eval("medicineQuantity")%> / <a style=" font-weight:800" href="#">8 sold </a></span><p>
                            <h4><%#Eval("medicineName") %>  /  <%#Eval("medicineQuantity") %></h4>
                            <h5> Rs <%#Eval("medicinePrice") %></h5>
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                                     <asp:Button ID="Button1" BackColor="#B0B435" CommandArgument='<%#Eval("medicineID") %>' CommandName="medicineID" BorderStyle="None" ForeColor="White" Font-Bold="true" Height="28px" runat="server" Text="View Detail" />  
                        </div>
                    </div>
                </div>

                    </ItemTemplate>

                </asp:Repeater>


                                <asp:Repeater ID="Repeater2" runat="server"  OnItemCommand="Repeater2_ItemCommand">

                    <ItemTemplate>

                        <div class="col-lg-3 col-md-6 special-grid best-seller">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <div class="type-lb">
                                <p class="sale">Sale</p>
                            </div>
                            <img src="<%#Eval("machineImage") %>"" class="img-fluid" alt="Image">
                            <div class="mask-icon">
                                <ul>
                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                </ul>
                               <a class="cart"><asp:Button ID="addmachineCart" CommandArgument='<%#Eval("machineID") %>' CommandName="machinecart" runat="server" BackColor="#B0B435" BorderStyle="None" Text="Add to Cart" /></a>
                            </div>
                        </div>
                        <div class="why-text">
                             <p class="available-stock"><span> <%#Eval("machineQuantity")%> / <a style=" font-weight:800" href="#">8 sold </a></span><p>
                            <h4><%#Eval("machineName") %>  /  <%#Eval("machineQuantity") %></h4>
                            <h5> Rs <%#Eval("machinePrice") %></h5>
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                                     <asp:Button ID="Button2" BackColor="#B0B435" CommandArgument='<%#Eval("machineID") %>' CommandName="machineID" BorderStyle="None" ForeColor="White" Font-Bold="true" Height="28px" runat="server" Text="View Detail" />
                        </div>
                    </div>
                </div>

                    </ItemTemplate>

                </asp:Repeater>
            </div> 
            <div class="row">
                <div class="col-lg-4">
                    <div class="special-menu text-center">
                        <div class="">
                            <p><a class="btn hvr-hover" href="shop.aspx">Medicine Shop</a></p>  
                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="special-menu text-center">
                        <div class="">
                            <p><a class="btn hvr-hover" href="equipments.aspx">Equipment Shop</a></p>  
                            
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-4">
                    <div class="special-menu text-center">
                        <div class="">
                            <p><a class="btn hvr-hover" href="lectures.aspx">Education Shop</a></p>  
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Products  -->


</asp:Content>

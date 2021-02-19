<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="Clinic_Management_System.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Start All Title Box -->
    <div class="all-title-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>ABOUT US</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.aspx">Home</a></li>
                        <li class="breadcrumb-item active">ABOUT US</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->

    <!-- Start About Page  -->
    <div class="about-box-main">
        <div class="container">
            <div class="row">
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
					<a class="btn hvr-hover" href="#">Read More</a>
                </div>
            </div>
        </div>
    </div>
    <!-- End About Page -->

</asp:Content>

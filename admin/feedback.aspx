<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="clinic_management_system.admin.feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content-wrapper">
          <div class="content">						 
               

						<div class="row">
							<div class="col-xl-12 col-12">
                        <!-- Notification Table -->
                        <div class="card card-default" data-scroll-height="550">
                          <div class="card-header justify-content-between ">
                            <h2>Feedback</h2>
                            <div>
                                <a href="feedback.aspx" class="text-black-50 mr-2 font-size-20"><i class="mdi mdi-cached"></i></a>
                                <div class="dropdown show d-inline-block widget-dropdown">
                                    <a class="dropdown-toggle icon-burger-mini" href="#" role="button" id="dropdown-notification" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static"></a>
                                    <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdown-notification">
                                      <li class="dropdown-item"><a  href="#">Action</a></li>
                                      <li class="dropdown-item"><a  href="#">Another action</a></li>
                                      <li class="dropdown-item"><a  href="#">Something else here</a></li>
                                    </ul>
                                  </div>
                            </div>

                          </div>
                          <div class="card-body slim-scroll">
                           <asp:Repeater ID="Repeater1" runat="server">

                                  <ItemTemplate>

                                      <div class="media py-3 align-items-center justify-content-between">
                              <div style="Background:#b0b435;" class="d-flex rounded-circle align-items-center justify-content-center mr-3 media-icon iconbox-45 ">
                                <i style="color:white;" class="mdi mdi-email-outline font-size-20"></i>
                              </div>
                              <div class="media-body pr-3">
                                <a class="mt-0 mb-1 font-size-15 text-dark" href="#"><%#Eval("userName") %></a>
                                <p ><%#Eval("userMessage") %></p>
                              </div>
                             
                            </div>

                                  </ItemTemplate>

                              </asp:Repeater>

                          </div>
                          <div class="mt-3"></div>
                        </div>
</div>

						</div>

</div>

          


        </div>

</asp:Content>

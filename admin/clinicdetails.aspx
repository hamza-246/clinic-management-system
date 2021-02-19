<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="clinicdetails.aspx.cs" Inherits="clinic_management_system.admin.clinicdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <div class="container pt-5">

        <div class="card-header bg-light">
        <h2 class="d-flex justify-content-center align-items-center text-dark font-weight-bold">Clinic User list</h2>
    </div>

    <asp:GridView CssClass="table table-bordered table-border-success" ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataKeyNames="ClinicID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="1000px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="ClinicID" HeaderText="ClinicID" InsertVisible="False" ReadOnly="True" SortExpression="ClinicID" />
            <asp:BoundField DataField="clinicName" HeaderText="clinicName" SortExpression="clinicName" />
            <asp:BoundField DataField="clinicEmail" HeaderText="clinicEmail" SortExpression="clinicEmail" />
            <asp:BoundField DataField="clinicAddress" HeaderText="clinicAddress" SortExpression="clinicAddress" />
            <asp:BoundField DataField="clinicPassword" HeaderText="clinicPassword" SortExpression="clinicPassword" />
            <asp:BoundField DataField="clinicConfirmPass" HeaderText="clinicConfirmPass" SortExpression="clinicConfirmPass" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#b0b435" Font-Bold="True" ForeColor="White" />
        <PagerStyle  ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>" DeleteCommand="DELETE FROM [clinic_Register] WHERE [ClinicID] = @ClinicID" InsertCommand="INSERT INTO [clinic_Register] ([clinicName], [clinicEmail], [clinicAddress], [clinicPassword], [clinicConfirmPass]) VALUES (@clinicName, @clinicEmail, @clinicAddress, @clinicPassword, @clinicConfirmPass)" SelectCommand="SELECT * FROM [clinic_Register]" UpdateCommand="UPDATE [clinic_Register] SET [clinicName] = @clinicName, [clinicEmail] = @clinicEmail, [clinicAddress] = @clinicAddress, [clinicPassword] = @clinicPassword, [clinicConfirmPass] = @clinicConfirmPass WHERE [ClinicID] = @ClinicID">
        <DeleteParameters>
            <asp:Parameter Name="ClinicID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="clinicName" Type="String" />
            <asp:Parameter Name="clinicEmail" Type="String" />
            <asp:Parameter Name="clinicAddress" Type="String" />
            <asp:Parameter Name="clinicPassword" Type="String" />
            <asp:Parameter Name="clinicConfirmPass" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="clinicName" Type="String" />
            <asp:Parameter Name="clinicEmail" Type="String" />
            <asp:Parameter Name="clinicAddress" Type="String" />
            <asp:Parameter Name="clinicPassword" Type="String" />
            <asp:Parameter Name="clinicConfirmPass" Type="String" />
            <asp:Parameter Name="ClinicID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
        </div>
    </asp:Content>

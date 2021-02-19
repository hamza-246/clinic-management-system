<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="medicine.aspx.cs" Inherits="clinic_management_system.admin.medicine" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container pt-5">

        <div class="card-header bg-light">
        <h2 class="d-flex justify-content-center align-items-center text-dark font-weight-bold">Medicine list</h2>
        <a class="d-flex justify-content-center align-items-center mt-3" href="medicineform.aspx"><button type="button" class="add-button "><i class="mdi mdi-plus"></i> Add product</button></a>
      
    </div>

    <asp:GridView CssClass="table table-bordered table-border-success" ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataKeyNames="medicineID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="1024px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="medicineID" HeaderText="medicineID" InsertVisible="False" ReadOnly="True" SortExpression="medicineID" />
            <asp:ImageField DataImageUrlField="medicineImage" HeaderText="medicineImage" SortExpression="medicineImage">
                <ControlStyle Height="80px" Width="80px" />
                <ItemStyle Height="100px" Width="100px" />
            </asp:ImageField>
            <asp:BoundField DataField="medicineName" HeaderText="medicineName" SortExpression="medicineName" />
            <asp:BoundField DataField="medicinePrice" HeaderText="medicinePrice" SortExpression="medicinePrice" />
            <asp:BoundField DataField="medicineQuantity" HeaderText="medicineQuantity" SortExpression="medicineQuantity" />
            <asp:BoundField DataField="medicineShortdescription" HeaderText="medicineShortdescription" SortExpression="medicineShortdescription" />
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


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>" DeleteCommand="DELETE FROM [medicine] WHERE [medicineID] = @medicineID" InsertCommand="INSERT INTO [medicine] ([medicineName], [medicinePrice], [medicineQuantity], [medicineImage], [medicineShortdescription]) VALUES (@medicineName, @medicinePrice, @medicineQuantity, @medicineImage, @medicineShortdescription)" SelectCommand="SELECT * FROM [medicine]" UpdateCommand="UPDATE [medicine] SET [medicineName] = @medicineName, [medicinePrice] = @medicinePrice, [medicineQuantity] = @medicineQuantity, [medicineImage] = @medicineImage, [medicineShortdescription] = @medicineShortdescription WHERE [medicineID] = @medicineID">
        <DeleteParameters>
            <asp:Parameter Name="medicineID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="medicineName" Type="String" />
            <asp:Parameter Name="medicinePrice" Type="Int32" />
            <asp:Parameter Name="medicineQuantity" Type="Int32" />
            <asp:Parameter Name="medicineImage" Type="String" />
            <asp:Parameter Name="medicineShortdescription" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="medicineName" Type="String" />
            <asp:Parameter Name="medicinePrice" Type="Int32" />
            <asp:Parameter Name="medicineQuantity" Type="Int32" />
            <asp:Parameter Name="medicineImage" Type="String" />
            <asp:Parameter Name="medicineShortdescription" Type="String" />
            <asp:Parameter Name="medicineID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
        </div>
</asp:Content>

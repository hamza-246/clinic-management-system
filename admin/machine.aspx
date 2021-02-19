<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="machine.aspx.cs" Inherits="clinic_management_system.admin.machine" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container pt-5">

        <div class="card-header bg-light">
        <h2 class="d-flex justify-content-center align-items-center text-dark font-weight-bold">Machine list</h2>
        <a class="d-flex justify-content-center align-items-center mt-3" href="machineform.aspx"><button type="button" class="add-button "><i class="mdi mdi-plus"></i> Add product</button></a>
      
    </div>

    <asp:GridView CssClass="table table-bordered table-border-success" ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataKeyNames="machineID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="1000px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="machineID"  HeaderText="machineID" InsertVisible="False" ReadOnly="True" SortExpression="machineID" />
            <asp:ImageField DataImageUrlField="machineImage" HeaderText="machineImage" SortExpression="machineImage">
                <ControlStyle Height="80px" Width="80px" />
            </asp:ImageField>
            <asp:BoundField DataField="machineName" HeaderText="machineName" SortExpression="machineName" />
            <asp:BoundField DataField="machinePrice" HeaderText="machinePrice" SortExpression="machinePrice" />
            <asp:BoundField DataField="machineQuantity" HeaderText="machineQuantity" SortExpression="machineQuantity" />
            <asp:BoundField DataField="machineShortdescription" HeaderText="machineShortdescription" SortExpression="machineShortdescription" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#b0b435" Font-Bold="True" ForeColor="White"/>
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>" DeleteCommand="DELETE FROM [machine] WHERE [machineID] = @machineID" InsertCommand="INSERT INTO [machine] ([machineName], [machinePrice], [machineQuantity], [machineImage], [machineShortdescription]) VALUES (@machineName, @machinePrice, @machineQuantity, @machineImage, @machineShortdescription)" SelectCommand="SELECT * FROM [machine]" UpdateCommand="UPDATE [machine] SET [machineName] = @machineName, [machinePrice] = @machinePrice, [machineQuantity] = @machineQuantity, [machineImage] = @machineImage, [machineShortdescription] = @machineShortdescription WHERE [machineID] = @machineID">
        <DeleteParameters>
            <asp:Parameter Name="machineID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="machineName" Type="String" />
            <asp:Parameter Name="machinePrice" Type="Int32" />
            <asp:Parameter Name="machineQuantity" Type="Int32" />
            <asp:Parameter Name="machineImage" Type="String" />
            <asp:Parameter Name="machineShortdescription" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="machineName" Type="String" />
            <asp:Parameter Name="machinePrice" Type="Int32" />
            <asp:Parameter Name="machineQuantity" Type="Int32" />
            <asp:Parameter Name="machineImage" Type="String" />
            <asp:Parameter Name="machineShortdescription" Type="String" />
            <asp:Parameter Name="machineID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
        </div></asp:Content>

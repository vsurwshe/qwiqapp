<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view.aspx.cs" Inherits="PlaySlipsQwiqApp.Views.Home.view" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Welcome to My world</h1>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="PlaySlipDataSource" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" InsertVisible="False" SortExpression="Id"></asp:BoundField>
                <asp:BoundField DataField="basic" HeaderText="basic" SortExpression="basic"></asp:BoundField>
                <asp:BoundField DataField="hra" HeaderText="hra" SortExpression="hra"></asp:BoundField>
                <asp:BoundField DataField="convey" HeaderText="convey" SortExpression="convey"></asp:BoundField>
                <asp:BoundField DataField="mediAllow" HeaderText="mediAllow" SortExpression="mediAllow"></asp:BoundField>
                <asp:BoundField DataField="specailAllow" HeaderText="specailAllow" SortExpression="specailAllow"></asp:BoundField>
                <asp:BoundField DataField="perfoAllow" HeaderText="perfoAllow" SortExpression="perfoAllow"></asp:BoundField>
                <asp:BoundField DataField="foodAllow" HeaderText="foodAllow" SortExpression="foodAllow"></asp:BoundField>
                <asp:BoundField DataField="pf" HeaderText="pf" SortExpression="pf"></asp:BoundField>
                <asp:BoundField DataField="esi" HeaderText="esi" SortExpression="esi"></asp:BoundField>
                <asp:BoundField DataField="tax" HeaderText="tax" SortExpression="tax"></asp:BoundField>
                <asp:BoundField DataField="totalEarn" HeaderText="totalEarn" SortExpression="totalEarn"></asp:BoundField>
                <asp:BoundField DataField="totalDeductions" HeaderText="totalDeductions" SortExpression="totalDeductions"></asp:BoundField>
                <asp:BoundField DataField="netPay" HeaderText="netPay" SortExpression="netPay"></asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57"></EditRowStyle>

            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></FooterStyle>

            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></HeaderStyle>

            <PagerStyle HorizontalAlign="Center" BackColor="#666666" ForeColor="White"></PagerStyle>

            <RowStyle BackColor="#E3EAEB"></RowStyle>

            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

            <SortedAscendingCellStyle BackColor="#F8FAFA"></SortedAscendingCellStyle>

            <SortedAscendingHeaderStyle BackColor="#246B61"></SortedAscendingHeaderStyle>

            <SortedDescendingCellStyle BackColor="#D4DFE1"></SortedDescendingCellStyle>

            <SortedDescendingHeaderStyle BackColor="#15524A"></SortedDescendingHeaderStyle>
        </asp:GridView>
        <asp:SqlDataSource runat="server" ID="PlaySlipDataSource" ConnectionString='<%$ ConnectionStrings:EMPCONN %>' SelectCommand="SELECT * FROM [payslip]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>

<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Lab2.pages.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Podstrona 3</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            <asp:BoundField DataField="Producent_Id" HeaderText="Producent_Id" SortExpression="Producent_Id" />
            <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
        </Columns>
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProductsConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Products] ([Name], [Price], [Quantity], [Producent_Id], [Weight]) VALUES (@Name, @Price, @Quantity, @Producent_Id, @Weight)" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [Name] = @Name, [Price] = @Price, [Quantity] = @Quantity, [Producent_Id] = @Producent_Id, [Weight] = @Weight WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Id" PropertyName="SelectedValue"/>
        </DeleteParameters>
        <InsertParameters>
            
            <asp:ControlParameter ControlID="TextBox2" Name="Name" Type="String" />
            <asp:ControlParameter ControlID="TextBox3" Name="Price" Type="Decimal" />
            <asp:ControlParameter ControlID="TextBox4" Name="Quantity" Type="Int32" />
            <asp:ControlParameter ControlID="TextBox5" Name="Producent_Id" Type="Int32" />
            <asp:ControlParameter ControlID="TextBox6" Name="Weight" Type="Double" />
        </InsertParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="DropDownList2" Name="Id" PropertyName="SelectedValue"/>
            <asp:ControlParameter ControlID="TextBox7" Name="Name" Type="String" />
            <asp:ControlParameter ControlID="TextBox8" Name="Price" Type="Decimal" />
            <asp:ControlParameter ControlID="TextBox9" Name="Quantity" Type="Int32" />
            <asp:ControlParameter ControlID="TextBox10" Name="Producent_Id" Type="Int32" />
            <asp:ControlParameter ControlID="TextBox11" Name="Weight" Type="Double" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <!--
    <strong>Update</strong><br />
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Id" DataValueField="Id">
    </asp:DropDownList>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
    -->
    <br />
    <br />
    <span><strong>Update</strong><br />
    Id:<br />
    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Id" DataValueField="Id">
    </asp:DropDownList>
    <br />
    </span>Name:<strong style="font-weight: 700"><br />
    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
    <br />
    </strong>Price<strong style="font-weight: 700">:<br />
    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
    <br />
    </strong>Quantity<strong style="font-weight: 700">:<br />
    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
    <br />
    </strong>Producent_Id<strong style="font-weight: 700">:<br />
    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
    <br />
    </strong>Weight<strong style="font-weight: 700">:<br />
    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
    </strong>
    <br />

    <strong>
    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Update" />
    <br />
    <br />
    <br />
    <br />
    Insert</strong><br />
    Name:<br />
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    Price:<br />
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    Quantity:<br />
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <br />
    Producent_Id:<br />
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    <br />
    Weight:<br />
    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button4" runat="server" Text="Button" OnClick="Button4_Click" />
    <br />
</asp:Content>

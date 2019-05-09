<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Protein_Bars.Admin.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
    Admin Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1PlaceHolder" runat="server">
    Admin Form
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="ProfuctDataSource" AllowPaging="True">
        <Columns>

            <asp:CommandField ShowEditButton="True" InsertVisible="False" />
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="ProductId" Visible="False" />
            

            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is require to fill in"
                    ForeColor="Red" Text="*Name is require to fill in" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                </ItemTemplate>
               
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Description" SortExpression="Description">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Description") %>'></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Description is require to fill in"
                    ForeColor="Red" Text="*Description is require to fill in " ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Price" SortExpression="Price">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*Price must be a number" ForeColor="Red"
                        Operator="DataTypeCheck" ControlToValidate="TextBox3" Type="Integer" Display="Dynamic"></asp:CompareValidator>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Price is a required "
                    ForeColor="Red" Text="*Price is require to fill in" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                </EditItemTemplate>

                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Quantity" SortExpression="Quantity">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Quantity") %>'></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="*Quantity must be a number" ForeColor="Red"
                        Operator="DataTypeCheck" ControlToValidate="TextBox4" Type="Integer" Display="Dynamic"></asp:CompareValidator>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Quantity is a required Field"
                    ForeColor="Red" Text="*Quantity is require to fill in" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                </EditItemTemplate>

                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="uploadimage.aspx?Id={0}" Text="Set Image" HeaderText="Image" />

<asp:TemplateField>
    <ItemTemplate>

    <asp:LinkButton runat="server" ID="btnDelete" CommandName="Delete" OnClientClick="return confirm('Are you sure you want to delete this Record?');" Text="Delete" ></asp:LinkButton>
</ItemTemplate></asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="ProfuctDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @original_Id AND [Name] = @original_Name AND [Price] = @original_Price AND [Description] = @original_Description AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL))" InsertCommand="INSERT INTO [Table] ([Id], [Name], [Price], [Description], [Quantity]) VALUES (@Id, @Name, @Price, @Description, @Quantity)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [Name] = @Name, [Price] = @Price, [Description] = @Description, [Quantity] = @Quantity WHERE [Id] = @original_Id AND [Name] = @original_Name AND [Price] = @original_Price AND [Description] = @original_Description AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Price" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
            <asp:Parameter Name="original_Quantity" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Quantity" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Price" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
            <asp:Parameter Name="original_Quantity" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

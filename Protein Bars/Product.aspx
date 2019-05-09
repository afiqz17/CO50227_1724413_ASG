<%@ Page Title="" Language="C#" MasterPageFile="~/ProteinBar.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Protein_Bars.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
    Products Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1PlaceHolder" runat="server">
    Protein Items
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
   

    
    <asp:Image ID="LatestImage" runat="server" />
 <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="ProductDataSource">
                <EditItemTemplate>
                    Id:
                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Price:
                    <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                    <br />
                    Description:
                    <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                    <br />
                    Quantity:
                    <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                    <br />
                    <button class="sc-add-to-cart" data-name="<%#Eval("Name") %>" data-price="<%#Eval("Price") %>" type="submit">Adding Cart </button>
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Id:
                    <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                    <br />
                    Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Price:
                    <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                    <br />
                    Description:
                    <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                    <br />
                    Quantity:
                    <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                    <br />
                    <button class="sc-add-to-cart" data-name="<%#Eval("Name") %>" data-price="<%#Eval("Price") %>" type="submit">Adding Cart </button>
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Price:
                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
                    <br />
                    Description:
                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
                    <br />

                     Quantity:
                    <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                    <br />
                    <button class="sc-add-to-cart" data-name="<%#Eval("Name") %>" data-price="<%#Eval("Price") %>" type="submit">Adding Cart </button>
                </ItemTemplate>
           </asp:FormView>
           <asp:SqlDataSource ID="ProductDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT * FROM [Table] WHERE ([Id] = @Id)">
               <SelectParameters>
                   <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
               </SelectParameters>
           </asp:SqlDataSource>


    <div>
        <div id="cart">     
            </div>
            </div>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha384-tsQFqpEReu7ZLhBV2VZlAu7zcOV+rXbYlF2cqB8txI/8aZajjp4Bqd+V6D5IgvKT"
        crossorigin="anonymous"></script>
        
    <script src="Scripts/js/jQuery.SimpleCart.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#cart').simpleCart({
                addtoCartClass: '.sc-add-to-cart',
                cartProductListClass: '.cart-products-list',
                totalCartCountClass: '.total-cart-count',
                totalCartCostClass: '.total-cart-cost',
                showcartID: '#show-cart',
                itemCountClass: '.item-count'
            });
        });
        

    </script>

</asp:Content>

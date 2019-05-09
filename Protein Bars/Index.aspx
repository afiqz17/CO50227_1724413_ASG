<%@ Page Title="" Language="C#" MasterPageFile="~/ProteinBar.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Protein_Bars.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
    Home Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1PlaceHolder" runat="server">
    Protein Bars
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">



        <!--link href="css/css/simple_Cart.css" rel="stylesheet" type="text/css"-->



    <asp:Repeater ID="rptProduct" runat="server" DataSourceID="ProductDataSource" OnItemDataBound="rptProduct_ItemDataBound">
        <HeaderTemplate>
            <ul>
        </HeaderTemplate>

        <ItemTemplate>
             
            <div id ="Column">
            <li id ="Lists">
                
                <a href="<%# Eval("Id", "Product.aspx?Id={0}") %>">
                   <img src="Pictures/Products/<%#Eval("Id") %>.jpg" alt="Image not found"/>
                    <div>
                    <%#Eval("Name") %>
                        </div>
                    <div>
                    <%#Eval("Price") %>
                        </div>
                    <div>
                    <%#Eval("Description") %>
                        </div>
                     <div> Quantity <asp:Label ID = "lblQuantity" runat="server" Text=' <%#Eval("Quantity") %>' ></asp:Label>
                   
                        </div>
                    <button class="sc-add-to-cart" data-name="<%#Eval("Name") %>" data-price="<%#Eval("Price") %>" type="submit">Adding Cart </button>
                </a>
                
            </li>
                </div>
                
        </ItemTemplate>



        <FooterTemplate></ul></FooterTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="ProductDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>

   
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


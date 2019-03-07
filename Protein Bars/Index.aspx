<%@ Page Title="" Language="C#" MasterPageFile="~/ProteinBar.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Protein_Bars.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
    Home Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1PlaceHolder" runat="server">
    Protein Bars
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
   
    
    <table style="width:100%; height: 100%;">
  <tr>
    
    <td style="text-align:center;"> <a href="Product.aspx"><img src="Pictures/CakeBiteOpN.jpg" height="150" width="150"></a>
        <p style="text-align:center;"> Cake Bites, 12 - 3 Piece Packs </p></td>
    <td style="text-align:center;"> <img src="Pictures/CarbKillaGrenade.jpg" height="150" width="150">
        <p style="text-align:center;"> Carb Killa, 12 - 60g Bars </p></td>
    
    <td style="text-align:center;"> <img src="Pictures/CombatCrunchMP.jpg" height="150" width="150">
        <p style="text-align:center;">Combat Crunch Bars, 12 Bars </p>
    </td>
  </tr>
       
  <tr>
    <td style="text-align:center;"> <img src="Pictures/ProteinCrispBSN.jpg" height="150" width="150">
        <p style="text-align:center;"> Protein Crisp, 12 Bars </p>
    </td>
    <td style="text-align:center;"> <img src="Pictures/ProteinPlusMETrx.jpg" height="150" width="150" >
        <p style="text-align:center;"> Protein Plus Bars, 9 Bars </p>
    </td>
    <td style="text-align:center;"> <img src="Pictures/QuestNF.jpg" height="150" width="150" >
         <p style="text-align:center;"> Quest Bars, 12 Bars </p>
    </td>
  </tr>
  </table>
        
        
</asp:Content>


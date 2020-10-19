
<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="BruFitness.UploadPictures" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1PlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <asp:Image ID="LatestImage" runat="server" Height="250px" />
    <asp:FileUpload ID="PicturesFileUploadControl" runat="server" />
    <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" style="height: 20px" OnClientClick="return confirm('Are you sure you want to upload this picture');"/>
    
    <br />
</asp:Content>

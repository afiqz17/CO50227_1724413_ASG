<%@ Page Title="" Language="C#" MasterPageFile="~/ProteinBar.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="BruFitness.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
    Contact Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1PlaceHolder" runat="server">
    Contact Form
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <h2>Contact Us</h2>
    <asp:panel runat="server" ID="pnlCompose">
        <asp:validationsummary runat="server" CssClass="errorMessages">
        </asp:validationsummary>
        <div>
            <br />
            <asp:label id="lblEmail" runat="server" text="Email Address" associatedcontrolid="txtEmail" ClientIDMode="Predictable"></asp:label>
            <asp:textbox id="txtEmail" runat="server">
            </asp:textbox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                ErrorMessage="Please enter your email address" 
                ControlToValidate="txtEmail" CssClass="error" Enabled="False">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                ErrorMessage="Please check you entered your email address correctly" 
                ControlToValidate="txtEmail" CssClass="error" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            <br />
        </div>
        <div>
            <asp:label id="lblConfirmEmail" runat="server" text="Confirm Email" associatedcontrolid="txtConfirmEmail">
            </asp:label>
            <asp:textbox id="txtConfirmEmail" runat="server">
            </asp:textbox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ErrorMessage="Please check your confirmed email address" 
                ControlToCompare="txtConfirmEmail" ControlToValidate="txtEmail" CssClass="error">*</asp:CompareValidator>
            <br />
        </div>
        <div>
            <asp:label id="lblSubject" runat="server" text="Subject" associatedcontrolid="txtSubject">
            </asp:label>
            <asp:textbox id="txtSubject" runat="server">
            </asp:textbox>
            <asp:RequiredFieldValidator ID="rfvSubject" runat="server" 
                ErrorMessage="Please type a subject for the message" 
                ControlToValidate="txtSubject" CssClass="error">*</asp:RequiredFieldValidator>
            <br />
        </div>
        <div>
            <asp:label id="lblBody" runat="server" text="Your Message" associatedcontrolid="txtBody">
            </asp:label>
            <asp:textbox id="txtBody" runat="server" textmode="MultiLine">
            </asp:textbox>
            <asp:RequiredFieldValidator ID="rfvMessage" runat="server" 
                ErrorMessage="Please type your message" ControlToValidate="txtBody" CssClass="error">*</asp:RequiredFieldValidator>
            <br />
        </div>

        <div>
            <asp:button id="btnContact" runat="server" text="Send" OnClick="btnContact_Click" 
                 />
        </div>
    </asp:panel>


    <asp:Panel ID="pnlSent" runat="server" visible="false">
    <p>Your message has been sent</p>
    </asp:Panel>
    
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="MapPlaceHolder" runat="server">

    
    <div id="map"></div>
    <script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: 4.9031, lng: 114.9398},
            zoom: 20
     
          
          });

          var marker = new google.maps.Marker({
              position: { lat: 4.9031, lng: 114.9398 },
              map: map
          });
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAVZKzOMOjr8nLMma3amDeO_emdM2ujD8I&callback=initMap"
    async defer></script>
</asp:Content>

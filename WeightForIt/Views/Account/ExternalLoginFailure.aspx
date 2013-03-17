<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="externalLoginFailureTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Erreur d’ouverture de session
</asp:Content>

<asp:Content ID="externalLoginFailureContent" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1>Erreur d’ouverture de session.</h1>
        <h2>Échec de la connexion auprès du service.</h2>
    </hgroup>
</asp:Content>

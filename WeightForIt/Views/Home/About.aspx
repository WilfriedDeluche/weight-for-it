<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    À propos de - Mon application ASP.NET MVC
</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1>À propos de.</h1>
        <h2><%: ViewBag.Message %></h2>
    </hgroup>

    <article>
        <p>
            Indiquez des informations supplémentaires à l'aide de cette zone.
        </p>

        <p>
            Indiquez des informations supplémentaires à l'aide de cette zone.
        </p>

        <p>
            Indiquez des informations supplémentaires à l'aide de cette zone.
        </p>
    </article>

    <aside>
        <h3>Titre à part</h3>
        <p>
            Indiquez des informations supplémentaires à l'aide de cette zone.
        </p>
        <ul>
            <li><%: Html.ActionLink("Accueil", "Index", "Home") %></li>
            <li><%: Html.ActionLink("À propos de", "About", "Home") %></li>
            <li><%: Html.ActionLink("Contact", "Contact", "Home") %></li>
        </ul>
    </aside>
</asp:Content>
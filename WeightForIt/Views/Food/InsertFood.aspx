<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<WeightForIt.Models.Food>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    InsertFood
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>InsertFood</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>Food</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Label) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Label) %>
            <%: Html.ValidationMessageFor(model => model.Label) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Unit) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Unit) %>
            <%: Html.ValidationMessageFor(model => model.Unit) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Calories) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Calories) %>
            <%: Html.ValidationMessageFor(model => model.Calories) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Proteins) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Proteins) %>
            <%: Html.ValidationMessageFor(model => model.Proteins) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Glucides) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Glucides) %>
            <%: Html.ValidationMessageFor(model => model.Glucides) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Lipid) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Lipid) %>
            <%: Html.ValidationMessageFor(model => model.Lipid) %>
        </div>

        <p>
            <input type="submit" value="Create" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>

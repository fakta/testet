<%@ Page Title="title" Language="C#" MasterPageFile="~/webroot/_masterpage/1.master" EnableViewState="false" %>
<%@ Register TagPrefix="base" NameSpace="spbase.controls" Assembly="spbase"%>
<%@ Import Namespace="spbase.utils" %>
<script runat="server">
    string _approot = Globals.ApplicationRoot;
</script>

                    <asp:Content ContentPlaceHolderID="content_ph_1" runat="server">
                    <base:ContentWrapper runat="server" Key="1_1.master" />
                    <h2<%=Globals.SmId(102)%>>Vi lanserade vår första hemsida 1995. Sedan dess har vi strävat efter att alltid ligga i framkant både när det gäller design, användarvänlighet och teknik. Våra produktioner baseras aldrig på färdiga mallar eller teman. </h2>
                    <base:ContentWrapper Key="1_1.master" runat="server" IsEnding="true" />
                    </asp:Content>
                    <asp:Content ContentPlaceHolderID="content_ph_2" runat="server">
                    <base:ContentWrapper runat="server" Key="2_1.master" />
                    <h2<%=Globals.SmId(104)%>>Våra tjänster</h2>
                    <base:ContentWrapper Key="2_1.master" runat="server" IsEnding="true" />
                    </asp:Content>
                    <asp:Content ContentPlaceHolderID="content_ph_3" runat="server">
                    <base:ContentWrapper runat="server" Key="3_1.master" />
                    <h2<%=Globals.SmId(105)%>>Senaste projekt</h2>
                    <base:ContentWrapper Key="3_1.master" runat="server" IsEnding="true" />
                    </asp:Content>
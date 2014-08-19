<%@ Control Language="C#" EnableViewState="false" %>
<%@ Register TagPrefix="base" Namespace="spbase.controls" Assembly="spbase" %>
<%@ Register TagPrefix="swc" Namespace="spbase.controls.swc" Assembly="spbase" %>

<nav class="collapse navbar-collapse navbar-right" id="navbar-collapse">
    <base:MyNestedRepeater runat="server" ID="root">
        <HeaderTemplate>
            <ul class="nav navbar-nav ">
        </HeaderTemplate>
        <ItemTemplate>
            <li runat="server"><swc:HyperLinkEx runat="server" ID="item" /><base:MyNestedRepeater runat="server" ID="child" /></li>
        </ItemTemplate>
        <FooterTemplate>
            </ul>
        </FooterTemplate>

    </base:MyNestedRepeater>
</nav>

<%@ Control Language="C#" EnableViewState="false" %>
<%@ Register TagPrefix="base" Namespace="spbase.controls" Assembly="spbase" %>
<%@ Register TagPrefix="swc" Namespace="spbase.controls.swc" Assembly="spbase" %>
<base:MyNestedRepeater runat="server" ID="root">
    <HeaderTemplate>
        <ul class="menubar">
    </HeaderTemplate>
    <ItemTemplate>
        <li><swc:HyperLinkEx runat="server" ID="item" /></li>
    </ItemTemplate>
    <FooterTemplate>
    <li class="clear"></li>
        </ul>
    </FooterTemplate>            
</base:MyNestedRepeater>
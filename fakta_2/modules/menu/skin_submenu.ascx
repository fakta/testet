<%@ Control Language="C#" EnableViewState="false" %>
<%@ Register TagPrefix="base" Namespace="spbase.controls" Assembly="spbase" %>
<%@ Register TagPrefix="swc" Namespace="spbase.controls.swc" Assembly="spbase" %>
<h5><asp:Label runat="server" id="parent_name" /></h5>
<div class="dropdownmenu">
    <base:MyNestedRepeater runat="server" ID="root">
        <HeaderTemplate>
            <swc:MyOpenTag ID="ul" runat="server" tag="ul" class="menu" />
        </HeaderTemplate>
        <ItemTemplate>
            <li runat="server"><swc:HyperLinkEx runat="server" ID="item" /><base:MyNestedRepeater runat="server" ID="child" /></li>
        </ItemTemplate>
        <FooterTemplate>
            </ul>
        </FooterTemplate>
    </base:MyNestedRepeater>
</div>

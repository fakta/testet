<%@ Control Language="C#" EnableViewState="false" %>
<%@ Register TagPrefix="base" Namespace="spbase.controls" Assembly="spbase" %>
<%@ Register TagPrefix="swc" Namespace="spbase.controls.swc" Assembly="spbase" %>


    <div class="phone-menu-inner">
    	<ul class="phone-menu-list">
	<base:MyNestedRepeater runat="server" ID="root">
    <HeaderTemplate>
    </HeaderTemplate>
    <ItemTemplate>
        	<li runat="server"><swc:HyperLinkEx runat="server" ID="item" /><base:MyNestedRepeater runat="server" ID="child" /></li>
    </ItemTemplate>
    <FooterTemplate>
    </FooterTemplate>            
	</base:MyNestedRepeater>
		</ul>
	</div>

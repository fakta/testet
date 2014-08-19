<%@ Control Language="C#" EnableViewState="false" %>
<%@ Register TagPrefix="base" Namespace="spbase.controls" Assembly="spbase" %>
<%@ Register TagPrefix="swc" Namespace="spbase.controls.swc" Assembly="spbase" %>
<div class="breadcrumb">
<ul>
<base:MyNestedRepeater runat="server" ID="root">
    <ItemTemplate>
        <li><swc:HyperLinkEx runat="server" ID="item" /></li>
    </ItemTemplate>
</base:MyNestedRepeater>
</ul>
</div>

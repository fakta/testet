<%@ Control Language="C#" EnableViewState="false"  %>
<%@ Register TagPrefix="swc" namespace="spbase.controls.swc" assembly="spbase" %>
<%@ Register TagPrefix="base" namespace="spbase.controls" assembly="spbase" %>

<div class="latest-posts">
<h3>Senaste nyheter</h3>
<ul>
<asp:Repeater runat="server" id="items">
    <ItemTemplate>

        <li><a href="<%#DataBinder.Eval(Container.DataItem,"permalink")%>" title="<%#DataBinder.Eval(Container.DataItem,"title")%>"><%#DataBinder.Eval(Container.DataItem,"title")%></a></li>

        
    </ItemTemplate>
</asp:Repeater>
  </ul>
</div>
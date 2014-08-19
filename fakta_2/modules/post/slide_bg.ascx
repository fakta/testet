<%@ Control Language="C#" EnableViewState="false"  %>
<%@ Register TagPrefix="swc" namespace="spbase.controls.swc" assembly="spbase" %>
<%@ Register TagPrefix="base" namespace="spbase.controls" assembly="spbase" %>
<ul id="slide_list">      
<asp:Repeater runat="server" id="items">
    <ItemTemplate>
    <li class="slide" style="background-image:url('<%#DataBinder.Eval(Container.DataItem,"picture_url")%>');">
    	<div class="slide-help"></div>
        <div class="slide-container">
            <h3>
                <%#DataBinder.Eval(Container.DataItem,"title")%>
            </h3>
            <%#DataBinder.Eval(Container.DataItem,"body")%>
        </div>
    </li>
    </ItemTemplate>
</asp:Repeater>
</ul>
<ul id="slide_nav"></ul>
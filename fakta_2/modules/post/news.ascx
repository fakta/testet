<%@ Control Language="C#" EnableViewState="false"  %>
<%@ Register TagPrefix="swc" namespace="spbase.controls.swc" assembly="spbase" %>
<%@ Register TagPrefix="base" namespace="spbase.controls" assembly="spbase" %>

<asp:Repeater runat="server" id="items">
    <ItemTemplate>
        <div class="post">
            <article>
            <div class="post-thumbnail">
                <img src="<%#DataBinder.Eval(Container.DataItem,"picture_url")%>" />
            </div>
            <div class="post-text">
                <h2><a href="<%#DataBinder.Eval(Container.DataItem,"permalink")%>" title="<%#DataBinder.Eval(Container.DataItem,"title")%>"><%#DataBinder.Eval(Container.DataItem,"title")%></a></h2>
                <p><%#DataBinder.Eval(Container.DataItem,"description")%></p>
                <p class="post-meta"><%#DataBinder.Eval(Container.DataItem,"date1", "{0:dddd d MMMM yyyy}")%></p>
                <p class="link"><a class="post-permalink" href="<%#DataBinder.Eval(Container.DataItem,"permalink")%>" title="<%#DataBinder.Eval(Container.DataItem,"title")%>">Läs mer</a></p>
            </div>
            </article>
        </div>
        
    </ItemTemplate>
</asp:Repeater>
<%@ Control Language="C#" EnableViewState="false"  %>
<%@ Register TagPrefix="swc" namespace="spbase.controls.swc" assembly="spbase" %>
<%@ Register TagPrefix="base" namespace="spbase.controls" assembly="spbase" %>

<div class="cases-area">
<asp:Repeater runat="server" id="items">
    <ItemTemplate>
        <div class="case">
            <article>
                <a href="<%#DataBinder.Eval(Container.DataItem,"permalink")%>" title="<%#DataBinder.Eval(Container.DataItem,"title")%>">
                    <img src="<%#DataBinder.Eval(Container.DataItem,"picture_url")%>" alt="">
                    <h3><%#DataBinder.Eval(Container.DataItem,"title")%></h3>
                    <span class="overlay"></span>
                </a>


            </article>
        </div>
        
    </ItemTemplate>
</asp:Repeater>
</div>
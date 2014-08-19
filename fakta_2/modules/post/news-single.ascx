<%@ Control Language="C#" EnableViewState="false"  %>
<%@ Register TagPrefix="swc" namespace="spbase.controls.swc" assembly="spbase" %>
<%@ Register TagPrefix="base" namespace="spbase.controls" assembly="spbase" %>
<%@ Import Namespace="spbase.utils"%>
<script runat="server">
    string _approot=Globals.ApplicationRoot;
</script>

<asp:Repeater runat="server" id="items">
    <ItemTemplate>

            <article>
		        <img src="<%#DataBinder.Eval(Container.DataItem,"picture_url")%>" />
		        <div class="blog-content">
                    <h1><%#DataBinder.Eval(Container.DataItem,"title")%></h1>
                    <p class="intro">

                            <%#DataBinder.Eval(Container.DataItem,"description")%>

                    </p>

                    <%#DataBinder.Eval(Container.DataItem,"body")%>
                </div>
            </article>

                <ul class="social">
                    <li>
                        <a href="https://twitter.com/share" class="twitter-share-button" data-count="vertical" data-via="">Tweet</a><script type="text/javascript" src="//platform.twitter.com/widgets.js"></script>
                    </li>
                    <li>
                        <script src="http://connect.facebook.net/en_US/all.js#xfbml=1"></script>
                        <fb:like layout="box_count" href="<%#Globals.AbsPermalink(DataBinder.Eval(Container.DataItem,"permalink")+"")%>" show_faces="false" action="like"></fb:like>
                    </li>
                </ul>


        
    </ItemTemplate>
</asp:Repeater>
<asp:Repeater runat="server" id="comments">
	<HeaderTemplate>
	<div class="comments">
    <a name="comments"></a>
    <h2 class="fancy-title"><asp:PlaceHolder runat="server" id="total_comments" /> kommentarer</h2>
        <div id="comments_list">
            <ul>
        </HeaderTemplate>
        <ItemTemplate>
        <li class="comment top-lined">
            <div class="commentPic"></div>
            <div class="comment-name"><%#DataBinder.Eval(Container.DataItem,"name")%></div>
            <span class="commentDate"><%#DataBinder.Eval(Container.DataItem,"created","{0:yyyy MMM dd tt}")%></span>

            <p><%#DataBinder.Eval(Container.DataItem,"body")%></p>
        </li>
    <!--name,ip,created-->
        </ItemTemplate>
        <FooterTemplate>
            </ul>
        </div>
    </div>
    </FooterTemplate>
</asp:Repeater>
<div runat="server" class="leave-comment top-lined" id="div_comment" visible="false">
	    <h2 class="fancy-title">Lämna en kommentar</h2>
    <a name="comm"></a>
	<label>Namn:</label>
    <div class="text-field-bg">
        <asp:TextBox runat="server" ID="comment_name" />
    </div>
	<label>Kommentar:</label>
    <asp:TextBox runat="server" ID="comment_msg" TextMode="MultiLine" Rows="4" Columns="40" />
    <input type="button" value="Skicka" onclick="javascript:doComment()" />
    <asp:LinkButton runat="server" ID="submit" />
</div>

<!--//-->
<script type="text/javascript">
    function doComment() {
        var _err = '';
        if (document.getElementById('<%=comment_msg.ClientID %>').value.length == 0) {
            _err += 'Message is missing\n';
        }
        if (_err.length > 0) alert(_err);
        else __doPostBack('<%=submit.UniqueID %>', '');
    }
</script>

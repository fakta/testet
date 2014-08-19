<%@ Page Title="title" Language="C#" MasterPageFile="~/webroot/_masterpage/1.master" EnableViewState="false" %>
<%@ Register TagPrefix="base" NameSpace="spbase.controls" Assembly="spbase"%>
<%@ Import Namespace="spbase.utils" %>
<script runat="server">
    string _approot = Globals.ApplicationRoot;
</script>

                    <asp:Content ContentPlaceHolderID="content_ph_1" runat="server">
                    <base:ContentWrapper runat="server" Key="1_1.master" />
                    <div class="row"><p><br></p><div class="col-md-2"><p<%=Globals.SmId(42)%>>Lorem ipsum<p></p<%=Globals.SmId(42)%>></div><div class="col-md-4"><p<%=Globals.SmId(77)%>>hhh<br><p></p<%=Globals.SmId(77)%>></div><p>ioopoipioåopop<br></p><div class="col-md-3"><p<%=Globals.SmId(47)%>>Lorem ipsum<p></p<%=Globals.SmId(47)%>></div><div class="col-md-2"><p<%=Globals.SmId(92)%>>Lorem ipsum<p></p<%=Globals.SmId(92)%>></div><div class="col-md-1"><p<%=Globals.SmId(97)%>>Lorem ipsum<p></p<%=Globals.SmId(97)%>></div></div>
                    <base:ContentWrapper Key="1_1.master" runat="server" IsEnding="true" />
                    </asp:Content>
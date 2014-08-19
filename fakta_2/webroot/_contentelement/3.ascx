<%@ control Language="c#" %>
<%@ Register TagPrefix="spbase" NameSpace="spbase.controls" Assembly="spbase" %>
<%@ Register TagPrefix="ce_ctrl1" NameSpace="spmenu" Assembly="spmenu"%>
<%@ Import Namespace="spbase.utils"%>
<script runat="server">
    string _approot=Globals.ApplicationRoot;
</script>
<footer class="site-footer">
    <div class="container">
        <ul class="info">
            <li><p<%=Globals.SmId(13)%>><strong<%=Globals.SmId(12)%>>Hitta hit</strong><br />Birger Jarlsgatan 55<br />111 45 Stockholm</p></li>
            <li><p<%=Globals.SmId(15)%>><strong<%=Globals.SmId(14)%>>Kontakta oss</strong><br />Telefon: 08 - 545 18 200<br />info@fakta.se</p></li>
            <li><strong<%=Globals.SmId(16)%>>Följ oss</strong></li><li><strong<%=Globals.SmId(17)%>>Navigation</strong><ce_ctrl1:SiteMap runat="server"/></li>
        </ul>
        <hr />
        <div class="logo-footer"><img src="http://www.sitepilot.net/fakta2/logo.png" /></div>
        <div class="sp-logo-footer"><img src="http://www.sitepilot.net/fakta2/sp-logo.png" /></div>
    </div>
</footer>

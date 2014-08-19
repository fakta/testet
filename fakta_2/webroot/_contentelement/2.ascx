<%@ control Language="c#" %>
<%@ Register TagPrefix="spbase" NameSpace="spbase.controls" Assembly="spbase" %>
<%@ Register TagPrefix="ce_ctrl1" NameSpace="spmenu" Assembly="spmenu"%>
<%@ Import Namespace="spbase.utils"%>
<script runat="server">
    string _approot=Globals.ApplicationRoot;
</script>
<header class="navbar">
<div class="container">
<div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <div class="navbar-brand">
         <a href="<%=Globals.PID("hem",1)%>" title="Hem"><img src="http://www.sitepilot.net/fakta2/logo.png" /></a>
      </div>
</div>
    <ce_ctrl1:DropdownMenu runat="server"/>
</header>

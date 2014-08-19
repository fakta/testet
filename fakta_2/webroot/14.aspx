<%@ Page Title="title" Language="C#" MasterPageFile="~/webroot/_masterpage/4.master" EnableViewState="true" %>
<%@ Register TagPrefix="base" NameSpace="spbase.controls" Assembly="spbase"%><%@ Register TagPrefix="c1_ctrl1" NameSpace="spmodules.post" Assembly="spmodules"%>
<%@ Import Namespace="spbase.utils" %>
<script runat="server">
    string _approot = Globals.ApplicationRoot;
</script>

                    <asp:Content ContentPlaceHolderID="content_ph_1" runat="server">
                    <base:ContentWrapper runat="server" Key="1_4.master" />
                    <c1_ctrl1:PostShow runat="server" Thumbnail="" SkinFilename="cases-single.ascx"/>
                    <base:ContentWrapper Key="1_4.master" runat="server" IsEnding="true" />
                    </asp:Content>
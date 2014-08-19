<%@ Control Language="C#" EnableViewState="false"  %>
<%@ Register TagPrefix="swc" namespace="spbase.controls.swc" assembly="spbase" %>
<%@ Register TagPrefix="base" namespace="spbase.controls" assembly="spbase" %>
<%@ Import Namespace="spbase.utils"%>
<script runat="server">
    string _approot=Globals.ApplicationRoot;
</script>
         
<asp:Repeater runat="server" id="items">
    <ItemTemplate>
    	<article class="content">
            <div class="about">
                <h1><%#DataBinder.Eval(Container.DataItem,"title")%></h1>

                <p class="intro"><%#DataBinder.Eval(Container.DataItem,"description")%></p>
                <%#DataBinder.Eval(Container.DataItem,"body")%>
            </div>
            <div class="image">
                <img src="<%#DataBinder.Eval(Container.DataItem,"picture_url")%>" />
            </div>
		</article>
        
    </ItemTemplate>
</asp:Repeater>

<script type="text/javascript">
(function($) {

  /**
   * Copyright 2012, Digital Fusion
   * Licensed under the MIT license.
   * http://teamdf.com/jquery-plugins/license/
   *
   * @author Sam Sehnert
   * @desc A small plugin that checks whether elements are within
   *     the user visible viewport of a web browser.
   *     only accounts for vertical position, not horizontal.
   */

  $.fn.visible = function(partial) {

      var $t            = $(this),
          $w            = $(window),
          viewTop       = $w.scrollTop(),
          viewBottom    = viewTop + $w.height(),
          _top          = $t.offset().top,
          _bottom       = _top + $t.height(),
          compareTop    = partial === true ? _bottom : _top,
          compareBottom = partial === true ? _top : _bottom;

    return ((compareBottom <= viewBottom) && (compareTop >= viewTop));

  };

})(jQuery);

//$(document).ready(function() {
var win = $(window);

var allMods = $(".image img");

allMods.each(function(i, el) {
  var el = $(el);
  if (el.visible(true)) {
    el.addClass("come-in");
  }
});

win.scroll(function(event) {

  allMods.each(function(i, el) {
    var el = $(el);
    if (el.visible(true)) {
      el.addClass("come-in");
    }
  });

});

//});
</script>

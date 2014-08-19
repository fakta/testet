(function ($) {

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

    $.fn.visible = function (partial) {

        var $t = $(this),
            $w = $(window),
            viewTop = $w.scrollTop(),
            viewBottom = viewTop + $w.height(),
            _top = $t.offset().top,
            _bottom = _top + $t.height(),
            compareTop = partial === true ? _bottom : _top,
            compareBottom = partial === true ? _top : _bottom;

        return ((compareBottom <= viewBottom) && (compareTop >= viewTop));

    };

})(jQuery);

function video_setup() {
    $(".video-container").attr("style", "overflow: hidden; position: relative;");
}

// Resize intro video
function video_resize() {

    var _container = $(".video-container");

    _container.height($(window).height());
    var _video = $("video.slide-bg"),
        _vh = _video.height(),
        _vw = _video.width(),
        _cw = _container.width(),
        _ch = _container.height();


    _video.removeClass("x-height");

    if (_vh < _ch) {
        _video.addClass("x-height");
    }

}

$(document).ready(function(){
    video_setup();
    video_resize();

    $(window).resize(function () {        
        video_resize();
    });
});

// Adding sliding effect
$(document).ready(function() {
    var win = $(window);

    var allMods = $(".case article");

    allMods.each(function (i, el) {
        var el = $(el);
        if (el.visible(true)) {
            el.addClass("come-in");
        }
    });

    win.scroll(function (event) {

        allMods.each(function (i, el) {
            var el = $(el);
            if (el.visible(true)) {
                el.addClass("come-in");
            }
        });

    });

});


var header = $('navbar');
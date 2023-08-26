jQuery(document).ready(function($){
    $('.toggle-btn').on('click',function(){
        $('.toggle-btn__line').toggleClass('active');
        $('.global-nav').fadeToggle();
    });
    $('.a_mobile').on('click',function(){
        $('.toggle-btn__line').toggleClass('active');
        $('.global-nav').fadeToggle();
    });
});

var _window = $(window),
    _header = $('.site-header'),
    heroBottom;

_window.on('scroll',function(){
    heroBottom = $('.body').height();
    if(_window.scrollTop() > heroBottom){
        _header.addClass('transform');   
}
    else{
        _header.removeClass('transform');   
}
});

_window.trigger('scroll');
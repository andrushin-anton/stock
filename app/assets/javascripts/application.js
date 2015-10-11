// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .

// Hide Header on on scroll down
var didScroll;
var lastScrollTop = 0;
var delta = 5;
var navbarHeight = $('.header-table').outerHeight();

$(window).scroll(function(event){
    didScroll = true;
});

setInterval(function() {
    if (didScroll) {
        hasScrolled();
        didScroll = false;
    }
}, 250);

function hasScrolled() {
    var st = $(this).scrollTop();

    // Make sure they scroll more than delta
    if(Math.abs(lastScrollTop - st) <= delta)
        return;

    // If they scrolled down and are past the navbar, add class .nav-up.
    // This is necessary so you never see what is "behind" the navbar.
    if (st > lastScrollTop && st > navbarHeight){
        // Scroll Down
        $('.header-table').removeClass('nav-down').addClass('nav-up');
    } else {
        // Scroll Up
        if(st + $(window).height() < $(document).height()) {
            $('.header-table').removeClass('nav-up').addClass('nav-down');
        }
    }

    lastScrollTop = st;
}

function calculate_total(id, direction, levels)
{
    var $this = $('#'+id);
    var total_money = parseFloat($this.find('.total_money').val());
    var risk_percent = parseFloat($this.find('.risk_percent').val());
    var risk = risk_percent / 100;
    var absolute_risk = total_money * risk;

    var parsed_levels = JSON.parse(levels);
    if (direction === 'BUY') {
        var points = parseFloat(parsed_levels[0].buy_stop) - parseFloat(parsed_levels[0].stop_loss);
        //profit = take_profit - buy_stop
        var profit = parseFloat(parsed_levels[0].take_profit) - parseFloat(parsed_levels[0].buy_stop);
        //risk = buy_stop - stop_loss
        var risk = parseFloat(parsed_levels[0].buy_stop) - parseFloat(parsed_levels[0].stop_loss);
    } else {
        var points = parseFloat(parsed_levels[0].stop_loss) - parseFloat(parsed_levels[0].sell_stop);
        //profit = sell_stop - take_profit
        var profit = parseFloat(parsed_levels[0].sell_stop) - parseFloat(parsed_levels[0].take_profit);
        //risk = stop_loss - sell_stop
        var risk = parseFloat(parsed_levels[0].stop_loss) - parseFloat(parsed_levels[0].sell_stop);
    }
    //number of shares = absolute risk / point of distanse between entry and s-l
    var shares = (absolute_risk / points).toFixed();

    if (shares !== 'NaN') {
        $this.find('.shares').html(shares);
        $this.find('.profit').html((profit * shares).toFixed());
        $this.find('.risk').html((risk * shares).toFixed());
    }
}

$(document).ready(function() {
    $('.mm .total_money').keyup(function(){
        var total_money = parseInt($(this).val());
        var risk_percent = parseInt($(this).parent().parent().next().find('.risk_percent').val());

        //if (total_money !== NaN && risk_percent !== NaN) {
            //number of shares = absolute risk / point of distanse between entry and s-l

            var number_of_shares = 2;
            $(this).parent().next().find('.shares').val(number_of_shares);
        //}
    });
});
$(document).ready(function(){

    $(document).mouseup(function (e) {
        var container = $(".filter-list, .find-input");
        if (container.has(e.target).length === 0){
            $('.filter-list').removeClass('active');
        }
    });
});



$(document).on('click', '.filter-list li', function(){
    var target = $(this).closest('div').find('.find-input span');
    var text = $(this).text();
    $(target).text(text);
    $('.filter-list').removeClass('active');
});

$(document).on('click', '.find-input', function(){

    var target = $(this).next('ul');
    var selectClass = target.attr('class');
    $('.find-dropdown').each(function(i,e){
        if($(e).hasClass('active'))
        {
            var checkClass = $(e).attr('class');
            if( selectClass != checkClass )
            {
                $(e).removeClass('active');
            }
        }
    });
    var isActive = target.hasClass('active');
    target[!isActive ? 'addClass' : 'removeClass']('active');
});

$(document).on('click', '.open-block', function(){
    var block = $(this).attr('data-block'),
        showBlock = $('[data-item="'+block+'"]');
        $('.open-block.active').removeClass('active');
        $(this).addClass('active');
        var hideBlock = $('.builder-trigger-block').filter(':visible');
        $(hideBlock).hide();
        $(showBlock).show();
});
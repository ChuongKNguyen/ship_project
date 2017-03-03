$('#button-green').on('click', function(){alert( "GREEN" )});
$('#button-red').on('click', function(){alert( "RED" )});

var chanignExample = function(color) {
    $('#exampleDot').removeClass('red')
                    .removeClass('yellow')
                    .removeClass('green')
                    .removeClass('none')
                    .addClass(color);
};

// $('#button-off').on('click', function(){chanignExample('none')});
// $('#button-red').on('click', function(){chanignExample('red')});
// $('#button-yellow').on('click', function(){chanignExample('yellow')});
// $('#button-green').on('click', function(){chanignExample('green')});
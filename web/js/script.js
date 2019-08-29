$(".add-to-cart").on("click",function(e){
    e.preventDefault();
    var id = $(this).data('id');
    qty = $('#qty').val();

    var_left = $(".cart-box").offset().left;
    var_top = $(".cart-box").offset().top;

    $(".image-product")
        .clone()
        .css({'position' : 'absolute', 'z-index' : '11100', top: $(this).offset().top-200, left:$(this).offset().left-10})
        .appendTo("body")
        .animate({opacity: 0.05,
            left: $(".cart-box").offset()['left'],
            top: $(".cart-box").offset()['top'],
            width: 20}, 1000, function() {
            $(this).remove();
        });
    $.ajax({
        url: '/cart/add',
        data: {id:id , qty: qty},
        type : 'GET',
        success: function (res) {
            location.reload()
        },
        error: function () {
            alert('Error to add');
        }

    });

});

$(".add-to-cart2").on("click",function(e){
    e.preventDefault();
    var id = $(this).data('id') ,
        qty = $('#qty').val();

    var_left = $("#id-cart").offset().left;
    var_top = $("#id-cart").offset().top;

    $("#product"+id)
        .clone()
        .css({'position' : 'absolute', 'z-index' : '11100', top: $(this).offset().top-300, left:$(this).offset().left-100})
        .appendTo("body")
        .animate({opacity: 0.05,
            left: $("#id-cart").offset()['left'],
            top: $("#id-cart").offset()['top'],
            width: 20}, 1000, function() {
            $(this).remove();
        });
    $.ajax({
        url: 'cart/add',
        data: {id:id , qty: qty},
        type : 'GET',
        success: function  () {
            //showCart(res);
            location.reload();
        },

        error: function (res) {
            alert('Error');
        },
    });

});

function showCart(cart) {
    var id = $(this).data('id');
    $.ajax({
        url: '/cart/add',
        data: {id:id},
        type: 'GET',
        success: function (res) {
            $(".cart-area").html(res);
            location.reload();
        }
    });

}

function clearCart() {
    $.ajax({
        url: '/cart/clear',
        type: 'GET',
        success: function (res) {
            if(res) alert('Ошибка');
            showCart(res);
        },
        error: function () {
            alert('Error');
        }
    });
}
$('.cart-table').on('click' , '.del-item' , function () {
    var id = $(this).data('id');
    $.ajax({
        url: '/cart/del-item',
        data: {id: id},
        type: 'GET',
        success: function () {
            location.reload();
        },
        error: function () {
            alert('Del not');
            location.reload();
        }
    });
});
$('.main-cart-box').on('click' , '.del-item' , function () {
    var id = $(this).data('id');
    $.ajax({
        url: '/cart/del-item',
        data: {id: id},
        type: 'GET',
        success: function () {
            location.reload();
        },
        error: function () {
            alert('Del not');
            location.reload();
        }
    });
});


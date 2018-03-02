$(document).ready(() => {


    $(".show").on('click', event => {
      $(event.currentTarget).parent().removeClass("unread");
    $('.show-email').fadeIn();
    });


})

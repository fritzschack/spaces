const autoScrollHome = () => {
  $(document).ready(function() {
    $('#down-arrow').click(function(e) {
      e.preventDefault();

      $('html, body').animate({
        scrollTop: $('#home-cards').offset().top
      }, 500);
    });
  });
};

export { autoScrollHome };

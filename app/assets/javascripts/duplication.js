$(function() {
  var addBtn = $('.add-btn');

  addBtn.click(function(e){
    e.preventDefault();
    var item = $(this);
    var newQuestion = $('.question')
      .first()
      .clone();

    item.before(newQuestion);

    app.incrementValues();
  });

});

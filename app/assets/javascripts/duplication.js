$(function() {
  var addBtn = $('.add-btn');

  addBtn.click(function(e){
    e.preventDefault();
    var item = $(this);
    var newQuestion = $('.question')
      .first()
      .clone();

    app.incrementValues();

    newQuestion.children('')

    item.before(newQuestion);

  });

});

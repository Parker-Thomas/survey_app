app.incrementValues = function() {

  var allQuestions = $('.question');
  var inputs = $('.question input');
  inputs.each(function(index, input) {
    var inputName = input.name;
    var inputId = input.id;
    var reg = /\d+/;
    input.name = inputName.replace(reg, index);
    input.id = inputId.replace(reg, index);
  });

}

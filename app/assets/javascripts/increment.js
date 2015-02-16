app.incrementValues = function() {

  // function to give the right values to the forms

  var allQuestions = $('.question');
  var inputs = $('.question textarea');
  var selects = $('.question-type');

  inputs.each(function(index, input) {
    var inputName = input.name;
    var inputId = input.id;
    var reg = /\d+/;
    input.name = inputName.replace(reg, index);
    input.id = inputId.replace(reg, index);
    console.log(input);
  });
  selects.each(function(index, select) {
    var inputName = select.name;
    var inputId = select.id;
    var reg = /\d+/;
    select.name = inputName.replace(reg, index);
    select.id = inputId.replace(reg, index);
  });

}

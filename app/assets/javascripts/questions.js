$(function() {

  // SELECT A QUESTION
  // When user chooses a question type, show it
  $('select').on('change', showQuestion);

  function showQuestion(e) {
    var item=$(this);
    // Our types
    var questionType = {
      3: '#multiple-choice',
      4: '#yes-no',
      1: '#long',
      2: '#short'
    }

    //  Grab our question template
    var question = $(questionType[item.val()]).html();
    console.log(item.val());
    // find the next div and stick our question in there
    item.next().html(question);
  }

});

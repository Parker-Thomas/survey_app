$(function() {

  // SELECT A QUESTION
  // When user chooses a question type, show it
  $('.question-type').on('change', showQuestion);

  function showQuestion(e) {
    var item=$(this);
    // Our types
    var questionType = {
      'Multiple Choice': '#multiple-choice',
      'Yes or No': '#yes-no',
      'Long Answer': '#long',
      'Short Answer': '#short'
    }

    //  Grab our question template
    var question = $(questionType[item.val()]).html();
    console.log(questionType);
    // find the next div and stick our question in there
    item.next().html(question);
  }

});

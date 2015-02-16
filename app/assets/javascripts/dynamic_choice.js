$(function() {

  // Getting
  var dynamicInputItem = $('.multiple-option')

  function bindInputEvents(element) {
    element.addEventListener('input', addInput, false);
    element.addEventListener('blur', removeInput);
  };

  function addInput(e){
    // if there isn't another input following this one
    if(!e.target.nextElementSibling) {
      // grab the parent div
      var dynamicList = e.target.parentNode;
      // create a new input
      var newInput = document.createElement('input');
      // give the input a type, class, and put it in the document
      newInput.type = 'text';
      newInput.className = 'dynamic-input-item';
      dynamicList.appendChild(newInput);

      bindInputEvents(newInput);
    }
    return;
  }

  function removeInput(e) {
    // if the input is empty and the next one too, remove the second
    // input
    if (e.target.value === '' && e.target.nextElementSibling.value === ''){
      //  remove the next empty element
      e.target.parentNode.removeChild(e.target.nextElementSibling);
    }

    return;
  }

  // bindInputEvents(dynamicInputItem);



}

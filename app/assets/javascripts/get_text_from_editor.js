$(document).ready(function(){
  $('#submit_bouton').on('click', function(event){
    console.log(editor.getValue())
    $('#article_content').attr('value',editor.getValue());
  })
})

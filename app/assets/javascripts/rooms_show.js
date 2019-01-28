$(document).on('turbolinks:load', function(){

  function MbuildHTML(image_id){
    var html = `<img src="" class="roomsShowMain_imageLeftImage">
                </div>`;
    return html;
  }

  $('.roomsShowMain_imageRightItem').on('click', function(){
    let image_id = $(this).data('imageid');
    console.log(image_id);


  })

});


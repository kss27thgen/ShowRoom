$(document).on('turbolinks:load', function(){

  function buildHTML(url){
    var html = `<img src="${url}" class="roomsShowMain_imageLeftImage" width = "700" height = "550">
                </div>`;
    $('.roomsShowMain_imageLeft').empty();
    $('.roomsShowMain_imageLeft').append(html);
  }

  $('.roomsShowMain_imageRightItem').on('click', function(){
    let image_url = $(this).children('img').attr('src');
    let url = image_url.replace('thumb', 'show');
    buildHTML(url);
  })
});


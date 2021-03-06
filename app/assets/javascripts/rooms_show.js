$(document).on('turbolinks:load', function(){

  function selectPic(url){
    var html = `<img src="${url}" class="roomsShowMain_imageLeftItem" width = "700" height = "550">`;
    $('.roomsShowMain_imageLeft').empty();
    $('.roomsShowMain_imageLeft').append(html);
  }
  function enlargePic(url){
    var html = `<img src="${url}" class="room" width = "1000" height = "700">
                <button id="close" style="cursor: pointer;"}>閉じる</button>`;
    $('.rooms-shows').empty();
    $('.rooms-shows').append(html);
  }

// 小画像クリックアクション
  $('.roomsShowMain_imageRightItem').on('click', function(){
    let image_url = $(this).children('img').attr('src');
    let url = image_url.replace('thumb', 'show');
    selectPic(url);
  })
// 中画像クリックアクション
  $('html').on('click', '.roomsShowMain_imageLeftItem', function(){
    let image_url = $(this).attr('src');
    let url = image_url.replace('show', 'show_modal');
    $('#mask').removeClass('hidden');
    enlargePic(url);
  })
// 大画像閉じるアクション
  $('html').on('click', '#close, #mask', function(){
    $('#mask').addClass('hidden');
    $('.rooms-shows').empty();
  })
});


// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

document.addEventListener("turbolinks:load", function() {
  tinymce.remove();
  tinymce.init({
  selector: 'textarea#post_body',
  height: 411,
  theme: 'modern',
  image_caption: true,

  plugins: [
    'advlist autolink lists link image charmap preview hr anchor pagebreak',
    'searchreplace wordcount visualblocks visualchars code fullscreen',
    'insertdatetime media nonbreaking save table contextmenu directionality',
    'template paste textcolor colorpicker textpattern imagetools codesample'
  ],
  imagetools_cors_hosts: ['mydomain.com', 'otherdomain.com'],
  imagetools_toolbar: "rotateleft rotateright | flipv fliph | editimage imageoptions",
  toolbar1: 'insertfile undo redo |  bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image media',
  toolbar2: 'styleselect | preview | forecolor backcolor | code codesample ',
  image_list: [
    {title: 'My image 1', value: 'https://static.pexels.com/photos/164262/pexels-photo-164262.jpeg'},
    {title: 'My image 2', value: '../images/milobig.gif'}
  ],
 });
})
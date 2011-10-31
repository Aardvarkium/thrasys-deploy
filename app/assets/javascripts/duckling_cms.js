$(document).ready(function () {
        $('.toggle').before('<a href="#" class="toggle-control">Advanced Options</a>');
        $('.toggle').hide();
        $('.toggle-control').live('click', function() {
            $('.toggle').toggle();
            return false;
        });
});
function add_fields(link, association, content){
    var new_id = new Date().getTime();
    var regexp = new RegExp("new_" + association, "g")
    $(link).parent().before(content.replace(regexp, new_id));
    var str = "post_contents_attributes_" + new_id + "_content";
    tinyMCE.execCommand('mceAddControl', false, str);
}
$(function() {
    $('.fields .remove').live('click', function() {
        $(this).parents("p:first").remove();
            return false;
    });
    $('.fields .add-answer').click(function() {
        alert('hello');
    });
});

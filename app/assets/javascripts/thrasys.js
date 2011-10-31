$(document).ready(function(){
    $(".tab-container").find("a").click(function(event){
        $(".tab-container").find("a").each(function(){
            $(this).removeClass('tab_on');
        });
        $(this).addClass('tab_on');
        if(this.id == "overview"){
            $(".show-hide").show('slow');
        }
        else{
            $(".show-hide").hide();
            var str = '#' + this.id;
            $("#subpage-content-left").find(str).show('slow');
        }
    });
});

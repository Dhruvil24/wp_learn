jQuery(document).ready(function() {
    jQuery('#my-book').DataTable();

    jQuery("#btn-upload").on("click",function(){
        var image = wp.media({
            title:"Upload Image For My Book",
            multiple:false
        }).open().on("select",function(){
                var uploaded_image = image.state().get("selection").first();
                var getImage = uploaded_image.toJSON().url;
                jQuery("#show-image").html("<img src='"+getImage+"' style='height:50px;width:50px;' />");
                jQuery("#image_name").val(getImage);
            });
    });
    jQuery("#frmAddBook").validate({
        submitHandler:function(){
            var postdata = "action=mybookajaxurl&param=save_book&"+jQuery("#frmAddBook").serialize();
            jQuery.post(mybookajaxurl,postdata,function(response){
                var data = jQuery.parseJSON(response);
                if(data.stautus == 1){
                    jQuery.notifyBar({
                        cssClass:"success",
                        html:data.message
                    });
                }
                else
                {

                }
            });
        }
    });

    jQuery("#frmEditBook").validate({
        submitHandler:function(){
            var postdata = "action=mybookajaxurl&param=edit_book&"+jQuery("#frmEditBook").serialize();
            jQuery.post(mybookajaxurl,postdata,function(response){
                var data = jQuery.parseJSON(response);
                if(data.stautus == 1){
                    jQuery.notifyBar({
                        cssClass:"success",
                        html:data.message
                    });
                }
                else
                {

                }
            });
        }
    });
} );
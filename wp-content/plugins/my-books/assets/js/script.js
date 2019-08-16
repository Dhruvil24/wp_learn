jQuery(document).ready(function() {
    jQuery('#my-book').DataTable();

    jQuery("#frmAddStudent").validate({
        submitHandler:function(){
            var postdata = "action=mybookajaxurl&param=save_student&"+jQuery("#frmAddStudent").serialize();
            jQuery.post(mybookajaxurl,postdata,function(response){
                var data = jQuery.parseJSON(response);
                if(data.status == 1){
                    jQuery.notifyBar({
                        cssClass:"success",
                        html:data.message
                    });
                    setTimeout(function(){
                        location.relad();
                    },1300)
                }
                else
                {

                }
            });
        }
    });

    jQuery("#frmAddAuthor").validate({
        submitHandler:function(){
            var postdata = "action=mybookajaxurl&param=save_author&"+jQuery("#frmAddAuthor").serialize();
            jQuery.post(mybookajaxurl,postdata,function(response){
                var data = jQuery.parseJSON(response);
                if(data.status == 1){
                    jQuery.notifyBar({
                        cssClass:"success",
                        html:data.message
                    });
                    setTimeout(function(){
                        location.relad();
                    },1300)
                }
                else
                {

                }
            });
        }
    });

    jQuery(document).on('click',".btnbookdelete",function(){
        var conf = confirm('Are You Sure Want to Delete?');
        if(conf){
            var book_id = jQuery(this).attr('data-id');
            var postdata = "action=mybookajaxurl&param=delete_book&id=" +book_id;
            jQuery.post(mybookajaxurl,postdata,function(response){
                var data = jQuery.parseJSON(response);
                if(data.status == 1){
                    jQuery.notifyBar({
                        cssClass:"success",
                        html:data.message
                    });
                    setTimeout(function(){
                        location.reload();
                    },1300)
                }
                else
                {

                }
            });
        }
    });

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
                if(data.status == 1){
                    jQuery.notifyBar({
                        cssClass:"success",
                        html:data.message
                    });
                    setTimeout(function(){
                        location.relad();
                    },1300)
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
                if(data.status == 1){
                    jQuery.notifyBar({
                        cssClass:"success",
                        html:data.message
                    });
                    setTimeout(function(){
                        location.relad();
                    },1300)
                }
                else
                {

                }
            });
        }
    });
} );
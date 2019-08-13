/* This is our javascript file */

jQuery(function() {

	jQuery("#frmPost").validate({
		submitHandler: function(){
			var name = jQuery("#name").val();
			var email = jQuery("#email").val();
			var description = encodeURIComponent(tinyMCE.get("description_id").getContent());
			var postdata = "action=first_demo_plugin_library&param=savedata&email="+email+"&name="+name+"&description="+description;
			jQuery.post(ajaxurl,postdata,function(response){
				console.log(response);
			})
		}
	});

	// jQuery("#btnImg").on("click",function(){
	// 	var image = wp.media({
	// 		title: "Upload Image",
	// 		multiple: false
	// 	}).open().on("select",function(e){
	// 		var uploadedImage = image.state().get("selection"); 
	// 		console.log(uploadedImage.toJSON());	
	// 	});
	// });

	//otehr ajax request
	jQuery("#frmPostOtherPage").validate({
		submitHandler:function(){
			var post_data = jQuery("#frmPostOtherPage").serialize()+"&action=first_demo_ajax_req";
			jQuery.post(ajaxurl,post_data,function(response){
				var data = jQuery.parseJSON(response);
				console.log(data);
				console.log("Name: "+data.name+"Email: "+data.email);
			});
		}
	});

	jQuery(document).on("click",".onclick",function(){
		
		var post_data = "action=first_demo_plugin_library&param=get_message";
		$.post(ajaxurl,post_data,function(response){
			console.log(response);
		});

	});

	$("#frmPost").validate({
		submitHandler:function(){
			var post_data = $("#frmPost").serialize()+"&action=first_demo_plugin_library&param=post_form_data";

			$.post(ajaxurl,post_data,function(response){
				var data = $.parseJSON(response);
				console.log(data);
				console.log("Name: "+data.name+"Email: "+data.email);
			});
		}
	})

});
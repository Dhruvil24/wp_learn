/* This is our javascript file */

jQuery(function() {

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
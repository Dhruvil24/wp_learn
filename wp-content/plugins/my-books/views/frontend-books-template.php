<?php
/*
 Template Name: Front end book page layout
 */
get_header();
?>
<section class="pt-5 pb-5" style="height: 100px;"></section>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="alert alert-success" style="background-color:#d3f582; ">
                <h3>Online Web Tutorial Courses</h3>
            </div>
            <?php echo do_shortcode("[book_page]"); ?>
        </div>
    </div>
</div>
<section class="pt-5 pb-5" style="height: 300px;"></section>
<section class="pt-5 pb-5" style="height: 300px;"></section>
<?php get_footer();?>
<?php
/*
 Template Name: Front end book page layout
 */

 get_header();
echo "11111";
?>
<h1>gddfg</h1>
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

<?php get_footer();?>
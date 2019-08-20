
<?php
    global $wpdb;
    global $user_ID;
    $getAllBooks = $wpdb->get_results(
        $wpdb->prepare(
            "SELECT * FROM ".my_book_table()." ORDER by id DESC ", ""
        ),ARRAY_A
    );
?>
<div style="display: flex;">
<?php
    if(count($getAllBooks)>0){
        foreach($getAllBooks as $key=>$value){
        ?>
            <div class="col-sm-4 owt-layout" style="text-align: center;border: 1px solid #000000;padding: 10px;">
                <p><img src="<?php echo $value['book_image']; ?>" style="height: 100px;width: 100px;"></p>
                <p><?php echo $value['name']; ?></p>
                <p><?php echo $value->author; ?></p>
                <p>
                    <?php
                        if($user_ID > 0){
                            // login state
                            ?>
                            <a class="btn btn-success owt-enrol-btn" href="javascript:void(0)">Enrol Now</a>
                            <?php
                        }else{
                            // logout state
                            ?>
                            <a class="btn btn-success" href="<?php echo wp_login_url(); ?>">Login To Enrol</a>
                            <?php
                        }
                    ?>

                </p>
            </div>

        <?php
        }
    }
?>
</div>
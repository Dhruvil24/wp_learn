<?php wp_enqueue_media(); ?>
<?php
    $book_id = isset($_GET['edit']) ? intval($_GET['edit']) : 0 ;
    global $wpdb;
    $book_detail = $wpdb->get_row(
        $wpdb->prepare(
            "SELECT * FROM ".my_book_table()." WHERE id = %d ", $book_id
        ),ARRAY_A
    );

?>
<div class="container-fluid">
    <div class="alert alert-info">
        <h5>Update Book Page</h5>
    </div>
    <div class="card" style="padding: 0px;margin-top: 0px;max-width: 100%; border-color: #007bff;">
        <div class="card-header bg-primary text-white">Update Book</div>
        <div class="card-body">
            <div class="container">
                <form action="javascript:void(0)" id="frmEditBook">
                    <input type="hidden" name="book_id" value="<?php echo isset($_GET['edit'])? intval($_GET['edit']): 0; ?>">
                    <div class="row">
                        <div class="col-md-2">
                            <label for="name">Name:</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text"  id="name" class="form-control" value="<?php echo $book_detail['name']; ?>"  name="name" placeholder="Your name.." required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-2">
                            <label for="author">Author:</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text" value="<?php echo $book_detail['author']; ?>" id="author" class="form-control" name="author" placeholder="Your author name.." required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-2">
                            <label for="about">About:</label>
                        </div>
                        <div class="col-md-10">
                            <textarea id="about" name="about" class="form-control" placeholder="Write something.." rows="7"><?php echo $book_detail['about']; ?></textarea>
                        </div>
                    </div>
                    <div>
                        <div class="row" style="padding-top: 15px;">
                            <div class="col-md-2">
                                <label for="bookImg">Upload Book Image:</label>
                            </div>
                            <div class="col-md-10">
                                <input type="button" id="btn-upload" class="btn btn-info" value="Upload Image">
                                <span id="show-image">
                                    <img src="<?php echo $book_detail['book_image']?>" style="height: 80px;width: 80px;" />
                                </span>
                                <input type="hidden" id="image_name" name="image_name">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-10">
                            <input type="submit" value="Update" style="float: left;">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<?php wp_enqueue_media(); ?>
<div class="container">
    <div class="alert alert-info">
        <h5>Add Book Page</h5>
    </div>
        <div class="card" style="padding: 0px;margin-top: 0px;max-width: 100%; border-color: #007bff;">
        <div class="card-header bg-primary text-white">Add New Book</div>
        <div class="card-body">
            <div class="container">
                <form action="javascript:void(0)" id="frmAddBook">
                    <div class="row">
                        <div class="col-md-2">
                            <label for="name">Name:</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text" id="name" class="form-control"  name="name" placeholder="Your name.." required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-2">
                            <label for="author">Author:</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text" id="author" class="form-control" name="author" placeholder="Your author name.." required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-2">
                            <label for="about">About:</label>
                        </div>
                        <div class="col-md-10">
                            <textarea id="about" name="about" class="form-control" placeholder="Write something.." rows="7"></textarea>
                        </div>
                    </div>
                    <div>
                    <div class="row" style="padding-top: 15px;">
                        <div class="col-md-2">
                            <label for="bookImg">Upload Book Image:</label>
                        </div>
                        <div class="col-md-10">
                            <input type="button" id="btn-upload" class="btn btn-info" value="Upload Image">
                            <span id="show-image"></span>
                            <input type="hidden" id="image_name" name="image_name">
                        </div>
                    </div>
                    </div>
                    <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-10">
                            <input type="submit" value="Submit" style="float: left;">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid">
    <div class="alert alert-info">
        <h5>Add Author Page</h5>
    </div>
    <div class="card" style="padding: 0px;margin-top: 0px;max-width: 100%; border-color: #007bff;">
        <div class="card-header bg-primary text-white">Add New Author</div>
        <div class="card-body">
            <div class="container">
                <form action="javascript:void(0)" id="frmAddAuthor">
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
                            <label for="author">Facebook Link:</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text" id="fb_link" class="form-control" name="fb_link" placeholder="Author Facebook URL.." required>
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
                    <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-10">
                            <input type="submit" value="Submit" style="float: left; margin-top: 15px;">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
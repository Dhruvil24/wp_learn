<?php
    global $wpdb;
    $all_books = $wpdb->get_results(
        $wpdb->prepare(
            "SELECT * FROM ".my_book_table()." ORDER by id DESC ", ""
        ),ARRAY_A
    );
//print_r($all_books);
?>
<div class="container-fluid">
    <div class="row" style="display: unset">
        <div class="alert alert-info">
            <h5>My Book List</h5>
        </div>
        <div class="card" style="padding: 0px;margin-top: 0px;max-width: 100%; border-color: #007bff;">
            <div class="card-header bg-primary text-white">Header</div>
                <div class="card-body">
                    <table id="my-book" class="table table-striped" style="width:100%">
                        <thead>
                            <tr>
                                <th>Sr. No</th>
                                <th>Name</th>
                                <th>Author</th>
                                <th>About</th>
                                <th>Book Image</th>
                                <th>Created At</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php
                            if(count($all_books) > 0){
                                $i=1;
                                foreach($all_books as  $key=>$value){
                                ?>
                                    <tr style="vertical-align: middle">
                                        <td><?php echo $i++; ?></td>
                                        <td><?php echo $value['name']; ?></td>
                                        <td><?php echo $value['author']; ?></td>
                                        <td><?php echo $value['about']; ?></td>
                                        <td><img src="<?php echo $value['book_image']; ?>" style="height: 50px;width: 50px;"></td>
                                        <td><?php echo $value['created_at']; ?></td>
                                        <td>
                                            <a href="admin.php?page=book-edit&edit=<?php echo $value['id'];?>" class="btn btn-info">Edit</a>
                                            <a href="javascript:void(0)" data-id="<?php echo $value['id'];?>" class="btn btn-danger btnbookdelete">Delete</a>
                                        </td>
                                    </tr>
                                <?php
                                }
                            }
                        ?>
                        </tbody>
                    </table>
                </div>
<!--            <div class="card-footer">Footer</div>-->
        </div>


    </div>
</div>
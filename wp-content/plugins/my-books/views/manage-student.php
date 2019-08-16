<?php
    global $wpdb;
    $getAllStudents = $wpdb->get_results(
    $wpdb->prepare(
        "SELECT * FROM ".my_students_table()." ORDER by id DESC ", ""
    ),ARRAY_A
    );
?>
<div class="container-fluid">
    <div class="card" style="padding: 0px;margin-top: 0px;max-width: 100%; border-color: #007bff;">
        <div class="card-header bg-primary text-white">My Author List</div>
        <div class="card-body">
            <table id="my-book" class="table table-striped" style="width:100%">
                <thead>
                    <tr>
                        <th>Sr. No</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Username</th>
                        <th>Created At</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    if(count($getAllStudents) > 0){
                        $i=1;
                        foreach($getAllStudents as $key=>$value){
                            $userdetails = get_userdata($value->user_login_id);
                            ?>
                            <tr style="vertical-align: middle">
                                <td><?php echo $i++; ?></td>
                                <td><?php echo $value['name']; ?></td>
                                <td><?php echo $value['email']; ?></td>
                                <td><?php echo $userdetails->user_login; ?></td>
                                <td><?php echo $value['created_at']; ?></td>
                                <td>
                                    <a href="javascript:void(0)" data-id="<?php echo $value['id'];?>" class="btn btn-danger">Delete</a>
                                </td>
                            </tr>
                        <?php
                        }
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
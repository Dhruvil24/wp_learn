<div class="container-fluid">
    <div class="alert alert-info">
        <h5>Add Student Page</h5>
    </div>
    <div class="card" style="padding: 0px;margin-top: 0px;max-width: 100%; border-color: #007bff;">
        <div class="card-header bg-primary text-white">Add New Student</div>
        <div class="card-body">
            <div class="container">
                <form action="javascript:void(0)" id="frmAddStudent">
                    <div class="row">
                        <div class="col-md-2">
                            <label for="name">Name:</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text" id="name" class="form-control"  name="name" placeholder="Enter Your Name" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-2">
                            <label for="email">Email:</label>
                        </div>
                        <div class="col-md-10">
                            <input type="email" id="email" class="form-control"  name="email" placeholder="Enter Your Email Address" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-2">
                            <label for="username">Username:</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text" id="username" class="form-control"  name="username" placeholder="Enter Your Username" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-2">
                            <label for="password">Password:</label>
                        </div>
                        <div class="col-md-10">
                            <input type="password" id="password" class="form-control"  name="password" placeholder="Enter Your Password" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-2">
                            <label for="conf_password">Confirm Password:</label>
                        </div>
                        <div class="col-md-10">
                            <input type="password" id="conf_password" class="form-control"  name="conf_password" placeholder="Confirm Password" required>
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
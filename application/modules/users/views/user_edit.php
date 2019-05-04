<!-- Labels on top -->
                    <div class="block">
                        <div class="block-header">
                            <h3 class="block-title">New user</h3>
                        </div>
                        <div class="block-content block-content-full">
                            <div class="row">
                                <div class="col-lg-4">
                                    <p class="font-size-sm text-muted">
                                        Fill this form to create a new user in the system
                                    </p>
                                </div>
                                <div class="col-lg-8">
                                    <!-- Form Labels on top - Default Style -->
                                    <form class="mb-5" action="<?php echo base_url('users/new'); ?>" method="POST">
                                        <div class="form-group">
                                            <label for="username">Username</label>
                                            <?php echo form_error('username','<div class="alert alert-danger alert-dismissable" role="alert"><p class="mb-0">','</p></div>'); ?>
                                            <input type="txt" class="form-control" id="username" name="username" placeholder="User's username.." value="<?php echo set_value('username'); ?>">
                                        </div>
                                        <div class="form-group">
                                            <label for="first_name">First name</label>
                                            <?php echo form_error('first_name','<div class="alert alert-danger alert-dismissable" role="alert"><p class="mb-0">','</p></div>'); ?>
                                            <input type="txt" class="form-control" id="first_name" name="first_name" placeholder="First name.." value="<?php echo set_value('first_name'); ?>">
                                        </div>
                                        
                                        <div class="form-group">
                                            <label for="last_name">Last name</label>
                                            <?php echo form_error('last_name','<div class="alert alert-danger alert-dismissable" role="alert"><p class="mb-0">','</p></div>'); ?>
                                            <input type="txt" class="form-control" id="last_name" name="last_name" placeholder="Last name.." value="<?php echo set_value('last_name'); ?>">
                                        </div>
                                        
                                        <div class="form-group">
                                            <label for="email">Email</label>
                                            <?php echo form_error('email','<div class="alert alert-danger alert-dismissable" role="alert"><p class="mb-0">','</p></div>'); ?>
                                            <input type="email" class="form-control" id="email" name="email" placeholder="Your Email.." value="<?php echo set_value('email'); ?>">
                                        </div>
                                        

                                        <div class="form-group">
                                            <label for="password">Password</label>
                                            <?php echo form_error('password','<div class="alert alert-danger alert-dismissable" role="alert"><p class="mb-0">','</p></div>'); ?>
                                            <input type="password" class="form-control" id="password" name="password" placeholder="Your password..">
                                        </div>
                                        <div class="form-group">
                                            <label for="password2">Repeat password</label>
                                            <?php echo form_error('password2','<div class="alert alert-danger alert-dismissable" role="alert"><p class="mb-0">','</p></div>'); ?>
                                            <input type="password" class="form-control" id="password2" name="password2" placeholder="Repeat your password..">
                                        </div>
                                        <div class="form-group">
                                            <label for="group">Select</label>
                                            <?php echo form_error('group','<div class="alert alert-danger alert-dismissable" role="alert"><p class="mb-0">','</p></div>'); ?>
                                            <select class="form-control" id="group" name="group">
                                                <option value="">Please select</option>
                                                <option value="1">Option #1</option>
                                                <option value="2">Option #2</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-primary">Save</button>
                                        </div>
                                    </form>
                                    <!-- END Form Labels on top - Default Style -->

                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END Labels on top -->
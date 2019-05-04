        
                    <!-- Dynamic Table Full -->
                    <div class="block">
                        <div class="block-header">
                            <h3 class="block-title">Dynamic Table <small>Full</small></h3>
                        </div>
                        <div class="block-content block-content-full">
                            <!-- DataTables init on table by adding .js-dataTable-full class, functionality is initialized in js/pages/be_tables_datatables.min.js which was auto compiled from _es6/pages/be_tables_datatables.js -->
                            <table class="table table-bordered table-striped table-vcenter js-dataTable-full">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>username</th>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($users as $user):?>
                                    <!-- <pre><?php //var_dump($user); ?></pre> -->

                <!-- <li></li> -->
                                    <tr>
                                        <td class="text-center font-size-sm"><?php echo $user->id;?></td>
                                        <td class="text-center font-size-sm"><?php echo $user->username;?></td>
                                        <td class="font-w600 font-size-sm">
                                            <a href="be_pages_generic_blank.html"><?php echo $user->first_name.' '.$user->last_name;?></a>
                                        </td>
                                        <td class="d-none d-sm-table-cell font-size-sm">
                                            <?php echo $user->email;?>
                                        </td>
                                        <td>
                                            <em class="text-muted font-size-sm">8 days ago</em>
                                        </td>
                                    </tr>
                                    <?php endforeach;?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- END Dynamic Table Full -->
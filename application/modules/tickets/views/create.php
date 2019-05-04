<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">

        <title>OneUI - Bootstrap 4 Admin Template &amp; UI Framework</title>

        <meta name="description" content="OneUI - Bootstrap 4 Admin Template &amp; UI Framework created by pixelcave and published on Themeforest">
        <meta name="author" content="pixelcave">
        <meta name="robots" content="noindex, nofollow">

        <link rel="shortcut icon" href="assets/media/favicons/favicon.png">
        <link rel="icon" type="image/png" sizes="192x192" href="assets/media/favicons/favicon-192x192.png">
        <link rel="apple-touch-icon" sizes="180x180" href="assets/media/favicons/apple-touch-icon-180x180.png">
     
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400italic,600,700%7COpen+Sans:300,400,400italic,600,700">
        <link rel="stylesheet" id="css-main" href="assets/css/oneui.min.css">

       
    </head>
    <body>
        <div class="content"> 
            <form action="<?php base_url('tickets/create')?>" method="POST" onsubmit="return false;">
                <div class="row items-push">                    
                    <div class="col-lg-12 col-xl-10">
                        <div class="form-group">
                            <label for="val-username">Customer Name</label>
                            <input type="text" class="form-control" id="val-username" name="val-username" placeholder="Enter customer name..">
                        </div>
                        <div class="form-group">
                            <label for="val-email">Customer Address</label>
                            <input type="text" class="form-control" id="val-email" name="val-email" placeholder="Enter customer address..">
                        </div>
                        <div class="form-group">
                            <label for="val-password">Customer Telephone</label>
                            <input type="text" class="form-control" id="val-password" name="val-password" placeholder="Enter customer contact..">
                        </div>
                        <div class="form-group">
                            <label for="val-confirm-password">Email</label>
                            <input type="text" class="form-control" id="val-confirm-password" name="val-confirm-password" placeholder="Enter email">
                        </div> 
                        <div class="form-group">
                            <label for="val-confirm-password">Category</label>
                            <input type="text" class="form-control" id="val-confirm-password" name="val-confirm-password" placeholder="Ticket category!">
                        </div> 
                        <div class="form-group">
                            <label for="val-confirm-password">Ticket Subject</label>
                            <input type="text" class="form-control" id="val-confirm-password" name="val-confirm-password" placeholder="Subject!">
                        </div> 

                        <div class="form-group">
                            <label for="val-confirm-password">Priority</label>
                            <input type="text" class="form-control" id="val-confirm-password" name="val-confirm-password" placeholder="..and confirm it!">
                        </div> 



                         <div class="row items-push">
                        <div class="col-lg-7 offset-lg-4">
                            <button type="button" class="btn btn-info">Add</button>
                        </div>
                    </div>

                    </div>

                   
                </div>
            </form>
        </div>     
  
        <script src="assets/js/oneui.core.min.js"></script>
        <script src="assets/js/oneui.app.min.js"></script>
    </body>
</html>

<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Welcome extends MX_Controller
{
    public function __construct()
    {
        parent::__construct();

     /* Uncomment these lines for form validation

        $this->load->library('form_validation');
        $this->form_validation->CI = &$this;
        
      */
    }

    public function index()
    {
        $this->load->view('welcome_message');
    }
}

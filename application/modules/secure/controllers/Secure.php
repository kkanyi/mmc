<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Secure extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index(){
        // check for login
        if ($this->ion_auth->logged_in()){
            redirect('', 'refresh');
        }else{
            $this->login();
        }
    }
    
    public function login(){
        // echo "process login";
        if ($this->ion_auth->logged_in()){
            redirect('/', 'refresh');
        }
        $page_data = array(
            'page_title' => 'Management',
        );

        // form validation 
        $config = array(
            array(
                'field' => 'username',
                'label' => 'username',
                'rules' => 'required'
            ),
            array(
                'field' => 'password',
                'label' => 'Password',
                'rules' => 'required',
                'errors' => array(
                    'required' => 'You must provide a %s.',
                ),
            )/*,
            'error_prefix' => '<div class="alert alert-danger" role="alert">Oh snap!',
            'error_suffix' => '</div>'*/
        );
        $this->form_validation->set_rules($config);
        if ($this->form_validation->run() == FALSE){
            // echo "here";
            // exit();
            $page_data = array();
                $page_data['messages']='';
            // $page_data['messages']= (form_error('username'))?'<div class="alert alert-danger" role="alert">'.validation_errors('username').'</div>':'';
            // $page_data['messages'] .= (form_error('password'))?'<div class="alert alert-danger" role="alert">'.validation_errors('password').'</div>':'';
            // $view_data['messages'].= $this->session->userdata('message');
            // $view_data['messages'].= '</div>';
            // $page_data['content'] = $this->load->view('login_form', $view_data, TRUE);
            $this->parser->parse('login_template', $page_data);
        }else{

            $remember = (bool)$this->input->post('remember');

            if ($this->ion_auth->login($this->input->post('username'), $this->input->post('password'), $remember)){
                //if the login is successful
                //redirect them back to the home page
                $this->session->set_flashdata('message', $this->ion_auth->messages());
                redirect('/', 'refresh');
            }else{
                // if the login was un-successful
                // redirect back to the login page
                $page_data['messages']= '<div class="alert alert-danger" role="alert">'.$this->ion_auth->errors()."</div>";
                // $page_data['messages'] = $this->load->view('login_form', $view_data, TRUE);
                $this->parser->parse('login_template', $page_data);
                // redirect('secure/login', 'refresh'); // use redirects instead of loading views for compatibility with MY_Controller libraries
            }
        }
    }

    public function logout(){
        $this->ion_auth->logout();
        $this->login();
    }
}

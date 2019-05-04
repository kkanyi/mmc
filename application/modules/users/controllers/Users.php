<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Users extends MX_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	function __construct()
    {
        parent::__construct();
    }
	public function index()
	{
		$view_data = array();
		$view_data['users'] = $this->ion_auth->users()->result(); // get all users
        // $this->load->model("Users_model");
		// $view_data['users'] = $this->users_model->get_users(); // get all users
		$this->page_data['content'] = $this->load->view('users_table',$view_data,TRUE);
		// $this->page_data['content_title'] = 'Welcome';
		$this->parser->parse('template/main', $this->page_data);
	}

	public function new()
	{
		// $this->load->helper(array('form', 'url'));

        // $this->load->library('form_validation');
		$config = array(
		        array(
		                'field' => 'username',
		                'label' => 'Username',
		                'rules' => 'trim|required|is_unique[users.username]'
		        ),
		        array(
		                'field' => 'first_name',
		                'label' => 'First name',
		                'rules' => 'trim|required',
		        ),
		        array(
		                'field' => 'last_name',
		                'label' => 'Last name',
		                'rules' => 'trim|required',
		        ),
		        array(
		                'field' => 'password',
		                'label' => 'Password',
		                'rules' => 'trim|required',
		        ),
		        array(
		                'field' => 'password2',
		                'label' => 'Password Confirmation',
		                'rules' => 'trim|required|matches[password]'
		        ),
		        array(
		                'field' => 'group',
		                'label' => 'User group',
		                'rules' => 'required'
		        ),
		        array(
		                'field' => 'email',
		                'label' => 'Email',
		                'rules' => 'trim|required|is_unique[users.email]|valid_email'
		        )
		);

		$this->form_validation->set_rules($config);

        if ($this->form_validation->run() == FALSE){
            // $this->load->view('myform');
			$view_data = array();
			// $view_data['users'] = $this->ion_auth->users()->result(); // get all users
			$this->page_data['content'] = $this->load->view('user_edit',$view_data,TRUE);
        }else{
                $this->load->view('formsuccess');
        }

		// $this->page_data['content_title'] = 'Welcome';
		$this->parser->parse('template/main', $this->page_data);
	}
}

<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Users extends MX_Controller {
	function __construct()
    {
        parent::__construct();
    }
	public function index()
	{
		$view_data = array();
		$view_data['users'] = $this->ion_auth->users()->result(); // get all users
		$this->page_data['content'] = $this->load->view('users_table',$view_data,TRUE);
		// $this->page_data['content_title'] = 'Welcome';
		$this->parser->parse('template/main', $this->page_data);
	}

	public function new()
	{
		$view_data = array();
		$view_data['users'] = $this->ion_auth->users()->result(); // get all users
		$this->page_data['content'] = $this->load->view('user_edit',$view_data,TRUE);
		// $this->page_data['content_title'] = 'Welcome';
		$this->parser->parse('template/main', $this->page_data);
	}
}

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
		$this->page_data['content'] = $this->load->view('users_table',$view_data,TRUE);
		// $this->page_data['content_title'] = 'Welcome';
		$this->parser->parse('template/main', $this->page_data);
	}
}

<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Tickets extends MX_Controller 
{
	public function __construct()
	{
		parent::__construct();
        $this->page_data['content_title'] = 'Tickets';
        // $this->load->model('model_tickets');

	
	}

	public function index()
	{     
		$this->page_data['sub_item'] = 'All Tickets';
		$this->page_data['content'] = $this->load->view('index', '', TRUE);
		$this->parser->parse('template/main', $this->page_data);	
	}

   
	public function create()
	{   	
        $this->page_data['content'] = $this->load->view('create', '', TRUE);
		$this->parser->parse('template/main', $this->page_data);	      
	}

	public function update($ticket_id)
	{      
      
        $this->page_data['content'] = $this->load->view('update', '', TRUE);
		$this->parser->parse('template/main', $this->page_data);	  
	}

	public function remove()
	{
        if(!in_array('deleteTicket', $this->permission)) {
            redirect('main', 'refresh');
        }
        
        $ticket_id = $this->input->post('ticket_id');

        $response = array();
        if($ticket_id) {
            $delete = $this->model_tickets->remove($ticket_id);
            if($delete == true) {
                $response['success'] = true;
                $response['messages'] = "Successfully removed"; 
            }
            else {
                $response['success'] = false;
                $response['messages'] = "Error in the database while removing the product information";
            }
        }
        else {
            $response['success'] = false;
            $response['messages'] = "Refersh the page again!!";
        }

        echo json_encode($response);
	}

}
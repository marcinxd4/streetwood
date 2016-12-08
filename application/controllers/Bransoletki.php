<?php

class Bransoletki extends CI_Controller
{
    private $kategorie='';

    function __construct()
    {
        parent::__construct();
        $this->load->model('Model_m');
        $this->kategorie['drzewko']=$this->Model_m->pobierz_drzewko_kategorii();
    }
    

    public function sznureczek()
    {
        $dane['sznureczki']=$this->Model_m->pobierz_sznureczki();
        $this->load->view('header');
        $this->load->view('przedmioty/category', $this->kategorie);
        $this->load->view('przedmioty/sznureczek', $dane);
        $this->load->view('footer');
    }
}
<?php
class ControllerExtensionModuleWdPopupBanner extends Controller {
	public function index($setting) {
		static $module = 0;
    
		$data['heading_title'] = $setting['name'];
		
		$this->load->model('tool/image');

		$this->document->addStyle('https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css');
		$this->document->addScript('https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js');
    	

    	$data['time'] = $setting['time'] * 1000;
		$data['text1'] = $setting['text1'];
		$data['text2'] = $setting['text2'];
		$data['image']  = '/image/'.$setting['image'];

		$data['module'] = $module++;


		if(!isset($this->session->data['wd_popupbanner_closeaction'])){
			return $this->load->view('extension/module/wd_popupbanner', $data);
		}
	}
	public function close(){
		if ($this->request->post['closeaction'] == true){
			$this->session->data['wd_popupbanner_closeaction'] = true;
		}
	}
}
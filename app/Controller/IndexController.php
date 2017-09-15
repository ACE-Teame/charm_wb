<?php 

namespace app\Controller;

use app\core\Home_Controller;
/**
 * 默认控制器
 */
class IndexController extends Home_Controller
{
	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		view('home/index');
	}

    private function _ckeckData($data)
    {
        if(empty($data['username'])) {
            ajaxReturn(202, '请输入姓名');
        }
        if(empty($data['phone'])) {
            ajaxReturn(202, '请输入手机号码');
        }
        if(empty($data['cardid'])) {
            ajaxReturn(202, '请输入身份证号码');
        }
        if(empty($data['address'])) {
            ajaxReturn(202, '请输入地址');
        }
        if(empty($data['bank'])) {
            ajaxReturn(202, '请选择申请银行');
        }

        if(empty($data['quato'])) {
            ajaxReturn(202, '请选择申请额度');
        }
    }

    public function submitApplication()
    {
        $postData = post();
        $this->_ckeckData($postData);

        $postData['time'] = time();
        $postData['ip']   = getIp();

        parent::$model->insert('order', $postData);
        if(parent::$model->id()) {
            ajaxReturn(200);
        }else {
            ajaxReturn(202, '申请失败');
        }
    }
}
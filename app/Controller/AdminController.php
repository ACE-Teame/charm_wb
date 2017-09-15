<?php 
namespace app\Controller;

use app\core\Wb_Controller;
use system\core\Config;
use system\core\Page;

/**
 * 后台控制器
 */
class AdminController extends Wb_Controller
{
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * 后台首页
     */
    public function index()
    {
        view('admin/index');
    }

    /**
     * 根据银行ID 取出银行名称
     * @param  int $num 银行ID
     */
    public function getBank($num)
    {
        switch ($num) {
            case 1:
                $bank = '中国建设银行';
                break;
            case 2:
                $bank = '中国农业银行';
                break;
            case 3:
                $bank = '中国银行';
                break;
            case 4:
                $bank = '中国工商银行';
                break;
            case 5:
                $bank = '中国交通银行';
                break;
                         
            default:
                $bank = '';
                break;
        }
        return $bank;
    }

    /**
     * 数据整理
     * @param  array &$data 待整理数据
     */
    public function _arrangeData( &$data )
    {
        foreach ($data['orderData'] as $key => $val) {
            $data['orderData'][$key]['bank'] = $this->getBank($val['bank']);
            $data['orderData'][$key]['quato'] = $val['quato'] . '万';
        }
    }

    /**
     * 拼接查询条件
     * @return array
     */
    public function _getOrderSearch()
    {
        if(get('username')) {
            $where['username[~]'] = get('username');
        }
        if(get('bank')) {
            $where['bank'] = get('bank');            
        }
        if(get('quato')) {
            $where['quato'] = get('quato');
        }
        if(get('cardid')) {
            $where['cardid[~]'] = get('cardid');
        }
        return $where;
    }

    /**
     * 申请列表
     */
    public function orderList()
    {
        $where = $this->_getOrderSearch();
        if(isset($_GET['page'])) {
            $now_page = intval($_GET['page']) ? intval($_GET['page']) : 1;
        }else {
            $now_page = 1;
        }
        // 取得每页条数
        $pageNum           = Config::get('PAGE_NUM', 'page');
        // 计算偏移量
        $offset            = $pageNum * ($now_page - 1);

        $data['count']     = parent::$model->count('order', $where);
        $where['LIMIT']     = [$offset, $pageNum];

        $data['orderData']  = parent::$model->select('order', '*', $where);
        // 分页处理
        $objPage           = new page($data['count'], $pageNum, $now_page, '?page={page}');
        $data['pageNum']   = $pageNum;
        $data['pageList']  = $objPage->myde_write();
        $data['bankData']  = parent::$model->select('common', ['key', 'val'], ['type' => 'bank']);
        $data['quatoData'] = parent::$model->select('common', ['key', 'val'], ['type' => 'quato']);
        // 整理数据
        $this->_arrangeData($data);

        view('admin/order', $data);
    }

    /**
     * 删除申请
     */
    public function deleteOrderById()
    {
        $id = intval(get('id'));
        if($id) {
            $flag = parent::$model->delete('order', ['id' => $id]);
            if($flag) redirect('admin/orderList');
        }
    }
}
<?php 
namespace app\core;

use system\core\Controller;
use Detection\MobileDetect;
/**
 * 公共控制器
 */
class Home_Controller extends Controller
{

	public static $model;
	public function __construct() 
	{
		self::$model =& model();
	}
}
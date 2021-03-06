<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>客户办卡须知</title>
    <?php echo css('main.css') ?>
    <!-- <link rel="stylesheet" type="text/css" href="css/main.css"> -->
</head>
<body class="home">
    <div class="container">
        <div class="img" style="width: 50%; padding-bottom: 10px;"><img src="<?php echo base_url('resource/images/logo.jpg') ?>" alt=""></div>
        <div class="img"><img src="<?php echo base_url('resource/images/card.png') ?>" alt=""></div>
        <div class="text">
            <p><b>客户办卡须知：</b></p>
            <p>尊敬的用户在办理大额信用卡的同时会产生办卡额度 2％的工本费属正规费用，请用户放心办卡！</p>
        </div>
        <div class="form">
            <div class="title">在线申请</div>
            <form id="form_application">
                <div class="entry">
                    <input type="text" id="username" name="username" placeholder="收件人姓名">
                </div>
                <div class="entry">
                    <input type="text" id="phone" name="phone" placeholder="常用手机号">
                </div>
                <div class="entry">
                    <input type="text" id="cardid" name="cardid" placeholder="18位身份证号码">
                </div>
                <div class="entry">
                    <input type="text" id="address" name="address" placeholder="收件地址">
                </div>
                <div class="entry">
                    <select name="bank" id="">
                        <?php foreach ($bankData as $key => $bank): ?>
                            <option value="<?php echo $bank['key'] ?>"><?php echo $bank['val'] ?></option>
                        <?php endforeach ?>
                    </select>
                </div>
                <div class="entry">
                    <select name="quato" id="">
                         <?php foreach ($quatoData as $key => $quato): ?>
                            <option value="<?php echo $quato['key'] ?>"><?php echo $quato['val'] ?></option>
                        <?php endforeach ?>
                    </select>
                </div>
                <input type="hidden" name="c" value="<?php echo $c ?>">
            </form>
            <a class="btn" href="javascript:;" id="submit_application">点击申请</a>
        </div>
        <div class="text">
            <div class="title">温馨提示</div>
            <p>1、申请主年龄要求18-60周岁；</p>
            <p>2、目前仅支持二代中国居民身份证进行网络申请。</p>
            <p>3、 留言不会产生任何费用，10秒填写信息，1-3天100%办理成功。</p>
        </div>
        <footer>
            <p>版权所有：信用卡管理中心</p>
            <p>全国各地24小时均可办理 Copyright inc All Rights Reserved</p>
        </footer>
    </div>
    <?php echo js('jquery.min.js') ?>
    <script>
        $(document).ready(function() {
            $('#submit_application').click(function() {
                $.ajax({
                    url: '<?php echo base_url('index/submitApplication') ?>',
                    type: 'POST',
                    dataType: 'json',
                    data: $('#form_application').serialize(),
                    success:function(data) {
                        if(data.status == 200) {
                            alert('申请成功，请等待审核...');
                            location.reload();
                        }else {
                            alert(data.msg);
                        }
                    }
                })
            });
        });

    </script>
</body>
</html>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Home Page</title>
</head>

<body>
<?php
    function checksig($filename, $timestamp, $sig, $secretkey)
    {
        $realsig = substr(md5($filename.$timestamp.$secretkey),0,16);
        if ($sig == $realsig)
        {
            $filename = './'.str_replace('/','',$filename);
            readfile($filename);
            die(0);
        }
        echo "Invalid Signature!";
    }

$secretkey = "XXXXXXXXXXXXXXXXXXXXXXXXX";//This is not real $secretkey, ignore it !!!
echo "<html>
    <title>Web100</title>
    <body>
    <br>Dare to read flag.php???<br>
    <a href='http://readfile.svattt.org:8888/web100.php?filename=test.php&timestamp=13371337&sig=d7a52c3ed325ef19'>Click me</a><br>
    </body>";
if (isset($_GET['filename'])&&isset($_GET['sig'])&&isset($_GET['timestamp']))
    {
        checksig($_GET['filename'],$_GET['timestamp'],$_GET['sig'], $secretkey);
        die(0);
    }
echo "Something's missing!!";
echo "</html>";
?>

</body>
</html>
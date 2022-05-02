<?php 
require_once('src/connect.php');

$db = new Database('localhost', 'ics_test','root','');

if($_SERVER['REQUEST_METHOD'] == 'GET'){
    echo json_encode($db->query('SELECT * FROM products'));

}elseif($_SERVER['REQUEST_METHOD']=='POST'){
    echo 'This is post';

}else{
    http_response_code(405);
}
?>
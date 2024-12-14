<?php
require_once('header.php');

if(isset($_GET['id'])) {
    $id = $_GET['id'];
    $statement = $pdo->prepare("DELETE FROM tbl_shipping_cost WHERE shipping_cost_id=?");
    $statement->execute(array($id));

    $success_message = 'Shipping cost is deleted successfully.';
    header('location: shipping-cost.php');
    exit;
}

require_once('footer.php');
?>
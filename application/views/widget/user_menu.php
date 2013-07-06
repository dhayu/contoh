
<?php if ($this->session->userdata('id')): ?>
    <a href="<?php echo base_url() ?>index.php/orders/history">Order History</a> | 
    <a href="<?php echo base_url() ?>index.php/users/profile">Profile</a> | 
    <a href="<?php echo base_url() ?>index.php/users/logout">Logout</a> 
<?php else: ?>

    <a href="<?php echo base_url() ?>index.php/users/register">Register</a>  |
    <a href="<?php echo base_url() ?>index.php/users/login">Login</a> 

<?php endif; ?>


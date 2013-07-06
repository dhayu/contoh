<div id="header" class="clearfix">
    <h1><a href="<?php echo base_url(); ?>"><span>TokoKita</span></a></h1>
    <div class="info">
        <h3>TokoKita</h3>

        <h6>Admin Panel</h6>
    </div>
    <div class="menu">
            <ul>
				<li><a href="<?php echo site_url('/');?>" target="_blank">View Site</a></li>
                <li><a href="<?php echo site_url('admin/users/profile');?>">Profile (<?php echo $this->session->userdata('full_name')?>)</a></li>
                <li><a href="<?php echo site_url('users/logout') ?>">Logout</a></li>
            </ul>
        </div> 
</div>         <!--end #header-->

<div id="breadcrumbs" class="clearfix">
    <?php echo set_breadcrumb() ?>
</div>        <!--end #breadcrumbs-->

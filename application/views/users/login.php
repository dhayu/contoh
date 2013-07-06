<div class="span12">
    <?php echo set_breadcrumb('<span class="divider">/</span>') ?>


    <div class="row">
        <div class="span9">
            <h1>Account login</h1>
        </div>
    </div>

    <hr />

    <div class="row">

        <div class="span5 well">
            <h2>New Customers</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
</p><br />
            <a href="<?php echo site_url('users/register'); ?>" class="btn btn-primary pull-right">Create an account</a>
        </div>	 		

        <div class="span5 well pull-right">
            <h2>Registered Customers</h2>
            <p>If you have an account with us, please log in.</p>

            <?php echo form_open('users/login'); ?>
            <fieldset>
                <div class="control-group">
                    <label for="focusedInput" class="control-label">Email</label>
                    <div class="controls">
                        <input type="text" name="email" value="<?php echo set_value('email') ?>" placeholder="Enter your email" id="username" class="input-xlarge focused">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Password</label>
                    <div class="controls">
                        <input type="password" name="password" placeholder="Enter your password" id="password" class="input-xlarge">
                    </div>
                </div>

                <button class="btn btn-primary pull-right" type="submit">Login</button>
                <?php echo anchor('users/register', 'Register') ?> | 
                <?php echo anchor('users/forgot_password', ' Forgot Password ?'); ?>
            </fieldset>
            <?php echo form_close(); ?>

        </div>

    </div>
</div>
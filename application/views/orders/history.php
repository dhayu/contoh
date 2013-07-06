<div class="span12">
    <?php echo set_breadcrumb('<span class="divider">/</span>') ?>
    <div class="page-header">
        <h1> Order History</h1>
    </div>
    <table class="table table-bordered table-striped">
        <thead>
            <tr>
                <th>Code</th>
                <th>Date</th>
                <th>Total</th>
                <th>Due Date</th>
                <th>Method</th>
                <th>Status</th>
                <th>Action</th>

            </tr>
        </thead>
        <?php if (!empty($orders)): ?>
            <?php $i = 1; ?>

            <?php foreach ($orders as $order): ?>



                <tr>
                    <td><?php echo $order['code']; ?></td>
                    <td><?php echo $this->general->humanDate2($order['order_date']) ?></td>
                    <td><strong><?php echo $this->cart->format_number($order['total']); ?></strong></td>
                    <td><?php echo $this->general->humanDate2($order['payment_deadline']) ?></td>
                    <td><?php echo $paymentMethods[$order['payment_method']] ?></td>
                    <td><?php echo $status[$order['status']] ?></td>
                    <td>
                        <?php if ($order['status'] == 0): ?>
                            <?php echo anchor('confirmations/add/' . $order['code'], 'Confirm'); ?>
                            |
                        <?php endif; ?>

                        <?php echo anchor('orders/detail/' . $order['code'], 'Detail'); ?>


                    </td>

                </tr>

                <?php $i++; ?>

            <?php endforeach; ?>

        <?php endif; ?>

    </table>


</div>	


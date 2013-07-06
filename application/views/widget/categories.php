<?php $categories = $this->general->getCategories() ?>
<div class="span3">
    <div class="box">
        <h4>Categories</h4>
        <ul class="nav">
            <?php if ($categories): ?>
                <?php foreach ($categories as $category): ?>
                    <li><?php echo anchor('products/category/' . $category['permalink'], $category['name']); ?></li>
                <?php endforeach; ?>
            <?php endif; ?>

        </ul>
    </div>
    <div class="box">
        <h4>Statistic</h4>

    </div>
</div>

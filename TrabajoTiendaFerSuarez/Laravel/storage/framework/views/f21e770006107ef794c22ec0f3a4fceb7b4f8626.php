<footer class="app-footer">
    <div class="site-footer-right">
        <?php if(rand(1,100) == 100): ?>
            <i class="voyager-rum-1"></i> <?php echo e(__('voyager::theme.footer_copyright2')); ?>

        <?php else: ?>
            <?php echo __('voyager::theme.footer_copyright'); ?> <a href="http://thecontrolgroup.com" target="_blank">The Control Group</a>
        <?php endif; ?>
        <?php $version = Voyager::getVersion(); ?>
        <?php if(!empty($version)): ?>
            - <?php echo e($version); ?>

        <?php endif; ?>
    </div>
</footer>
<?php /**PATH C:\Users\gorka\Desktop\clase\2DAW\fase4\mikel\UniServerZ\www\TrabajoTiendaPlotters\Laravel\vendor\tcg\voyager\src/../resources/views/partials/app-footer.blade.php ENDPATH**/ ?>
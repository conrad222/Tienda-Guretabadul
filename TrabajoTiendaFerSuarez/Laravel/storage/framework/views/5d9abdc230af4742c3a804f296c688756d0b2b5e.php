<?php if($isModelTranslatable): ?>
    <input type="hidden"
           data-i18n="true"
           name="<?php echo e($_field_name); ?>_i18n"
           id="<?php echo e($_field_name); ?>_i18n"
           value="<?php echo e($_field_trans); ?>">
<?php endif; ?>
<?php /**PATH C:\Users\Iker\Desktop\UniServerZ\www\Tienda-Guretabadul\TrabajoTiendaPlotters-main\Laravel\vendor\tcg\voyager\src/../resources/views/multilingual/input-hidden.blade.php ENDPATH**/ ?>
<textarea <?php if($row->required == 1): ?> required <?php endif; ?> class="form-control" name="<?php echo e($row->field); ?>" rows="<?php echo e($options->display->rows ?? 5); ?>"><?php echo e(old($row->field, $dataTypeContent->{$row->field} ?? $options->default ?? '')); ?></textarea>
<?php /**PATH D:\UniServerZ\UniServerZ2\www\GureTabadul\Laravel\vendor\tcg\voyager\src/../resources/views/formfields/text_area.blade.php ENDPATH**/ ?>
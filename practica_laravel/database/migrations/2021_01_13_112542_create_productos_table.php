<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('productos', function (Blueprint $table) {
            $table->id()
                  ->nullOnDelete();
            $table->timestamps();
            $table->string('nombreP');
            $table->double('precio');
            $table->text('descripcion');
            $table->string('imagen')->default('default.png');
            $table->foreignId('idComercio')
                  ->nullable()
                  ->constrained('comercios')
                  ->cascadeOnUpdate()
                  ->cascadeOnDelete()
                  ->nullOnDelete();

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('productos');
    }
}

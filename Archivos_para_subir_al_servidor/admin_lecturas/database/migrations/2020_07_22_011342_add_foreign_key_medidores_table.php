<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddForeignKeyMedidoresTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        Schema::table('medidors', function (Blueprint $table){
            $table->engine = 'InnoDB';
            $table->foreign('persona_id') 
                  ->references('id')->on('personas');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
        Schema::table('medidors', function (Blueprint $table){
            $table->dropForeign('medidors_persona_id_foreign'); 
        });
    }
}

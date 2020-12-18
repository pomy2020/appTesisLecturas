<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddForeignKeyLecturasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        Schema::table('lecturas', function (Blueprint $table){
            $table->engine = 'InnoDB';
            $table->foreign('medidor_id') 
                  ->references('id')->on('medidors');
            $table->foreign('user_id') 
                  ->references('id')->on('users');
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
        Schema::table('lecturas', function (Blueprint $table){
            $table->dropForeign('lecturas_medidor_id_foreign'); 
            $table->dropForeign('lecturas_user_id_foreign');
        });
    }
}

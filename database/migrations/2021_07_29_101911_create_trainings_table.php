<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTrainingsTable extends Migration {
  /**
   * Run the migrations.
   *
   * @return void
   */
  public function up() {
    Schema::create('trainings', function (Blueprint $table) {
      $table->id();
      $table->bigInteger('user_id');
      $table->bigInteger('trainer_id');
      $table->string('desc', 500);
      $table->integer('duration');
      $table->dateTime('date');
      $table->timestamps();
    });
  }

  /**
   * Reverse the migrations.
   *
   * @return void
   */
  public function down() {
    Schema::dropIfExists('trainings');
  }
}

<?php

namespace Database\Seeders;

use App\Models\Trainer;
use Illuminate\Database\Seeder;

class TrainerSeeder extends Seeder {
  /**
   * Run the database seeds.
   *
   * @return void
   */
  public function run() {
    Trainer::factory()->count(1)->hasTrainings(2)->create();
  }
}

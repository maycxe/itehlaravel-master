<?php

namespace Database\Factories;

use App\Models\Trainer;
use App\Models\Training;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

class TrainingFactory extends Factory {
  /**
   * The name of the factory's corresponding model.
   *
   * @var string
   */
  protected $model = Training::class;

  /**
   * Define the model's default state.
   *
   * @return array
   */
  public function definition() {
    $user = User::factory()->create();
    // $trainer = Trainer::factory()->create();

    return [
      'date' => date('Ymd'),
      'desc' => $this->faker->text(),
      'duration' => rand(60, 120),
      'user_id' => $user->id,
      // 'trainer_id' => $trainer->id,
    ];
  }
}

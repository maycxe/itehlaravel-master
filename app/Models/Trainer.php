<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Trainer extends Model {
  use HasFactory;

  protected $fillable = ['firstname', 'lastname', 'email', 'age'];

  public function trainings(){
    return $this->hasMany(Training::class);
  }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Training extends Model {
  use HasFactory;

  protected $fillable = ['user_id', 'trainer"id', 'date', 'desc', 'time'];

  public function user() {
    return $this->belongsTo(User::class);
  }

  public function trainer() {
    return $this->belongsTo(Trainer::class);
  }
}

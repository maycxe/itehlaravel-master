<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Trainer;

class TrainerController extends Controller {
  /**
   * Display a listing of the resource.
   *
   * @return \Illuminate\Http\Response
   */
  public function index() {
    return response([
      'data' => Trainer::all(),
      'message' => 'Success',
      'statusCode' => 200,
    ], 200);
  }

  /**
   * Store a newly created resource in storage.
   *
   * @param  \Illuminate\Http\Request  $request
   * @return \Illuminate\Http\Response
   */
  public function store(Request $request) {
    $trainer = new Trainer;

    $trainer->firstname = $request->firstname;
    $trainer->lastname = $request->lastname;
    $trainer->email = $request->email;
    $trainer->age = $request->age;

    $trainer->save();

    return response([
      'data' => $trainer,
      'message' => 'Success',
      'statusCode' => 201,
    ], 201);
  }

  /**
   * Display the specified resource.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function show($id) {
    return response([
      'data' => Trainer::find($id),
      'message' => 'Success',
      'statusCode' => 200,
    ], 200);
  }

  /**
   * Update the specified resource in storage.
   *
   * @param  \Illuminate\Http\Request  $request
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function update(Request $request, $id) {
    $trainer = Trainer::find($id);

    $trainer->firstname = $request->firstname;
    $trainer->lastname = $request->lastname;
    $trainer->email = $request->email;
    $trainer->age = $request->age;

    $trainer->save();

    return response([
      'data' => $trainer,
      'message' => 'Success',
      'statusCode' => 201,
    ], 201);
  }

  /**
   * Remove the specified resource from storage.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function destroy($id) {
    $trainer = Trainer::find($id);

    $trainer->delete();

    return response([
      'data' => $trainer,
      'message' => 'Success',
      'statusCode' => 200,
    ], 200);
  }
}

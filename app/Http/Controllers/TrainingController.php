<?php

namespace App\Http\Controllers;

use App\Models\Training;
use Illuminate\Http\Request;

class TrainingController extends Controller {
  /**
   * Display a listing of the resource.
   *
   * @return \Illuminate\Http\Response
   */
  public function index() {
    return response([
      'data' => Training::all(),
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
    $training = new Training;

    $training->user_id = $request->user_id;
    $training->trainer_id = $request->trainer_id;
    $training->date = $request->date;
    $training->desc = $request->desc;
    $training->duration = $request->duration;

    $training->save();

    return response([
      'data' => $training,
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
      'data' => Training::find($id),
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
    $training = Training::find($id);

    $training->user_id = $request->user_id;
    $training->trainer_id = $request->trainer_id;
    $training->date = $request->date;
    $training->desc = $request->desc;
    $training->duration = $request->duration;

    $training->save();

    return response([
      'data' => $training,
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
    $training = Training::find($id);

    $training->delete();

    return response([
      'data' => $training,
      'message' => 'Success',
      'statusCode' => 200,
    ], 200);
  }
}

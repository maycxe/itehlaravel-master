<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller {
  /**
   * Display a listing of the resource.
   *
   * @return \Illuminate\Http\Response
   */
  public function index() {
    return response([
      'data' => User::all(),
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
    $user = new User;

    $user->name = $request->name;
    $user->email = $request->email;
    $user->password = "123456";

    $user->save();

    return response([
      'data' => $user,
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
      'data' => User::find($id),
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
    $user = User::find($id);

    $user->name = $request->name;
    $user->email = $request->email;

    $user->save();

    return response([
      'data' => $user,
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
    $user = User::find($id);

    $user->delete();

    return response([
      'data' => $user,
      'message' => 'Success',
      'statusCode' => 200,
    ], 200);
  }
}

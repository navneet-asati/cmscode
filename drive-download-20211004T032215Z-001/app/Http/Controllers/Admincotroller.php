<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use App\Models\admin;
use Session;
//use Auth;
use Illuminate\Support\Facades\Auth;

class Admincotroller extends Controller
{
  public function index(){      
  	return view('admin.login');
  }
  public function makeLogin(Request $request){
    $validator = Validator::make($request->all(), [
        'password' => 'required',
        'username'=>'required',            
    ]);
    if ($validator->fails()) {
        return  back()
                ->withErrors($validator)
                ->withInput();
    }
    $data = array(
                  'username' => $request->username,
                  'password' => $request->password
              );
    if (Auth::guard('admin')->attempt($data)) {
        return redirect('dashbord');
    }else{
      return back()->withErrors(['message'=>'invalid email or password']);
    }
  }
  public function dashbord(){      
    return view('admin.dashbord');
  }
}

<?php

namespace App\Http\Controllers;

use App\File;
use Storage;
use Request;
use DB;

class HomeController extends Controller
{
    public function readFile(){
    	$level = 0; $count = 1;
    	$arr = [];
    	$path = Storage::disk('public')->path('recursive.txt');
    	$fh = fopen($path,'r');
    	$arr[$level][] = 0;
		while ($line = fgets($fh)) {
			$level = strspn($line, "\t")+1;
			$arr[$level][] = $count; 
			File::create([
				'name' => trim($line),
				'parent_id' => end($arr[$level-1])
			]);
			$count++;
		}
		fclose($fh);
    }

    public function searchWord(){
    	$input = Request::except('_token');
    	$filePaths = [];
    	if(isset($input['searchword'])){
    		$files = File::where('name', 'like', '%'. $input['searchword'] .'%')->get();
    		foreach ($files as $file) {
    			$output = DB::select(DB::raw("SELECT T2.id,T2.name,T2.parent_id FROM ( SELECT @r AS _id, (SELECT @r := parent_id FROM files WHERE id = _id) AS parent_id, @l := @l + 1 AS lvl FROM (SELECT @r := :fileid, @l := 0) vars, files m WHERE @r <> 0) T1 JOIN files T2 ON T1._id = T2.id ORDER BY T1.lvl DESC"),
                       array('fileid' => $file->id));
    			$path = '';
    			foreach ($output as $key => $value) {
    				if($key !== count( $output ) -1){
    					$path .= $value->name."\\";
    				}else{
    					$path .= $value->name;
    				}
    			}
    			$filePaths[] = $path;
    		}
    	}
    	return view('welcome', compact('filePaths'));
    }
}
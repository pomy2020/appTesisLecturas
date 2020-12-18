<?php

namespace App\Http\Controllers;

use App\provincia;
use Illuminate\Http\Request;

class ProvinciaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        //
        $nombre = $request->get('buscar');

        $provincias = Provincia::where('nombre','like',"$nombre%")->paginate(6);
        //$provincias = Provincia::paginate();
        return view('provincia.index', compact('provincias'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('provincia.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $validator = $request->validate([
        'nombre'=>'required|max:120',
        'poblacion'=>'required|max:10',
        'parroquias'=>'required|max:11'
        ]);
        $provinciaNueva = new Provincia;
        $provinciaNueva->nombre = $request->nombre;
        $provinciaNueva->poblacion = $request->poblacion;
        $provinciaNueva->parroquias = $request->parroquias;
        $provinciaNueva->save();
        return back()->with('info','Datos de la provincia agregados correctamente'); 
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\provincia  $provincia
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $provincia = Provincia::find($id);

        return view('provincia.show', compact('provincia'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\provincia  $provincia
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $provincia = Provincia::find($id);

        return view('provincia.edit', compact('provincia'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\provincia  $provincia
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $validator = $request->validate([
        'nombre'=>'required|max:100',
        'poblacion'=>'required',
        'parroquias'=>'required'
        ]);

        $provinciaUpdate = Provincia::findOrFail($id);
        $provinciaUpdate->nombre = $request->nombre;
        $provinciaUpdate->poblacion = $request->poblacion;
        $provinciaUpdate->parroquias = $request->parroquias;
        $provinciaUpdate->save();
        return back()->with('info','Datos de la provincia actualizados Correctamente');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\provincia  $provincia
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $provincia = Provincia::find($id)->delete();

        return back()->with('info', 'Provincia Eliminada correctamente');
    }
}

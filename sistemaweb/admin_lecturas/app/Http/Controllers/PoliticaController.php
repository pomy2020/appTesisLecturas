<?php

namespace App\Http\Controllers;
use App\Politica;

use Illuminate\Http\Request;

class PoliticaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $politicas = Politica::paginate();

        return view('politica.index', compact('politicas'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('politica.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = $request->validate([
        'cantidadConsumo'=>'required|max:120',
        'valorConsumo'=>'required|max:10',
        'valorExeso'=>'required|max:11'
        ]);
        $politicaNueva = new Politica;
        $politicaNueva->cantidadConsumo = $request->cantidadConsumo;
        $politicaNueva->valorConsumo = $request->valorConsumo;
        $politicaNueva->valorExeso = $request->valorExeso;
        $politicaNueva->save();
        return back()->with('info','Datos de la politica agregados correctamente'); 
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\politica  $politica
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $politicas = Politica::find($id);

        return view('politica.show', compact('politicas'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\politica  $politica
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
         $politicas = Politica::find($id);

        return view('politica.edit', compact('politicas'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\politica  $politica
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
         $validator = $request->validate([
        'cantidadConsumo'=>'required|max:120',
        'valorConsumo'=>'required|max:10',
        'valorExeso'=>'required|max:11'
        ]);

        $politicaUpdate = Politica::findOrFail($id);
         $politicaUpdate->cantidadConsumo = $request->cantidadConsumo;
        $politicaUpdate->valorConsumo = $request->valorConsumo;
        $politicaUpdate->valorExeso = $request->valorExeso;
        $politicaUpdate->save();
        return back()->with('info','Datos de la politica actualizada correctamente');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\politica  $politica
     * @return \Illuminate\Http\Response
     */
    public function destroy(politica $politica)
    {
        $politicas = Politica::find($id)->delete();

        return back()->with('info', 'Politica Eliminada correctamente');
    }
}

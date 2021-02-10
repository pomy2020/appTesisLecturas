<?php

namespace App\Http\Controllers;

use App\Lectura;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade as PDF;

class LecturaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    //está funsión lo que hace es mostrarme en el index la manera de listar las lecturas, tanto por mes y año y todas.
    public function index(Request $request)
    {
        $todos=$request['todos'];
        $mes=$request['mes'];
        $anio=$request['anio'];
        $sector=$request['sector'];
        if($todos==false)
        {
             
        $lecturas = Lectura::whereYear('fecha', '=', $anio)
        ->whereMonth('fecha', '=', $mes)
            ->Join('medidors', 'medidors.id', '=', 'lecturas.medidor_id')
            ->Join('personas', 'personas.id', '=', 'medidors.persona_id')
            ->Join('users', 'users.id', '=', 'lecturas.user_id')
            ->Where('medidors.sector', '=',$sector)
            ->select('lecturas.*' ,'personas.nombre','personas.apellido','medidors.sector','medidors.codigo','users.name')
            ->paginate();
        }
        else
        {
            $lecturas = Lectura::Join('medidors', 'medidors.id', '=', 'lecturas.medidor_id')
            ->Join('personas', 'personas.id', '=', 'medidors.persona_id')
            ->Join('users', 'users.id', '=', 'lecturas.user_id')
            ->select('lecturas.*' ,'personas.nombre','personas.apellido','medidors.sector','medidors.codigo','users.name')
            ->paginate();
        }
        return view('lecturas.index', compact('lecturas','mes','anio','sector','todos'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
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
        //
      
        //return $request;
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Lectura  $lectura
     * @return \Illuminate\Http\Response
     */
    //está lo que hace es mostrarme una lectura del listado
    public function show($id)
    {
        //
        $lecturas = Lectura::
            Join('medidors', 'medidors.id', '=', 'lecturas.medidor_id')
            ->Join('personas', 'personas.id', '=', 'medidors.persona_id')
            ->select('lecturas.*' ,'personas.nombre','personas.apellido','medidors.sector','medidors.codigo')
            ->where('lecturas.id',"=",$id)
            ->get();
        $lectura=$lecturas[0];
        return view('lecturas.show', compact('lectura'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Lectura  $lectura
     * @return \Illuminate\Http\Response
     */
    public function edit(Lectura $lectura)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Lectura  $lectura
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Lectura $lectura)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Lectura  $lectura
     * @return \Illuminate\Http\Response
     */
    public function destroy(Lectura $lectura)
    {
        //
    }
    //está función me permite descargarme las lecturas en formato PDF
    public function pdf($mes=0,$anio=0,$sector='',$todos=false)
    {        
         if($todos==false)
        {
        $lecturas = Lectura::whereYear('fecha', '=', $anio)
        ->whereMonth('fecha', '=', $mes)
            ->Join('medidors', 'medidors.id', '=', 'lecturas.medidor_id')
            ->Join('personas', 'personas.id', '=', 'medidors.persona_id')
            ->Join('users', 'users.id', '=', 'lecturas.user_id')
            ->Where('medidors.sector', '=',$sector)
            ->select('lecturas.*' ,'personas.nombre','personas.apellido','medidors.sector','medidors.codigo','users.name')
            ->get();
        }
        else
        {
            $lecturas = Lectura::Join('medidors', 'medidors.id', '=', 'lecturas.medidor_id')
            ->Join('personas', 'personas.id', '=', 'medidors.persona_id')
            ->Join('users', 'users.id', '=', 'lecturas.user_id')
            ->select('lecturas.*' ,'personas.nombre','personas.apellido','medidors.sector','medidors.codigo','users.name')
            ->get();
        }
        $pdf = PDF::loadView('lecturas.pdf.lecturas',compact('lecturas'));

        return $pdf->download('listado.pdf');
    }
}

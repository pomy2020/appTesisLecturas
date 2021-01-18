<?php

use Illuminate\Database\Seeder;
use App\Provincia;

class ProvinciaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        Provincia::create([
            'Nombre'        => 'Azuay',
            'Poblacion'   	=> '4000000',
            'parroquias'		=> '50',
            
        ]);
        Provincia::create([
            'Nombre'        => 'Cañar',
            'Poblacion'   	=> '2000000',
            'parroquias'		=> '40',
            
        ]);
        Provincia::create([
            'Nombre'        => 'Los Rios',
            'Poblacion'   	=> '1500000',
            'parroquias'		=> '30',
            
        ]);
        Provincia::create([
            'Nombre'        => 'Guayas',
            'Poblacion'   	=> '6000000',
            'parroquias'		=> '90',
            
        ]);
        Provincia::create([
            'Nombre'        => 'El oro',
            'Poblacion'   	=> '1000000',
            'parroquias'		=> '60',
            
        ]);
        Provincia::create([
            'Nombre'        => 'Manabi',
            'Poblacion'   	=> '5000000',
            'parroquias'		=> '70',
            
        ]);
        Provincia::create([
            'Nombre'        => 'Esmeraldas',
            'Poblacion'   	=> '4000000',
            'parroquias'		=> '45',
            
        ]);
    }
}

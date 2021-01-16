<?php

use Illuminate\Database\Seeder;
use App\Medidor;

class MedidorTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        Medidor::create([
            'codigo'        => 'MED1',
            'numero'        => '2000-036457',
            'marca'   	=> 'LAsi',
            'modelo'		=> 'abc',
            'sector'		=> 'Portete',
            'imagen'		=> 'sinimg.jpg',
            'persona_id'		=> '1',
        ]);
        Medidor::create([
            'codigo'        => 'MED2',
            'numero'        => '2001-097865',
            'marca'     => 'LAsi',
            'modelo'        => 'abc',
            'sector'        => 'Portete',
            'imagen'        => 'sinimg.jpg',
            'persona_id'        => '2',
        ]);
        Medidor::create([
            'codigo'        => 'MED3',
            'numero'        => '2000-965123',
            'marca'     => 'LAsi',
            'modelo'        => 'abc',
            'sector'        => 'Portete',
            'imagen'        => 'sinimg.jpg',
            'persona_id'        => '3',
        ]);
        Medidor::create([
            'codigo'        => 'MED4',
            'numero'        => '2000-417653',
            'marca'     => 'LAsi',
            'modelo'        => 'abc',
            'sector'        => 'Portete',
            'imagen'        => 'sinimg.jpg',
            'persona_id'        => '4',
        ]);
        Medidor::create([
            'codigo'        => 'MED5',
            'numero'        => '2004-123456',
            'marca'     => 'LAsi',
            'modelo'        => 'abc',
            'sector'        => 'Portete',
            'imagen'        => 'sinimg.jpg',
            'persona_id'        => '5',
        ]);
        Medidor::create([
            'codigo'        => 'MED6',
            'numero'        => '2005-190806',
            'marca'     => 'LAsi',
            'modelo'        => 'abc',
            'sector'        => 'Portete',
            'imagen'        => 'sinimg.jpg',
            'persona_id'        => '6',
        ]);
        Medidor::create([
            'codigo'        => 'MED7',
            'numero'        => '2007-167890',
            'marca'     => 'LAsi',
            'modelo'        => 'abc',
            'sector'        => 'Pedregal',
            'imagen'        => 'sinimg.jpg',
            'persona_id'        => '7',
        ]);
        Medidor::create([
            'codigo'        => 'MED8',
            'numero'        => '2006-114480',
            'marca'     => 'LAsi',
            'modelo'        => 'abc',
            'sector'        => 'Portete',
            'imagen'        => 'sinimg.jpg',
            'persona_id'        => '8',
        ]);
        Medidor::create([
            'codigo'        => 'MED9',
            'numero'        => '2008-908790',
            'marca'     => 'LAsi',
            'modelo'        => 'abc',
            'sector'        => 'Portete',
            'imagen'        => 'sinimg.jpg',
            'persona_id'        => '9',
        ]);
        Medidor::create([
            'codigo'        => 'MED10',
            'numero'        => '2010-123901',
            'marca'     => 'LAsi',
            'modelo'        => 'abc',
            'sector'        => 'Portete',
            'imagen'        => 'sinimg.jpg',
            'persona_id'        => '10',
        ]);
        Medidor::create([
            'codigo'        => 'MED11',
            'numero'        => '2011-902304',
            'marca'     => 'LAsi',
            'modelo'        => 'abc',
            'sector'        => 'Portete',
            'imagen'        => 'sinimg.jpg',
            'persona_id'        => '11',
        ]);
        Medidor::create([
            'codigo'        => 'MED12',
            'numero'        => '2012-450987',
            'marca'     => 'LAsi',
            'modelo'        => 'abc',
            'sector'        => 'Portete',
            'imagen'        => 'sinimg.jpg',
            'persona_id'        => '12',
        ]);
        Medidor::create([
            'codigo'        => 'MED13',
            'numero'        => '2004-190753',
            'marca'     => 'LAsi',
            'modelo'        => 'abc',
            'sector'        => 'Rayoloma',
            'imagen'        => 'sinimg.jpg',
            'persona_id'        => '13',
        ]);
        Medidor::create([
            'codigo'        => 'MED14',
            'numero'        => '2006-908731',
            'marca'     => 'LAsi',
            'modelo'        => 'abc',
            'sector'        => 'Portete',
            'imagen'        => 'sinimg.jpg',
            'persona_id'        => '14',
        ]);
        Medidor::create([
            'codigo'        => 'MED15',
            'numero'        => '2000-129064',
            'marca'     => 'LAsi',
            'modelo'        => 'abc',
            'sector'        => 'Portete',
            'imagen'        => 'sinimg.jpg',
            'persona_id'        => '15',
        ]);
    }
}

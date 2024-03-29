<?php

use Illuminate\Database\Seeder;

use Caffeinated\Shinobi\Models\Permission;

class PermissionsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    //esta Seeder me sirve para insertar registros de la tabla permisos
    public function run()
    {
        //Users tenemos 4 permisos porque desde aqui podemos Lista, modificar, eliminar, y ver detalle registros en la tabla usuarios.
        Permission::create([
            'name'          => 'Navegar usuarios',
            'slug'          => 'users.index',
            'description'   => 'Lista y navega todos los usuarios del sistema',
        ]);

        Permission::create([
            'name'          => 'Ver detalle de usuario',
            'slug'          => 'users.show',
            'description'   => 'Ve en detalle cada usuario del sistema',            
        ]);
        
        Permission::create([
            'name'          => 'Edición de usuarios',
            'slug'          => 'users.edit',
            'description'   => 'Podría editar cualquier dato de un usuario del sistema',
        ]);
        
        Permission::create([
            'name'          => 'Eliminar usuario',
            'slug'          => 'users.destroy',
            'description'   => 'Podría eliminar cualquier usuario del sistema',      
        ]);

        //Roles tenemos 5 permisos porque desde aqui podemos Lista, modificar, eliminar, crear y ver detalle registros en la tabla roles.
        Permission::create([
            'name'          => 'Navegar roles',
            'slug'          => 'roles.index',
            'description'   => 'Lista y navega todos los roles del sistema',
        ]);

        Permission::create([
            'name'          => 'Ver detalle de un rol',
            'slug'          => 'roles.show',
            'description'   => 'Ve en detalle cada rol del sistema',            
        ]);
        
        Permission::create([
            'name'          => 'Creación de roles',
            'slug'          => 'roles.create',
            'description'   => 'Podría crear nuevos roles en el sistema',
        ]);
        
        Permission::create([
            'name'          => 'Edición de roles',
            'slug'          => 'roles.edit',
            'description'   => 'Podría editar cualquier dato de un rol del sistema',
        ]);
        
        Permission::create([
            'name'          => 'Eliminar roles',
            'slug'          => 'roles.destroy',
            'description'   => 'Podría eliminar cualquier rol del sistema',      
        ]);

        //Abonados tenemos 5 permisos porque desde aqui podemos Lista, modificar, eliminar, crear y ver el detalle registros en la tabla persona (abonados)
        Permission::create([
            'name'          => 'Navegar Abonados',
            'slug'          => 'personas.index',
            'description'   => 'Lista y navega todos los Abonados del sistema',
        ]);

        Permission::create([
            'name'          => 'Ver detalle de un Abonado',
            'slug'          => 'personas.show',
            'description'   => 'Ve en detalle cada abonado del sistema',            
        ]);
        
        Permission::create([
            'name'          => 'Creación de Abonado',
            'slug'          => 'personas.create',
            'description'   => 'Podría crear nuevos abonados en el sistema',
        ]);
        
        Permission::create([
            'name'          => 'Edición de Abonado',
            'slug'          => 'personas.edit',
            'description'   => 'Podría editar cualquier dato de un abonado del sistema',
        ]);
        
        Permission::create([
            'name'          => 'Eliminar Abonado',
            'slug'          => 'personas.destroy',
            'description'   => 'Podría eliminar cualquier Abonado del sistema',      
        ]);
//Medidores tenemos 4 permisos porque desde aqui podemos Lista, modificar, eliminar y crear registros en la tabla medidores
        Permission::create([
            'name'          => 'Navegar medidores',
            'slug'          => 'medidores.index',
            'description'   => 'Lista y navega todos los medidores del sistema',
        ]);

        Permission::create([
            'name'          => 'Ver detalle de medidor',
            'slug'          => 'medidores.show',
            'description'   => 'Ve en detalle cada medidor del sistema',            
        ]);
        
        Permission::create([
            'name'          => 'Edición de medidores',
            'slug'          => 'medidores.edit',
            'description'   => 'Podría editar cualquier dato de un medidor del sistema',
        ]);
        
        Permission::create([
            'name'          => 'Eliminar medidor',
            'slug'          => 'medidores.destroy',
            'description'   => 'Podría eliminar cualquier medidor del sistema',      
        ]);
//Lecturas tenemos solo un  permiso porque desde aqui solo podemos consultar registros en la tabla lecturas
        Permission::create([
            'name'          => 'Navegar Lecturas',
            'slug'          => 'lecturas.index',
            'description'   => 'Lista y navega todas las lecturas del sistema',
        ]);
    }
}
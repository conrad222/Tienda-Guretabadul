<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Str;
class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\Role::factory()->create([
        //     'NombreRol'=>'usuario',
        // ]);
        // \App\Models\Role::factory()->create([
        //     'NombreRol'=>'admin',
        // ]);

        $roles=array("usuario","admin");
        foreach ($roles as $role){
            $rolCreado=\App\Models\Role::factory()->create([
                'NombreRol'=>$role,
            ]);
        }

        //Usuarios normales
        \App\Models\User::factory(1)->create();

        //Usuarios admin
        $rolAdmin=\App\Models\Role::where('NombreRol','admin')->first();

        \App\Models\User::factory()->create([
            'name' => 'Ekaitz',
            'email' => 'ekacormen@gmail.com',
            'email_verified_at' => now(),
            'password' => '$2a$12$cxav8PQQPdnoeLcc1q9Zd.butj4/gL94LatVV7AACbO/8mYRu/1pK', // password
            'remember_token' => Str::random(10),
            'role_id'=>2,
        ]);
    }
}

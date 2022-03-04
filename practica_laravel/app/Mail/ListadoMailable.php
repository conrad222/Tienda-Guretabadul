<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use App\Models\comercios;


class ContactanosMailable extends Mailable
{
    use Queueable, SerializesModels;
       
    public $subjet='Lista Solicitada'; //Asunto del correo

    
    
    /** 
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $datosContacto = $request->all();

        $correo= new Correo();
        return $this->view('emails.listado');
    }
}

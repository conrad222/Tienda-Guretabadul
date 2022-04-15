<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class MessageCreated extends Mailable
{
    use Queueable, SerializesModels;

    public function __construct($message)
    {
        $this->message = $message;
    }

    public function build()
    {
        return $this->markdown('mail.message-created');
    }
}
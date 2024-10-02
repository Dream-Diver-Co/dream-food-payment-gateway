<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ChefContact extends Model
{
    use HasFactory;
    protected $table = 'chefcontacts';
    protected $primaryKey = 'id';
    protected $fillable = ['name', 'email', 'phone', 'subject', 'note', 'image'];
}

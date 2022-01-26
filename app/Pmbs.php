<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Pmb extends Model
{
    use SoftDeletes;

    public $table = 'pmbs';

    protected $dates = [
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    protected $fillable = [
        'name',
        'cost',
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    public function amenities()
    {
        return $this->belongsToMany(Amenity::class);
    }
}

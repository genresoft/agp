<?php

namespace App\Http\Requests;

use App\PMB;
use Gate;
use Illuminate\Foundation\Http\FormRequest;
use Symfony\Component\HttpFoundation\Response;

class UpdatePMBRequest extends FormRequest
{
    public function authorize()
    {
        abort_if(Gate::denies('pmb_edit'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return true;
    }

    public function rules()
    {
        return [
            'name'        => [
                'required',
            ],
            'cost'        => [
                'required',
            ],
            'amenities.*' => [
                'integer',
            ],
            'amenities'   => [
                'array',
            ],
        ];
    }
}

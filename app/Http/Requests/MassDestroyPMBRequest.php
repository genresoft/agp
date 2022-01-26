<?php

namespace App\Http\Requests;

use App\PMB;
use Gate;
use Illuminate\Foundation\Http\FormRequest;
use Symfony\Component\HttpFoundation\Response;

class MassDestroyPMBRequest extends FormRequest
{
    public function authorize()
    {
        abort_if(Gate::denies('pmb_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return true;
    }

    public function rules()
    {
        return [
            'ids'   => 'required|array',
            'ids.*' => 'exists:pmbs,id',
        ];
    }
}

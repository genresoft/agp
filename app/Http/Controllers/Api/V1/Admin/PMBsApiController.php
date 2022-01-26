<?php

namespace App\Http\Controllers\Api\V1\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\StorePMBRequest;
use App\Http\Requests\UpdatePMBRequest;
use App\Http\Resources\Admin\PMBResource;
use App\PMB;
use Gate;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class PMBsApiController extends Controller
{
    public function index()
    {
        abort_if(Gate::denies('pmb_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return new PMBResource(PMB::with(['amenities'])->get());
    }

    public function store(StorePMBRequest $request)
    {
        $pmb = PMB::create($request->all());
        $pmb->amenities()->sync($request->input('amenities', []));

        return (new PMBResource($pmb))
            ->response()
            ->setStatusCode(Response::HTTP_CREATED);
    }

    public function show(PMB $pmb)
    {
        abort_if(Gate::denies('pmb_show'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return new PMBResource($pmb->load(['amenities']));
    }

    public function update(UpdatePMBRequest $request, PMB $pmb)
    {
        $pmb->update($request->all());
        $pmb->amenities()->sync($request->input('amenities', []));

        return (new PMBResource($pmb))
            ->response()
            ->setStatusCode(Response::HTTP_ACCEPTED);
    }

    public function destroy(PMB $pmb)
    {
        abort_if(Gate::denies('pmb_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $pmb->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }
}

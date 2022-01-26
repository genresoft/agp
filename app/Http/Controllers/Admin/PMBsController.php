<?php

namespace App\Http\Controllers\Admin;

use App\Amenity;
use App\Http\Controllers\Controller;
use App\Http\Requests\MassDestroyPMBRequest;
use App\Http\Requests\StorePMBRequest;
use App\Http\Requests\UpdatePMBRequest;
use App\PMB;
use Gate;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class PMBsController extends Controller
{
    public function index()
    {
        abort_if(Gate::denies('pmb_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $pmbs = PMB::all();

        return view('admin.pmbs.index', compact('pmbs'));
    }

    public function create()
    {
        abort_if(Gate::denies('pmb_create'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $amenities = Amenity::all()->pluck('name', 'id');

        return view('admin.pmbs.create', compact('amenities'));
    }

    public function store(StorePMBRequest $request)
    {
        $pmb = PMB::create($request->all());
        $pmb->amenities()->sync($request->input('amenities', []));

        return redirect()->route('admin.pmbs.index');
    }

    public function edit(PMB $pmb)
    {
        abort_if(Gate::denies('pmb_edit'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $amenities = Amenity::all()->pluck('name', 'id');

        $pmb->load('amenities');

        return view('admin.pmbs.edit', compact('amenities', 'pmb'));
    }

    public function update(UpdatePMBRequest $request, PMB $pmb)
    {
        $pmb->update($request->all());
        $pmb->amenities()->sync($request->input('amenities', []));

        return redirect()->route('admin.pmbs.index');
    }

    public function show(PMB $pmb)
    {
        abort_if(Gate::denies('pmb_show'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $pmb->load('amenities');

        return view('admin.pmbs.show', compact('pmb'));
    }

    public function destroy(PMB $pmb)
    {
        abort_if(Gate::denies('pmb_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $pmb->delete();

        return back();
    }

    public function massDestroy(MassDestroyPMBRequest $request)
    {
        PMB::whereIn('id', request('ids'))->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }
}

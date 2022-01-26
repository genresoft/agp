<?php

namespace App\Http\Controllers\Api\V1\Admin;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Traits\MediaUploadingTrait;
use App\Http\Requests\StoreLecturerRequest;
use App\Http\Requests\UpdateLecturerRequest;
use App\Http\Resources\Admin\LecturerResource;
use App\Lecturer;
use Gate;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class LecturersApiController extends Controller
{
    use MediaUploadingTrait;

    public function index()
    {
        abort_if(Gate::denies('lecturer_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return new LecturerResource(Lecturer::all());
    }

    public function store(StoreLecturerRequest $request)
    {
        $lecturer = Lecturer::create($request->all());

        if ($request->input('photo', false)) {
            $lecturer->addMedia(storage_path('tmp/uploads/' . $request->input('photo')))->toMediaCollection('photo');
        }

        return (new LecturerResource($lecturer))
            ->response()
            ->setStatusCode(Response::HTTP_CREATED);
    }

    public function show(Lecturer $lecturer)
    {
        abort_if(Gate::denies('lecturer_show'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return new LecturerResource($lecturer);
    }

    public function update(UpdateLecturerRequest $request, Lecturer $lecturer)
    {
        $lecturer->update($request->all());

        if ($request->input('photo', false)) {
            if (!$lecturer->photo || $request->input('photo') !== $lecturer->photo->file_name) {
                $lecturer->addMedia(storage_path('tmp/uploads/' . $request->input('photo')))->toMediaCollection('photo');
            }
        } elseif ($lecturer->photo) {
            $lecturer->photo->delete();
        }

        return (new LecturerResource($lecturer))
            ->response()
            ->setStatusCode(Response::HTTP_ACCEPTED);
    }

    public function destroy(Lecturer $lecturer)
    {
        abort_if(Gate::denies('lecturer_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $lecturer->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }
}

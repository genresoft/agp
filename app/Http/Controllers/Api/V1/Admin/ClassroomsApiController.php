<?php

namespace App\Http\Controllers\Api\V1\Admin;

use App\Classroom;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Traits\MediaUploadingTrait;
use App\Http\Requests\StoreClassroomRequest;
use App\Http\Requests\UpdateClassroomRequest;
use App\Http\Resources\Admin\ClassroomResource;
use Gate;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class ClassroomsApiController extends Controller
{
    use MediaUploadingTrait;

    public function index()
    {
        abort_if(Gate::denies('classroom_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return new ClassroomResource(Classroom::all());
    }

    public function store(StoreClassroomRequest $request)
    {
        $classroom = Classroom::create($request->all());

        if ($request->input('photo', false)) {
            $classroom->addMedia(storage_path('tmp/uploads/' . $request->input('photo')))->toMediaCollection('photo');
        }

        return (new ClassroomResource($classroom))
            ->response()
            ->setStatusCode(Response::HTTP_CREATED);
    }

    public function show(Classroom $classroom)
    {
        abort_if(Gate::denies('classroom_show'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return new ClassroomResource($classroom);
    }

    public function update(UpdateClassroomRequest $request, Classroom $classroom)
    {
        $classroom->update($request->all());

        if ($request->input('photo', false)) {
            if (!$classroom->photo || $request->input('photo') !== $classroom->photo->file_name) {
                $classroom->addMedia(storage_path('tmp/uploads/' . $request->input('photo')))->toMediaCollection('photo');
            }
        } elseif ($classroom->photo) {
            $classroom->photo->delete();
        }

        return (new ClassroomResource($classroom))
            ->response()
            ->setStatusCode(Response::HTTP_ACCEPTED);
    }

    public function destroy(Classroom $classroom)
    {
        abort_if(Gate::denies('classroom_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $classroom->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }
}

<?php

namespace App\Http\Controllers\Admin;

use App\Classroom;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Traits\MediaUploadingTrait;
use App\Http\Requests\MassDestroyClassroomRequest;
use App\Http\Requests\StoreClassroomRequest;
use App\Http\Requests\UpdateClassroomRequest;
use Gate;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class ClassroomsController extends Controller
{
    use MediaUploadingTrait;

    public function index()
    {
        abort_if(Gate::denies('classroom_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $classrooms = Classroom::all();

        return view('admin.classrooms.index', compact('classrooms'));
    }

    public function create()
    {
        abort_if(Gate::denies('classroom_create'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return view('admin.classrooms.create');
    }

    public function store(StoreClassroomRequest $request)
    {
        $classroom = Classroom::create($request->all());

        if ($request->input('photo', false)) {
            $classroom->addMedia(storage_path('tmp/uploads/' . $request->input('photo')))->toMediaCollection('photo');
        }

        return redirect()->route('admin.classrooms.index');
    }

    public function edit(Classroom $classroom)
    {
        abort_if(Gate::denies('classroom_edit'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return view('admin.classrooms.edit', compact('classroom'));
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

        return redirect()->route('admin.classrooms.index');
    }

    public function show(Classroom $classroom)
    {
        abort_if(Gate::denies('classroom_show'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return view('admin.classrooms.show', compact('classroom'));
    }

    public function destroy(Classroom $classroom)
    {
        abort_if(Gate::denies('classroom_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $classroom->delete();

        return back();
    }

    public function massDestroy(MassDestroyClassroomRequest $request)
    {
        Classroom::whereIn('id', request('ids'))->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }
}

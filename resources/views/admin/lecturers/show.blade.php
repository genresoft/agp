@extends('layouts.admin')
@section('content')

<div class="card">
    <div class="card-header">
        {{ trans('global.show') }} {{ trans('cruds.lecturer.title') }}
    </div>

    <div class="card-body">
        <div class="mb-2">
            <table class="table table-bordered table-striped">
                <tbody>
                    <tr>
                        <th>
                            {{ trans('cruds.lecturer.fields.id') }}
                        </th>
                        <td>
                            {{ $lecturer->id }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.lecturer.fields.name') }}
                        </th>
                        <td>
                            {{ $lecturer->name }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.lecturer.fields.description') }}
                        </th>
                        <td>
                            {!! $lecturer->description !!}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.lecturer.fields.full_description') }}
                        </th>
                        <td>
                            {!! $lecturer->full_description !!}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.lecturer.fields.photo') }}
                        </th>
                        <td>
                            @if($lecturer->photo)
                                <a href="{{ $lecturer->photo->getUrl() }}" target="_blank">
                                    <img src="{{ $lecturer->photo->getUrl('thumb') }}" width="50px" height="50px">
                                </a>
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.lecturer.fields.twitter') }}
                        </th>
                        <td>
                            {{ $lecturer->twitter }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.lecturer.fields.facebook') }}
                        </th>
                        <td>
                            {{ $lecturer->facebook }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.lecturer.fields.linkedin') }}
                        </th>
                        <td>
                            {{ $lecturer->linkedin }}
                        </td>
                    </tr>
                </tbody>
            </table>
            <a style="margin-top:20px;" class="btn btn-default" href="{{ url()->previous() }}">
                {{ trans('global.back_to_list') }}
            </a>
        </div>

        <nav class="mb-3">
            <div class="nav nav-tabs">

            </div>
        </nav>
        <div class="tab-content">

        </div>
    </div>
</div>
@endsection
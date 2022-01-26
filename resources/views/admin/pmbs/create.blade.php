@extends('layouts.admin')
@section('content')

<div class="card">
    <div class="card-header">
        {{ trans('global.create') }} {{ trans('cruds.pmb.title_singular') }}
    </div>

    <div class="card-body">
        <form action="{{ route("admin.pmbs.store") }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="form-group {{ $errors->has('name') ? 'has-error' : '' }}">
                <label for="name">{{ trans('cruds.pmb.fields.name') }}*</label>
                <input type="text" id="name" name="name" class="form-control" value="{{ old('name', isset($pmb) ? $pmb->name : '') }}" required>
                @if($errors->has('name'))
                    <p class="help-block">
                        {{ $errors->first('name') }}
                    </p>
                @endif
                <p class="helper-block">
                    {{ trans('cruds.pmb.fields.name_helper') }}
                </p>
            </div>
            <div class="form-group {{ $errors->has('cost') ? 'has-error' : '' }}">
                <label for="pmb">{{ trans('cruds.pmb.fields.cost') }}*</label>
                <input type="number" id="pmb" name="cost" class="form-control" value="{{ old('cost', isset($pmb) ? $pmb->cost : '') }}" step="0.01" required>
                @if($errors->has('cost'))
                    <p class="help-block">
                        {{ $errors->first('cost') }}
                    </p>
                @endif
                <p class="helper-block">
                    {{ trans('cruds.pmb.fields.cost_helper') }}
                </p>
            </div>
            <div class="form-group {{ $errors->has('amenities') ? 'has-error' : '' }}">
                <label for="amenities">{{ trans('cruds.pmb.fields.amenities') }}
                    <span class="btn btn-info btn-xs select-all">{{ trans('global.select_all') }}</span>
                    <span class="btn btn-info btn-xs deselect-all">{{ trans('global.deselect_all') }}</span></label>
                <select name="amenities[]" id="amenities" class="form-control select2" multiple="multiple">
                    @foreach($amenities as $id => $amenities)
                        <option value="{{ $id }}" {{ (in_array($id, old('amenities', [])) || isset($pmb) && $pmb->amenities->contains($id)) ? 'selected' : '' }}>{{ $amenities }}</option>
                    @endforeach
                </select>
                @if($errors->has('amenities'))
                    <p class="help-block">
                        {{ $errors->first('amenities') }}
                    </p>
                @endif
                <p class="helper-block">
                    {{ trans('cruds.pmb.fields.amenities_helper') }}
                </p>
            </div>
            <div>
                <input class="btn btn-danger" type="submit" value="{{ trans('global.save') }}">
            </div>
        </form>
    </div>
</div>
@endsection
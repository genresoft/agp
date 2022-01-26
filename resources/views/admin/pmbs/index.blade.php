@extends('layouts.admin')
@section('content')
@can('pmb_create')
    <div style="margin-bottom: 10px;" class="row">
        <div class="col-lg-12">
            <a class="btn btn-success" href="{{ route("admin.pmbs.create") }}">
                {{ trans('global.add') }} {{ trans('cruds.pmb.title_singular') }}
            </a>
        </div>
    </div>
@endcan
<div class="card">
    <div class="card-header">
        {{ trans('cruds.pmb.title_singular') }} {{ trans('global.list') }}
    </div>

    <div class="card-body">
        <div class="table-responsive">
            <table class=" table table-bordered table-striped table-hover datatable datatable-PMB">
                <thead>
                    <tr>
                        <th width="10">

                        </th>
                        <th>
                            {{ trans('cruds.pmb.fields.id') }}
                        </th>
                        <th>
                            {{ trans('cruds.pmb.fields.name') }}
                        </th>
                        <th>
                            {{ trans('cruds.pmb.fields.cost') }}
                        </th>
                        <th>
                            {{ trans('cruds.pmb.fields.amenities') }}
                        </th>
                        <th>
                            &nbsp;
                        </th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($pmbs as $key => $pmb)
                        <tr data-entry-id="{{ $pmb->id }}">
                            <td>

                            </td>
                            <td>
                                {{ $pmb->id ?? '' }}
                            </td>
                            <td>
                                {{ $pmb->name ?? '' }}
                            </td>
                            <td>
                                {{ $pmb->cost ?? '' }}
                            </td>
                            <td>
                                @foreach($pmb->amenities as $key => $item)
                                    <span class="badge badge-info">{{ $item->name }}</span>
                                @endforeach
                            </td>
                            <td>
                                @can('pmb_show')
                                    <a class="btn btn-xs btn-primary" href="{{ route('admin.pmbs.show', $pmb->id) }}">
                                        {{ trans('global.view') }}
                                    </a>
                                @endcan

                                @can('pmb_edit')
                                    <a class="btn btn-xs btn-info" href="{{ route('admin.pmbs.edit', $pmb->id) }}">
                                        {{ trans('global.edit') }}
                                    </a>
                                @endcan

                                @can('pmb_delete')
                                    <form action="{{ route('admin.pmbs.destroy', $pmb->id) }}" method="POST" onsubmit="return confirm('{{ trans('global.areYouSure') }}');" style="display: inline-block;">
                                        <input type="hidden" name="_method" value="DELETE">
                                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                        <input type="submit" class="btn btn-xs btn-danger" value="{{ trans('global.delete') }}">
                                    </form>
                                @endcan

                            </td>

                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection
@section('scripts')
@parent
<script>
    $(function () {
  let dtButtons = $.extend(true, [], $.fn.dataTable.defaults.buttons)
@can('pmb_delete')
  let deleteButtonTrans = '{{ trans('global.datatables.delete') }}'
  let deleteButton = {
    text: deleteButtonTrans,
    url: "{{ route('admin.pmbs.massDestroy') }}",
    className: 'btn-danger',
    action: function (e, dt, node, config) {
      var ids = $.map(dt.rows({ selected: true }).nodes(), function (entry) {
          return $(entry).data('entry-id')
      });

      if (ids.length === 0) {
        alert('{{ trans('global.datatables.zero_selected') }}')

        return
      }

      if (confirm('{{ trans('global.areYouSure') }}')) {
        $.ajax({
          headers: {'x-csrf-token': _token},
          method: 'POST',
          url: config.url,
          data: { ids: ids, _method: 'DELETE' }})
          .done(function () { location.reload() })
      }
    }
  }
  dtButtons.push(deleteButton)
@endcan

  $.extend(true, $.fn.dataTable.defaults, {
    order: [[ 1, 'desc' ]],
    pageLength: 100,
  });
  $('.datatable-PMB:not(.ajaxTable)').DataTable({ buttons: dtButtons })
    $('a[data-toggle="tab"]').on('shown.bs.tab', function(e){
        $($.fn.dataTable.tables(true)).DataTable()
            .columns.adjust();
    });
})

</script>
@endsection
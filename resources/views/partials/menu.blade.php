<aside class="main-sidebar sidebar-dark-primary elevation-4" style="min-height: 917px;">
    <!-- Brand Logo -->
    <a href="#" class="brand-link">
		<span class="brand-image"><img src="../img/logo.png" width="30px" style="margin-top:3px"></span>
        <span class="brand-text font-weight-light">{{ trans('panel.site_title') }}</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user (optional) -->

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <li class="nav-item">
                    <a href="{{ route("admin.home") }}" class="nav-link">
                        <p>
                            <i class="fas fa-fw fa-tachometer-alt">

                            </i>
                            <span>{{ trans('global.dashboard') }}</span>
                        </p>
                    </a>
                </li>
                @can('user_management_access')
                    <li class="nav-item has-treeview {{ request()->is('admin/permissions*') ? 'menu-open' : '' }} {{ request()->is('admin/roles*') ? 'menu-open' : '' }} {{ request()->is('admin/users*') ? 'menu-open' : '' }}">
                        <a class="nav-link nav-dropdown-toggle" href="#">
                            <i class="fa-fw fas fa-users">

                            </i>
                            <p>
                                <span>{{ trans('cruds.userManagement.title') }}</span>
                                <i class="right fa fa-fw fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            @can('permission_access')
                                <li class="nav-item">
                                    <a href="{{ route("admin.permissions.index") }}" class="nav-link {{ request()->is('admin/permissions') || request()->is('admin/permissions/*') ? 'active' : '' }}">
                                        <i class="fa-fw fas fa-unlock-alt">

                                        </i>
                                        <p>
                                            <span>{{ trans('cruds.permission.title') }}</span>
                                        </p>
                                    </a>
                                </li>
                            @endcan
                            @can('role_access')
                                <li class="nav-item">
                                    <a href="{{ route("admin.roles.index") }}" class="nav-link {{ request()->is('admin/roles') || request()->is('admin/roles/*') ? 'active' : '' }}">
                                        <i class="fa-fw fas fa-briefcase">

                                        </i>
                                        <p>
                                            <span>{{ trans('cruds.role.title') }}</span>
                                        </p>
                                    </a>
                                </li>
                            @endcan
                            @can('user_access')
                                <li class="nav-item">
                                    <a href="{{ route("admin.users.index") }}" class="nav-link {{ request()->is('admin/users') || request()->is('admin/users/*') ? 'active' : '' }}">
                                        <i class="fa-fw fas fa-user">

                                        </i>
                                        <p>
                                            <span>{{ trans('cruds.user.title') }}</span>
                                        </p>
                                    </a>
                                </li>
                            @endcan
                        </ul>
                    </li>
                @endcan
                @can('setting_access')
                    <li class="nav-item">
                        <a href="{{ route("admin.settings.index") }}" class="nav-link {{ request()->is('admin/settings') || request()->is('admin/settings/*') ? 'active' : '' }}">
                            <i class="fa-fw fas fa-cogs">

                            </i>
                            <p>
                                <span>{{ trans('cruds.setting.title') }}</span>
                            </p>
                        </a>
                    </li>
                @endcan
                @can('lecturer_access')
                    <li class="nav-item">
                        <a href="{{ route("admin.lecturers.index") }}" class="nav-link {{ request()->is('admin/lecturers') || request()->is('admin/lecturers/*') ? 'active' : '' }}">
                            <i class="fa-fw fas fa-users">

                            </i>
                            <p>
                                <span>{{ trans('cruds.lecturer.title') }}</span>
                            </p>
                        </a>
                    </li>
                @endcan
                @can('schedule_access')
                    <li class="nav-item">
                        <a href="{{ route("admin.schedules.index") }}" class="nav-link {{ request()->is('admin/schedules') || request()->is('admin/schedules/*') ? 'active' : '' }}">
                            <i class="fa-fw far fa-clock">

                            </i>
                            <p>
                                <span>{{ trans('cruds.schedule.title') }}</span>
                            </p>
                        </a>
                    </li>
                @endcan
                @can('venue_access')
                    <li class="nav-item">
                        <a href="{{ route("admin.venues.index") }}" class="nav-link {{ request()->is('admin/venues') || request()->is('admin/venues/*') ? 'active' : '' }}">
                            <i class="fa-fw fas fa-map-marker-alt">

                            </i>
                            <p>
                                <span>{{ trans('cruds.venue.title') }}</span>
                            </p>
                        </a>
                    </li>
                @endcan
                @can('classroom_access')
                    <li class="nav-item">
                        <a href="{{ route("admin.classrooms.index") }}" class="nav-link {{ request()->is('admin/classrooms') || request()->is('admin/classrooms/*') ? 'active' : '' }}">
                            <i class="fa-fw fas fa-hotel">

                            </i>
                            <p>
                                <span>{{ trans('cruds.classroom.title') }}</span>
                            </p>
                        </a>
                    </li>
                @endcan
                @can('gallery_access')
                    <li class="nav-item">
                        <a href="{{ route("admin.galleries.index") }}" class="nav-link {{ request()->is('admin/galleries') || request()->is('admin/galleries/*') ? 'active' : '' }}">
                            <i class="fa-fw fas fa-images">

                            </i>
                            <p>
                                <span>{{ trans('cruds.gallery.title') }}</span>
                            </p>
                        </a>
                    </li>
                @endcan
                @can('sponsor_access')
                    <li class="nav-item">
                        <a href="{{ route("admin.sponsors.index") }}" class="nav-link {{ request()->is('admin/sponsors') || request()->is('admin/sponsors/*') ? 'active' : '' }}">
                            <i class="fa-fw fas fa-hand-holding-usd">

                            </i>
                            <p>
                                <span>{{ trans('cruds.sponsor.title') }}</span>
                            </p>
                        </a>
                    </li>
                @endcan
                @can('faq_access')
                    <li class="nav-item">
                        <a href="{{ route("admin.faqs.index") }}" class="nav-link {{ request()->is('admin/faqs') || request()->is('admin/faqs/*') ? 'active' : '' }}">
                            <i class="fa-fw fas fa-question">

                            </i>
                            <p>
                                <span>{{ trans('cruds.faq.title') }}</span>
                            </p>
                        </a>
                    </li>
                @endcan
                @can('amenity_access')
                    <li class="nav-item">
                        <a href="{{ route("admin.amenities.index") }}" class="nav-link {{ request()->is('admin/amenities') || request()->is('admin/amenities/*') ? 'active' : '' }}">
                            <i class="fa-fw fas fa-check">

                            </i>
                            <p>
                                <span>{{ trans('cruds.amenity.title') }}</span>
                            </p>
                        </a>
                    </li>
                @endcan
                @can('pmb_access')
                    <li class="nav-item">
                        <a href="{{ route("admin.pmbs.index") }}" class="nav-link {{ request()->is('admin/pmbs') || request()->is('admin/pmbs/*') ? 'active' : '' }}">
                            <i class="fa-fw fas fa-money-bill">

                            </i>
                            <p>
                                <span>{{ trans('cruds.pmb.title') }}</span>
                            </p>
                        </a>
                    </li>
                @endcan
                <li class="nav-item">
                    <a href="#" class="nav-link" onclick="event.preventDefault(); document.getElementById('logoutform').submit();">
                        <p>
                            <i class="fas fa-fw fa-sign-out-alt">

                            </i>
                            <span>{{ trans('global.logout') }}</span>
                        </p>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
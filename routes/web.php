<?php

Route::get('/', 'HomeController@index')->name('home');
Route::get('lecturer/{lecturer}', 'HomeController@view')->name('lecturer');
Route::redirect('/home', '/admin');
Auth::routes(['register' => false]);

Route::group(['prefix' => 'admin', 'as' => 'admin.', 'namespace' => 'Admin', 'middleware' => ['auth']], function () {
    Route::get('/', 'HomeController@index')->name('home');
    // Permissions
    Route::delete('permissions/destroy', 'PermissionsController@massDestroy')->name('permissions.massDestroy');
    Route::resource('permissions', 'PermissionsController');

    // Roles
    Route::delete('roles/destroy', 'RolesController@massDestroy')->name('roles.massDestroy');
    Route::resource('roles', 'RolesController');

    // Users
    Route::delete('users/destroy', 'UsersController@massDestroy')->name('users.massDestroy');
    Route::resource('users', 'UsersController');

    // Settings
    Route::delete('settings/destroy', 'SettingsController@massDestroy')->name('settings.massDestroy');
    Route::resource('settings', 'SettingsController');

    // Lecturers
    Route::delete('lecturers/destroy', 'LecturersController@massDestroy')->name('lecturers.massDestroy');
    Route::post('lecturers/media', 'LecturersController@storeMedia')->name('lecturers.storeMedia');
    Route::resource('lecturers', 'LecturersController');

    // Schedules
    Route::delete('schedules/destroy', 'ScheduleController@massDestroy')->name('schedules.massDestroy');
    Route::resource('schedules', 'ScheduleController');

    // Venues
    Route::delete('venues/destroy', 'VenuesController@massDestroy')->name('venues.massDestroy');
    Route::post('venues/media', 'VenuesController@storeMedia')->name('venues.storeMedia');
    Route::resource('venues', 'VenuesController');

    // Classrooms
    Route::delete('classrooms/destroy', 'ClassroomsController@massDestroy')->name('classrooms.massDestroy');
    Route::post('classrooms/media', 'ClassroomsController@storeMedia')->name('classrooms.storeMedia');
    Route::resource('classrooms', 'ClassroomsController');

    // Galleries
    Route::delete('galleries/destroy', 'GalleriesController@massDestroy')->name('galleries.massDestroy');
    Route::post('galleries/media', 'GalleriesController@storeMedia')->name('galleries.storeMedia');
    Route::resource('galleries', 'GalleriesController');

    // Sponsors
    Route::delete('sponsors/destroy', 'SponsorsController@massDestroy')->name('sponsors.massDestroy');
    Route::post('sponsors/media', 'SponsorsController@storeMedia')->name('sponsors.storeMedia');
    Route::resource('sponsors', 'SponsorsController');

    // Faqs
    Route::delete('faqs/destroy', 'FaqsController@massDestroy')->name('faqs.massDestroy');
    Route::resource('faqs', 'FaqsController');

    // Amenities
    Route::delete('amenities/destroy', 'AmenitiesController@massDestroy')->name('amenities.massDestroy');
    Route::resource('amenities', 'AmenitiesController');

    // PMBs
    Route::delete('pmbs/destroy', 'PMBsController@massDestroy')->name('pmbs.massDestroy');
    Route::resource('pmbs', 'PMBsController');
});

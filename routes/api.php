<?php

Route::group(['prefix' => 'v1', 'as' => 'api.', 'namespace' => 'Api\V1\Admin', 'middleware' => ['auth:api']], function () {
    // Permissions
    Route::apiResource('permissions', 'PermissionsApiController');

    // Roles
    Route::apiResource('roles', 'RolesApiController');

    // Users
    Route::apiResource('users', 'UsersApiController');

    // Settings
    Route::apiResource('settings', 'SettingsApiController');

    // Lecturers
    Route::post('lecturers/media', 'LecturersApiController@storeMedia')->name('lecturers.storeMedia');
    Route::apiResource('lecturers', 'LecturersApiController');

    // Schedules
    Route::apiResource('schedules', 'ScheduleApiController');

    // Venues
    Route::post('venues/media', 'VenuesApiController@storeMedia')->name('venues.storeMedia');
    Route::apiResource('venues', 'VenuesApiController');

    // Classrooms
    Route::post('classrooms/media', 'ClassroomsApiController@storeMedia')->name('classrooms.storeMedia');
    Route::apiResource('classrooms', 'ClassroomsApiController');

    // Galleries
    Route::post('galleries/media', 'GalleriesApiController@storeMedia')->name('galleries.storeMedia');
    Route::apiResource('galleries', 'GalleriesApiController');

    // Sponsors
    Route::post('sponsors/media', 'SponsorsApiController@storeMedia')->name('sponsors.storeMedia');
    Route::apiResource('sponsors', 'SponsorsApiController');

    // Faqs
    Route::apiResource('faqs', 'FaqsApiController');

    // Amenities
    Route::apiResource('amenities', 'AmenitiesApiController');

    // PMBs
    Route::apiResource('pmbs', 'PMBsApiController');
});

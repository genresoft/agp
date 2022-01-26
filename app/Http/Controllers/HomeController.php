<?php

namespace App\Http\Controllers;

use App\Setting;
use App\Lecturer;
use App\Schedule;
use App\Venue;
use App\Classroom;
use App\Gallery;
use App\Sponsor;
use App\Faq;
use App\PMB;
use App\Amenity;

class HomeController extends Controller
{
    public function index()
    {
        $settings = Setting::pluck('value', 'key');
        $lecturers = Lecturer::all();
        $schedules = Schedule::with('lecturer')
            ->orderBy('start_time', 'asc')
            ->get()
            ->groupBy('day_number');
        $venues = Venue::all();
        $classrooms = Classroom::all();
        $galleries = Gallery::all();
        $sponsors = Sponsor::all();
        $faqs = Faq::all();
        $pmbs = PMB::with('amenities')->get();
        $amenities = Amenity::with('pmbs')->get();

        return view('home', compact('settings', 'lecturers', 'schedules', 'venues', 'classrooms', 'galleries', 'sponsors', 'faqs', 'pmbs', 'amenities'));
    }

    public function view(Lecturer $lecturer)
    {
        $settings = Setting::pluck('value', 'key');
        
        return view('lecturer', compact('settings', 'lecturer'));
    }
}

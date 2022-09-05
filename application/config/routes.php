<?php
defined('BASEPATH') or exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/userguide3/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'AuthController/index';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

$route['auth/login'] = 'AuthController/login';
$route['auth/do_login'] = 'AuthController/do_login';
$route['auth/register'] = 'AuthController/register';
$route['auth/logout'] = 'AuthController/logout';

$route['daerah/dashboard'] = 'daerah/AppController/index';
$route['daerah/pemohonan'] = 'daerah/AppController/pemohonan';

$route['daerah/mubalik'] = 'daerah/AppController/mubalik';
$route['daerah/mubalik/add_show'] = 'daerah/AppController/add_mubalik_show';
$route['daerah/mubalik/add'] = 'daerah/AppController/add_mubalik';
$route['daerah/mubalik/update'] = 'daerah/AppController/update_mubalik';

$route['daerah/penempatan'] = 'daerah/AppController/penempatan';
$route['daerah/penempatan/add'] = 'daerah/AppController/add_penempatan';
$route['daerah/penempatan/list/(:any)'] = 'daerah/AppController/list_penempatan/$1';

$route['wilayah/dashboard'] = 'wilayah/AppController/index';
$route['wilayah/artikel'] = 'wilayah/AppController/artikel';
$route['wilayah/master'] = 'wilayah/AppController/master';
$route['wilayah/penempatan'] = 'wilayah/AppController/penempatan';
$route['wilayah/settings'] = 'wilayah/AppController/settings';
$route['wilayah/user'] = 'wilayah/AppController/user';


$route['api/pemohon/(:any)'] = 'APIController/pemohon/$1';
$route['api/mubalik/(:any)'] = 'APIController/mubalik/$1';
$route['api/mubalik/(:any)/skill'] = 'APIController/mubalik/$1/skill';

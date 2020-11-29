<?php

require 'vendor/autoload.php';
use Morrislaptop\Firestore\Factory;
use Kreait\Firebase\ServiceAccount;

// This assumes that you have placed the Firebase credentials in the same directory
// as this PHP file.
$serviceAccount = ServiceAccount::fromJsonFile(__DIR__ . '/firebase.json');

$firestore = (new Factory)
    ->withServiceAccount($serviceAccount)
    ->createFirestore();

//$collection = $firestore->collection('users');
//$user = $collection->document('123456');
//
// Save a document
//$user->set(['name' => 'morrislaptop', 'role' => 'developer']);

// Get a document
//$snap = $user->snapshot();
//echo $snap['name']; // morrislaptop

$colecao = $firestore->collection('users');
$usuario = $colecao->document('123456');
$snap = $usuario->snapshot();
echo $snap['name'];
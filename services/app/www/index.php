<?php 

require __DIR__ . '/../vendor/autoload.php';
// instantiate the App object
$app = new \Slim\App();

// Add route callbacks
$app->get('/', function ($request, $response, $args) {
    return $response->withStatus(200)->write(' HELLO SLIM ');
});

// Run application
$app->run();
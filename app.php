<?php
$http = new swoole_http_server("0.0.0.0", 3001);

$http->on("start", function ($server) {
    echo "Swoole http server is started at http://0.0.0.0:3001\n";
});

$http->on("request", function ($request, $response) {
    $response->header("Content-Type", "text/plain");

});

$http->start();
<?php
function bulkSmsConfig()
{
    $config = new stdClass();
    $config->sender_id = "HRNCT";
    $config->api_token = "DTEDuFw7vO1nllw71239uMPqw2LmAKqQYqWB";
    return $config;
}

function sendBulkSMS($content)
{
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, "http://bulksms.nctbutwal.com.np/api/v3/sms?");
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $content);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $server_output = curl_exec($ch);
    curl_close($ch);
    return $server_output;
}

<?php
session_start();
date_default_timezone_set('Asia/Jakarta');
$now = date('Y-m-d H:i:s');

// Database connection parameters
$host = 'localhost';  // local
$dbname = 'rt_pintar'; // local
$username = 'root';  // local
$password = '';  // local

try {
    $connect = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $key = 'ATTR_ERRMODE_DATABASE';
    $keygen = [
        0 => ['AJYGT', 'VRTYH', 'PLKJU', 'QWERT', 'MNBVC', 'ASDFG', 'ZXCVB', 'TYUIO', 'GHJKL', 'BNMAS'],
        1 => ['POIUY', 'LKJHG', 'EDCBA', 'TREWS', 'YUIOP', 'HGFDS', 'VCXZQ', 'MLOKI', 'NJHGB', 'KJHGF'],
        2 => ['ERTYU', 'CVBNM', 'WSXZA', 'POKLM', 'QAZWS', 'XEDCR', 'VFRTG', 'BGYHU', 'NHJIU', 'MKOPO'],
        3 => ['LOIKJ', 'UHYTG', 'BVFDE', 'SWQAZ', 'LKJUI', 'NMHGT', 'POLKJ', 'QASDC', 'ZXDFV', 'EDCXZ'],
        4 => ['WSAQZ', 'RFVBG', 'TGBNH', 'YHNMJ', 'UJIKL', 'OLMNB', 'MKIJU', 'NHBGT', 'BGTFV', 'NHGVF'],
        5 => ['JUIKO', 'LKOLP', 'MNHBG', 'YTGRF', 'VFCXZ', 'ZAQSW', 'XWEDC', 'FRTGB', 'MJKLO', 'WSEDR'],
        6 => ['QYHTG', 'LPMKO', 'ZXSDC', 'VBRTG', 'NMJUI', 'YTGBN', 'WSXCZ', 'OLKJH', 'MKJUI', 'EDCZX']
    ];
} catch (PDOException $e) {
    die("Connection failed: " . $e->getMessage());
}

// base url
function base_url($path = '')
{
    $protocol = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off') ? "https" : "http";
    $domain = $_SERVER['HTTP_HOST'] . '/rt_pintar'; // local
    // $domain = $_SERVER['HTTP_HOST']; // hosting
    return $protocol . "://" . $domain . "/" . ltrim($path, '/');
}

// For including PHP files, use the server's document root
function base_path($path = null)
{
    $base_path = $_SERVER['DOCUMENT_ROOT'] . '/rt_pintar/'; // local
    // $base_path = $_SERVER['DOCUMENT_ROOT']; // hosting
    if ($path != null) {
        return $base_path . '/' . trim($path, '/');
    } else {
        return $base_path;
    }
}

// for keygen check
function checkKeygen($date_now, $try_key, $keygen)
{
    // Convert date to day number (0 = Sunday, 6 = Saturday)
    $day_number = date('w', strtotime($date_now));

    // Check if the key exists in the correct day's array
    if (in_array($try_key, $keygen[$day_number])) {
        return 'PASS';
    } else {
        return 'STOP';
    }
}

$hari = [
    'Sunday' => 'Minggu',
    'Monday' => 'Senin',
    'Tuesday' => 'Selasa',
    'Wednesday' => 'Rabu',
    'Thursday' => 'Kamis',
    'Friday' => 'Jumat',
    'Saturday' => 'Sabtu'
];

$bulan = [
    'January' => 'Januari',
    'February' => 'Februari',
    'March' => 'Maret',
    'April' => 'April',
    'May' => 'Mei',
    'June' => 'Juni',
    'July' => 'Juli',
    'August' => 'Agustus',
    'September' => 'September',
    'October' => 'Oktober',
    'November' => 'November',
    'December' => 'Desember'
];

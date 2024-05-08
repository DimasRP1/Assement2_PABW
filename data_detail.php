<?php

$db = new mysqli("localhost", "root", "", "detail_property");
if ($db->connect_error) {
    die("Koneksi gagal: " . $db->connect_error);
}

$query = "SELECT * FROM property_detail";
$result = $db->query($query);
$data = array();

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
}
$db->close();
echo json_encode($data);

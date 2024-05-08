<?php

$db = new mysqli("localhost", "root", "", "detail_property");
if ($db->connect_error) {
    die("Koneksi gagal: " . $db->connect_error);
}

if (isset($_POST['id'])) {
    $id = $_POST['id'];
    $query = "DELETE FROM property_detail WHERE id = $id";

    if ($db->query($query) === TRUE) {
        echo "Data berhasil dihapus";
    } else {
        echo "Error: " . $db->error;
    }
} else {
    echo "ID tidak diterima";
}

$db->close();

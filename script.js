$(document).ready(function () {
  $.ajax({
    url: "data_detail.php",
    type: "GET",
    dataType: "json",
    success: function (data) {
      // Proses data di sini
      var table = $("#isidata tbody");
      $.each(data, function (index, item) {
        table.append(
          "<tr><td>" +
            item.Nama_property +
            "</td><td>" +
            item.Jenis_Property +
            "</td><td>" +
            item.Deskripsi_Property +
            "</td><td>" +
            item.Harga_Property +
            "</td><td>" +
            item.Pemilik_Property +
            '</td><td><button class="hapus-btn" data-id="' +
            item.id +
            '">Hapus</button></td></tr>'
        );
      });
    },
    error: function (xhr, status, error) {
      console.error(xhr.responseText);
    },
  });
});

$("#isidata tbody").on("click", ".hapus-btn", function () {
  var id = $(this).data("id");
  var row = $(this).closest("tr");
  $.ajax({
    url: "delete_detail.php",
    type: "POST",
    data: { id: id },
    success: function (response) {
      row.remove();
      console.log("Data berhasil dihapus");
    },
    error: function (xhr, status, error) {
      console.error(xhr.responseText);
    },
  });
});

$(document).on('turbolinks:load', function () {
  $('#order_vendor_id').on('change', function () {
    $('#vendor_products').empty();
    let vendor_id = $(this).children("option:selected").val();
    getProducts(vendor_id);
  });

  $('.product').on('click', function () {
    let id = $(this).data('product-id');
    removeProduct(id);
  });
})

function getProducts(vendorId) {
  if (vendorId !== '') {
    $.get(`/vendor/${vendorId}/products`, function (data, status) {
      data.map(product => {
        $('#vendor_products').append(
          "<div class='form-check'>" +
          "<input class='form-check-input mr-1' type='checkbox' value=" + product.id + " id=''>" +
          "<label class='form-check-label' for='defaultCheck2'>" + product.name + "</label>" +
          "<input class='' type='number' value=0 id='defaultCheck2'>" +
          "<label class='' for='defaultCheck2'>Quantity</label>" +
          "</div>"
        )
      });
    });
  } else {
    return false;
  }

}

function removeProduct(product_id) {
  $('#dlt_product_btn_' + product_id).on('click', function () {
    $('#product_' + product_id).remove();
  });
}
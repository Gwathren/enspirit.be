$(() => {
  $('#contact form').submit(() => {
    $("#contact .if-success").hide()
    $("#contact .if-error").hide()
    $("#contact .no-success").show()
    let email = $('#contact form input[name="email"]').val()
    let message = $('#contact form textarea[name="message"]').val()
    $.ajax({
      type: 'POST',
      url: '/contact',
      data: JSON.stringify({
        email: email,
        message: message
      }),
      contentType: "application/json",
      success: () => {
        $("#contact .if-success").show()
        $("#contact .no-success").hide()
      },
      error: () => {
        let subject = "Prise de contact"
        $("#contact .if-error a").attr("href", "mailto:info@enspirit.be" +
          "?from=" + email +
          "&subject=" + subject +
          "&body=" + message
        );
        $("#contact .if-error").show()
      }
    })
    return false
  })
})


document.addEventListener("DOMContentLoaded", function() {
    $('.swalert').on('click', function() {
        swal({
                title: 'Timer Test',
                text: 'This window has a 2s timer.',
                showCancelButton: true,
                confirmButtonText: 'Submit',
                closeOnConfirm: false,
                allowOutsideClick: false,
                timer: 2000
            },
            function() {
                swal({
                    title: 'Second Window!',
                    text: 'This window has no timer set'
                });
            });
    });
});



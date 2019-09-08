$(function () {
    $("tr #btnDelete").click(function (e) {
        e.preventDefault();
        var elemento = $(this);
        var IdSkin = elemento.parent().find('#idskin').text();
        swal({
            title: "Are you sure?",
            text: "Once deleted, you will not be able to recover this imaginary file!",
            icon: "warning",
            buttons: true,
            dangerMode: true,
        })
                .then((willDelete) => {
                    if (willDelete) {
                        eliminar(IdSkin);
                        swal("Poof! Your imaginary file has been deleted!", {
                            icon: "success",
                        }).then((willDelete)=>{
                            if(willDelete){
                                parent.location.href="ControllerSkin?accion=Carrito";
                            }
                        });
                    } else {
                        swal("Your imaginary file is safe!");
                    }
                });
    });
    function eliminar(IdSkin) {
        $.ajax({
            url: 'ControllerSkin?accion=Delete',
            type: "post",
            data: {IdSkin: IdSkin},
            success: function () {
            }
        })
    }
});
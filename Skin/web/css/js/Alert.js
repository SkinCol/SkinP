$(function () {
    $("tr #btnDelete").click(function (e) {
        e.preventDefault();
        var elemento = $(this);
        var IdSkin = elemento.parent().find('#idskin').text();
        swal({
            title: "Estas seguro?",
            text: "Una vez eliminado, ¡no podrá recuperar este archivo imaginario!",
            icon: "warning",
            buttons: true,
            dangerMode: true,
        })
                .then((willDelete) => {
                    if (willDelete) {
                        eliminar(IdSkin);
                        swal("Oye! Tu producto ha sido eliminado!", {
                            icon: "success",
                        }).then((willDelete)=>{
                            if(willDelete){
                                parent.location.href="ControllerSkin?accion=Carrito";
                            }
                        });
                    } else {
                        swal("Tu producto esta a salvo!");
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
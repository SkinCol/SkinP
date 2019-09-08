$(document).ready(function () {
    $("tr #btnDelete").click(function () {
        var IdSkin = $(this).parent().find("#id").val();
        eliminar(IdSkin);
    });
    function eliminar(IdSkin){
        var url = "ControllerSkin?accion=Delete";
        $.ajax({
            type: "POST",
            url: url,
            data: "IdSkin"+IdSkin,
            success: function(data, textStatues, jqXHR){
                alert("Registro eliminado!");
            }
        })
    }
});
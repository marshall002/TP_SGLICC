function openModalLogin() {
    $('#txtUsuario').val('');
    $('#txtClave').val('');
    $('#ckbRecuerdame').attr('checked', false);
    $('#txtUsuario').focus();
    modal('modalIniciarSesion');
}

function changeToRegister(obj) {
    //var id = obj.parents('.modal').attr('id');
    //modal(id); console.log(id);
    $('#txtNombre').val('');
    $('#txtApePat').val('');
    $('#txtApeMat').val('');
    $('#txtCorreo').val('');
    $('#txtPassword').val('');
    $('#txtPassword1').val('');
    $('#ckbTerminos').attr('checked', false);
    modal('modalRegistrar');
}

function changeToLogin(obj) {
    //var id = obj.parents('.modal').attr('id');
    //modal(id); console.log(id);
    //$('#txtUsuario').focus();
    $('#txtUsuario').val('');
    $('#txtClave').val('');
    $('#ckbRecuerdame').attr('checked', false);
    $('#txtUsuario').focus();
    modal('modalIniciarSesion');
}

function changeToRemember(obj) {
    //var id = obj.parents('.modal').attr('id');
    //modal(id);
    $('#txtCorreoConfirm').val('');
    modal('modalRecordar');
}
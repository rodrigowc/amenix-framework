
//CHIPS MATERIALIZE
$('.chips').chips(); $('.chips-placeholder').chips({ placeholder: 'Digite a habilidade e aperte Enter', secondaryPlaceholder: "+Tag's", });

//VERIFICA SE O EMAIL JÁ EXISTE NO MOMENTO DO CADASTRO
var email = $("#email"); email.keyup(function() { $.ajax({ url: './controllers/auth/email-verify.php', type: 'POST', data:{ "email" : email.val()}, success: function(data) { console.log(data); data = $.parseJSON(data); $("#resposta").text(data.email); } }); });

//VERIFICA SE O USUÁRIO JÁ EXISTE NO MOMENTO DO CADASTRO
var user = $("#user"); user.keyup(function() { $.ajax({ url: './controllers/auth/user-verify.php', type: 'POST', data:{ "user" : user.val()}, success: function(data) { console.log(data); data = $.parseJSON(data); $("#resposta2").text(data.user); } }); });

// ECONDE OU MOSTRA SENHA EM LOGIN
$(document).on('click', '#showpass1', function() {    $('#current-password').prop('type', 'text');    $('#showpass2').css('display', 'block');    $('#showpass1').css('display', 'none');});$(document).on('click', '#showpass2', function() {    $('#current-password').prop('type', 'password');    $('#showpass1').css('display', 'block');    $('#showpass2').css('display', 'none');});

// ECONDE OU MOSTRA SENHA EM REGISTRO
$(document).on('click', '#showpass1register', function() {    
    $('#current_password').prop('type', 'text');    
    $('#showpass2register').css('display', 'block');    
    $('#showpass1register').css('display', 'none');
});

$(document).on('click', '#showpass2register', function() {    
    $('#current_password').prop('type', 'password');    
    $('#showpass1register').css('display', 'block');    
    $('#showpass2register').css('display', 'none');
});

$(document).on('click', '#showpass3register', function() {    
    $('#current_password_2').prop('type', 'text');    
    $('#showpass4register').css('display', 'block');    
    $('#showpass3register').css('display', 'none');
});

$(document).on('click', '#showpass4register', function() {    
    $('#current_password_2').prop('type', 'password');    
    $('#showpass3register').css('display', 'block');    
    $('#showpass4register').css('display', 'none');
});


// MOSTRA OU ESCONDE O SAVE/UNSAVE PRODUCT
$('#textview').click(function(){
    $('#description-modal').removeClass('truncate');
    $('#textview').css('display', 'none');
    $('#textview2').css('display', 'block');
  });

  $('#textview2').click(function(){
    $('#description-modal').addClass('truncate');
    $('#textview').css('display', 'block');
    $('#textview2').css('display', 'none');
  });

  $('#modal-save').click(function(){
    $('#modal-save2').css('display', 'block');
    $('#modal-save').css('display', 'none');
    M.toast({html: 'salvo com sucesso', classes: 'green white-text'}, 1000);
  });

  $('#modal-save2').click(function(){
    $('#modal-save').css('display', 'block');
    $('#modal-save2').css('display', 'none');
    M.toast({html: 'removido com sucesso', classes: 'green white-text'}, 1000);
  });
/*================================================================================
	Item Name: Materialize - Material Design Admin Template
	Version: 4.0
	Author: PIXINVENT
	Author URL: https://themeforest.net/user/pixinvent/portfolio
================================================================================

NOTE:
------
PLACE HERE YOUR OWN JS CODES AND IF NEEDED.
WE WILL RELEASE FUTURE UPDATES SO IN ORDER TO NOT OVERWRITE YOUR CUSTOM SCRIPT IT'S BETTER LIKE THIS. */

// SIDENAV
document.addEventListener('DOMContentLoaded', function() { var elems = document.querySelectorAll('.sidenav'); var instances = M.Sidenav.init(elems,{ draggable: false, preventScrolling: true, }); });

// DROPDOWN TRIGGER
document.addEventListener('DOMContentLoaded', function() { var elems = document.querySelectorAll('.dropdown-trigger'); var instances = M.Dropdown.init(elems, { coverTrigger: false, constrainWidth: false, edge: 'right', }); });

// CAROUSEL
document.addEventListener('DOMContentLoaded', () => { const carousel = document.querySelectorAll('.carousel'); M.Carousel.init(carousel, { fullWidth: false, indicators: true, }); let indicatorItems = document.querySelectorAll('.carousel .indicator-item'), slideTime = 3000, activeClass = "active"; setInterval(() => { indicatorItems.forEach(el => { if (el.classList.contains(activeClass)) { sib = el.nextElementSibling; if (sib == null) { indicatorItems[0].click(); } else { sib.click() } } }); }, slideTime); });

// MODAL
document.addEventListener('DOMContentLoaded', function() { var elems = document.querySelectorAll('.modal'); var instances = M.Modal.init(elems,{ preventScrolling: true, inDuration: 300, outDuration: 100, preventScrolling: false }); });

// COLLAPSIBLE
document.addEventListener('DOMContentLoaded', function() { var elems = document.querySelectorAll('.collapsible'); var instances = M.Collapsible.init(elems); });

// TOOLTIPPED
document.addEventListener('DOMContentLoaded', function() { var elems = document.querySelectorAll('.tooltipped'); var instances = M.Tooltip.init(elems); });

// SLIDER
document.addEventListener('DOMContentLoaded', function() { var elems = document.querySelectorAll('.slider'); var instances = M.Slider.init(elems, { indicators: false, interval: 6000  }); });

// CONFERE SE A SENHA É SEGURA OU NÃO
function validarSenhaForca(){ var senha = document.getElementById('current_password').value; var forca = 0; document.getElementById("impSenha").innerHTML = "Senha " + senha; if((senha.length >= 4) && (senha.length <= 7)){ forca += 10; }else if(senha.length > 7){ forca += 25; } if((senha.length >= 5) && (senha.match(/[a-z]+/))){ forca += 10; } if((senha.length >= 6) && (senha.match(/[A-Z]+/))){ forca += 20; } if((senha.length >= 7) && (senha.match(/[@#$%&;*]/))){ forca += 25; } if(senha.match(/([1-9]+)\1{1,}/)){ forca += -25; } mostrarForca(forca); } function mostrarForca(forca){ document.getElementById("impForcaSenha").innerHTML = "Força: " + forca; if(forca < 30 ){ document.getElementById("erroSenhaForca").innerHTML = "<span style='font-weight: 700; color: #ff0000'>Senha Fraca</span>"; }else if((forca >= 30) && (forca < 50)){ document.getElementById("erroSenhaForca").innerHTML = "<span style='font-weight: 700; color: #FFD700'>Média</span>"; }else if((forca >= 50) && (forca < 70)){ document.getElementById("erroSenhaForca").innerHTML = "<span style='font-weight: 700; color: #7FFF00'>Forte</span>"; }else if((forca >= 70) && (forca < 100)){ document.getElementById("erroSenhaForca").innerHTML = "<span style='font-weight: 700; color: #008000'>Muito Forte</span>"; } }

//VERIFICA SE AS SENHAS NO MOMENTO DO CADASTRO SÃO IGUAIS
function validar(){ var senha = formuser.current_password.value; var rep_senha = formuser.current_password_2.value; if(senha == "" || senha.length <= 7){ M.toast({html: 'Insira uma senha com no mínimo 8 caracteres', classes: 'red'}); formuser.senha; return false; } if(rep_senha == "" || rep_senha.length <= 5){ M.toast({html: 'Insira uma senha com no mínimo 8 caracteres', classes: 'red'}); formuser.rep_senha; return false; } if (senha != rep_senha) { M.toast({html: 'Senhas não conferem', classes: 'red'}); formuser.senha; return false; } }

// ESCONDER OU MOSTRAR CONTEUDO HTML COM SELEÇÃO RADIO
function show1(){ document.getElementById('div1').style.display ='block'; document.getElementById('div2').style.display = 'none'; } function show2(){ document.getElementById('div2').style.display = 'block'; document.getElementById('div1').style.display = 'none'; }

// ESCONDER OU MOSTRAR CONTEUDO HTML COM SELECÃO SWITCH
function showPrice1(){ var estilo1 = window.getComputedStyle(document.querySelector('#price1')).display; var status = document.getElementById('switch').value; if (status) { if (estilo1 == 'block') { document.getElementById('price1').style.display ='none'; document.getElementById('price2').style.display ='block'; }else{ document.getElementById('price1').style.display ='block'; document.getElementById('price2').style.display ='none'; } } }

// CONVERSÃO DE MOEDA
function moeda(a, e, r, t) { let n = "" , h = j = 0 , u = tamanho2 = 0 , l = ajd2 = "" , o = window.Event ? t.which : t.keyCode; a.value = a.value.replace('R$ ',''); if (n = String.fromCharCode(o), -1 == "0123456789".indexOf(n)) return !1; for (u = a.value.replace('R$ ','').length, h = 0; h < u && ("0" == a.value.charAt(h) || a.value.charAt(h) == r); h++) ; for (l = ""; h < u; h++) -1 != "0123456789".indexOf(a.value.charAt(h)) && (l += a.value.charAt(h)); if (l += n, 0 == (u = l.length) && (a.value = ""), 1 == u && (a.value = "R$ 0" + r + "0" + l), 2 == u && (a.value = "R$ 0" + r + l), u > 2) { for (ajd2 = "", j = 0, h = u - 3; h >= 0; h--) 3 == j && (ajd2 += e, j = 0), ajd2 += l.charAt(h), j++; for (a.value = "R$ ", tamanho2 = ajd2.length, h = tamanho2 - 1; h >= 0; h--) a.value += ajd2.charAt(h); a.value += r + l.substr(u - 2, u) } return !1 }

// MOSTRA A SENHA - LOGIN
function showPass(){ var pass = document.getElementById('current-password'); if(pass.type == 'password'){ pass.type = 'text'; document.getElementById('on').style.display = 'block'; document.getElementById('off').style.display = 'none'; }else{ pass.type = 'password'; document.getElementById('on').style.display = 'none'; document.getElementById('off').style.display = 'block'; } }

// PESQUISA DE CEP 
function limpa_formulário_cep() { document.getElementById('rua').value=(""); document.getElementById('bairro').value=(""); document.getElementById('cidade').value=(""); document.getElementById('uf').value=(""); document.getElementById('ibge').value=(""); } function meu_callback(conteudo) { if (!("erro" in conteudo)) { document.getElementById('rua').value=(conteudo.logradouro); document.getElementById('bairro').value=(conteudo.bairro); document.getElementById('cidade').value=(conteudo.localidade); document.getElementById('uf').value=(conteudo.uf); document.getElementById('ibge').value=(conteudo.ibge); } else { limpa_formulário_cep(); alert("CEP não encontrado."); } }
function pesquisacep(valor) { var cep = valor.replace(/\D/g, ''); if (cep != "") { var validacep = /^[0-9]{8}$/; if(validacep.test(cep)) { document.getElementById('rua').value="aguarde..."; document.getElementById('bairro').value="aguarde..."; document.getElementById('cidade').value="aguarde..."; document.getElementById('uf').value="aguarde..."; document.getElementById('ibge').value="aguarde..."; var script = document.createElement('script'); script.src = 'https://viacep.com.br/ws/'+ cep + '/json/?callback=meu_callback'; document.body.appendChild(script); } else { limpa_formulário_cep(); alert("Formato de CEP inválido."); } } else { limpa_formulário_cep(); } };

// MATERIAL-BOXED
document.addEventListener('DOMContentLoaded', function() { var elems = document.querySelectorAll('.materialboxed'); var instances = M.Materialbox.init(elems); });
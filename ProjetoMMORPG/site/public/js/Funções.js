var usuarioNome = sessionStorage.NOME_USUARIO

var usuarioClasse = sessionStorage.CLASSE_USUARIO

function loginCam() {
    window.location.assign("login.html")

}
window.onload = function () {
    logarNome();
}
function logarNome() {
    if (usuarioNome == null) {
        nome_span.innerHTML = ``
    } else {
        nome_span.innerHTML = `Olá, ${usuarioNome}`
    }
}
function mostrarBoneco() {
    var ladino =  "assets/images/ladino.png"
    var guerreiro = "assets/images/guerreio.png" 
    var mago = "assets/images/mago.png"
    if (sel_classe.value == "ladino") {
        boneco.innerHTML = `<img src="${ladino}" class = "c_boneco">`
        papiroBoneco.style.display = "block"
    }
    else if (sel_classe.value == "guerreiro") {
        boneco.innerHTML = `<img src="${guerreiro}" class = "c_boneco">`
        papiroBoneco.style.display = "block"
    } else if (sel_classe.value == "mago") {
        boneco.innerHTML = `<img src="${mago}" class = "c_boneco">`
        papiroBoneco.style.display = "block"
    }

}
function cadastroCam() {
    window.location.assign("cadastro.html")
}

function historiaCam() {
    window.location.assign("index.html")
}
function sobreCam() {
    window.location.assign("sobre.html")
}
function jogarJogo() {
    modalJogo.style.display = "block"
    div_header.style.display = "none"
}
function fecharMapa() {
    modalJogo.style.display = "none"
    div_header.style.display = "block"

}


function voltarHist() {
    if (contador == 1) {
        quest1.style.display = "none"
        quest2.style.display = "block"
    } else if (contador == 2) {
        quest2.style.display = "none"
        quest3.style.display = "block"
    } else if (contador == 3) {
        quest3.style.display = "none"
        quest4.style.display = "block"
    } else if (contador == 4) {
        quest4.style.display = "none"
        quest5.style.display = "block"
    }
    papiroH.style.display = "none"


}
function mostrarHistoria() {
    papiroH.style.display = "block"
    img_esquerda.src = `assets/images/imgbin_human-behavior-thought-art-gandalf-png.png`
    if (contador == 0) {
        contador++

    }

}
function mostrarHistoria1() {
    img_esquerda.src = `assets/images/imgbin_sauron-samwise-gamgee-gandalf-frodo-baggins-drawing-png.png`
    papiroH.style.display = "block"
    if (contador == 1) { contador++ }

}
function mostrarHistoria2() {
    img_esquerda.src = `assets/images/pngkey.com-frodo-basggins-png-5898534.png`
    img_esquerda.style = "width:70%; margin-left:50px;"
    papiroH.style.display = "block"
    if (contador == 2) {
        contador++

    }

}
function mostrarHistoria3() {
    img_esquerda.src = `assets/images/aragorn.png`
    papiroH.style.display = "block"
    if (contador == 3) { contador++ }
}
function mostrarHistoria4() {
    papiroH.style.display = "block"
    if (contador == 4) { contador++ }

}
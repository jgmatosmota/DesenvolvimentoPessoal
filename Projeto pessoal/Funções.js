

function loginCam(){
    window.location.assign("login.html")

}

function cadastroCam(){
    window.location.assign("cadastro.html")
}

function historiaCam(){
    window.location.assign("historia.html")
}
function jogoCam(){
    window.location.assign("jogo.html")
}

function mostrarHistoria(){
    papiroH.style.display="block"
   if(contador==0) {contador++}
}

function voltarHist(){
        
    papiroH.style.display="none"
    quest2.style.display="block"


}
function mostrarHistoria1(){
    papiroH.style.display="block"
    quest3.style.display="block"
   if(contador==1){contador++}
   
}
function mostrarHistoria2(){
    papiroH.style.display="block"
   if(contador==2){contador++}
   quest4.style.display="block"
   
}
function mostrarHistoria3(){
    papiroH.style.display="block"
   if(contador==3){contador++}
}
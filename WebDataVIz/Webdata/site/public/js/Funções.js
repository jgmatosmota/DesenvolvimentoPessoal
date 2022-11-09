

function loginCam(){
    window.location.assign("login.html")

}

function cadastroCam(){
    window.location.assign("cadastro.html")
}

function historiaCam(){
    window.location.assign("index.html")
}
function jogoCam(){
    window.location.assign("jogo.html")
}


function voltarHist(){
    
    papiroH.style.display="none"
    quest2.style.display="block" 
    
    
}
var sauron = ``
function mostrarHistoria(){
    papiroH.style.display="block"
    img_esquerda.src=`assets/images/imgbin_human-behavior-thought-art-gandalf-png.png`
    img_esquerda.style = "width:"
   if(contador==0) {contador++}
    
}
function mostrarHistoria1(){
    img_esquerda.src= `assets/images/imgbin_sauron-samwise-gamgee-gandalf-frodo-baggins-drawing-png.png`
    papiroH.style.display="block"
    quest3.style.display="block"
   if(contador==1){contador++}
   
}
function mostrarHistoria2(){
    img_esquerda.src = `assets/images/pngkey.com-frodo-baggins-png-5898534.png`
    img_esquerda.style= "width:70%; margin-left:50px;"
    papiroH.style.display="block"
   if(contador==2){contador++}
   quest4.style.display="block"
   
}
function mostrarHistoria3(){
    papiroH.style.display="block"
   if(contador==3){contador++}
}
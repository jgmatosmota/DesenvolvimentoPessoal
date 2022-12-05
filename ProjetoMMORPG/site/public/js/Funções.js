var usuarioNome = sessionStorage.NOME_USUARIO
var usuarioEmail = sessionStorage.EMAIL_USUARIO
var usuarioClasse = sessionStorage.CLASSE_USUARIO
var idUsuario = sessionStorage.ID_USUARIO

function loginCam() {
    window.location.assign("login.html")

}
function rankingCam() {
    window.location.assign("ranking.html")
}
function logoutCam() {
    sessionStorage.clear();
    btnS.style.display = 'none'
    btcC.style.display = 'block'
    btnL.style.display = 'block'
    loginCam();
}
function logarNome() {
    if (usuarioNome == null) {
        nome_span.innerHTML = ``
        btnS.style.display = 'none'
    } else {
        btnS.style.display = 'block'
        btcC.style.display = 'none'
        btnL.style.display = 'none'
        nome_span.innerHTML = `Olá, ${usuarioNome}`
    }
}
function mostrarBoneco() {
    var ladino = "assets/images/ladino.png"
    var guerreiro = "assets/images/guerreio.png"
    var mago = "assets/images/mago.png"
    if (sel_classe.value == "1") {
        boneco.innerHTML = `<img src="${ladino}" class = "c_boneco">`
        papiroBoneco.style.display = "block"
    }
    else if (sel_classe.value == "2") {
        boneco.innerHTML = `<img src="${guerreiro}" class = "c_boneco">`
        papiroBoneco.style.display = "block"
    } else if (sel_classe.value == "3") {
        boneco.innerHTML = `<img src="${mago}" class = "c_boneco">`
        papiroBoneco.style.display = "block"
    } else {
        papiroBoneco.style.display = "none"
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
    if (usuarioNome == null) {
        alert(`Você deve estar logado para jogar o jogo`)
    } else {


        modalJogo.style.display = "block"
        div_header.style.display = "none"
    }
}
function fecharMapa() {
    modalJogo.style.display = "none"
    div_header.style.display = "block"
    contador = 0

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
    } else if (contador == 5) {
        quest5.style.display = "none"
        quest6.style.display = "block"
    } else if (contador == 6) {
        quest6.style.display = "none"
    }
    papiroH.style.display = "none"


}
function mostrarHistoria() {
    papiroH.style.display = "flex"

    if (contador == 0) {
        contador++
        img_esquerda.src = `assets/images/princesa.png`
        p_texto.innerHTML = `Depois de receber a carta da nobre princesa
        Elizabeth Victus, você grande
        herói ${usuarioNome} foi convocado para ajudar na recuperação do antigo artefato denomonicom,
        de acordo com a carta a princesa conta que em uma invasão das criaturas da
        Cidadela do Caos o poderoso artefato foi quebrado em duas partes e roubado pelas
        criaturas, você foi convocado para invadir a morada dessas criaturas e tentar recuperar
        o antigo artefato que garantia a proteção de todo o povo de Azyllom, como você é
        conhecido por
        todo o continete de Mota'sland, a família real Victus acredita que você é o único ser
        capaz de realizar
        tal feito com sucesso!<Br>
        Você aceita essa missão?`
    }

}
function mostrarHistoria1() {
    papiroH.style.display = "flex"

    if (contador == 1) {
        contador++;
        img_esquerda.src = `assets/images/criatura.png`
        p_texto.innerHTML = `Agora que aceitou a nobre missão de recuperar as partes do antigo nemonomicos, você invadirá a perigosa Cidadela
        do Caos para recuperar o artefato. <br> Mas depois de derrotar incontáveis monstros com formas indescritíveis você percebeu que
        durante a batalha das criaturas contra os cavaleiros de Azyllom o artefato foi quebrado em duas partes e perdeus suas propriedades mágicas.
        <Br> Ao interrogar uma das criaturas derrotadas acaba falando que a outra parte do artefado está escondida na Torre Perdida sob
        a proteção de criaturas humanoides, agora a única escolha possível é invadir a torre e recuperar o artefato!`}

}
function mostrarHistoria2() {
    papiroH.style.display = "flex"
    if (contador == 2) {
        contador++;
        img_esquerda.src = `assets/images/zombie.png`
        p_texto.innerHTML = `Após caminhar por horas na floresta você percebe que as árvores estão ficando um pouco "sem vida" e com um
    aspecto verde e gosmento, o ar do ambiente começa a ficar pesado e você tem a sensação de que algo ou alguém está te observando.<Br>
    Ao prestar mais atenção nas árvores a sua frente você se depara com um caminho que leva a uma antiga torre abandonada, com um
    aspecto decrépto e antigo, como se fosse esquecido por muitos e muitos anos.<br>
    Ao entrar na torre você se depara com criaturas humanoides, embora assutadoras elas parecem ser fragéis e sem forças,
    sem muita dificuldade você consegue ascender ao topo da torre, onde dentro de um báu encontra a outra parte do artefato.`
    }

}
function mostrarHistoria3() {
    papiroH.style.display = "flex"

    if (contador == 3) {
        contador++;
        img_esquerda.src = `assets/images/magoLagarto.png`
        p_texto.innerHTML = `Ao analisar as duas partes do artefato quebrado você percebe que ele acabou perdendo suas
        propriedades mágicas e que para que ele retorne a sua função original ele deve ser re-energizado por seus criadores.<BR>
        Sabendo disso você percorre uma longa jornada com seu cavalo até a cidade perdida de Amon'keth, onde lá habitam
        os antigos seres lagartos com um conhecimento mágico que precede séculos<Br> Chegando lá um dos Magos vem falar diretamente com
        você dizendo que já estava prevendo sua chegada, após longas horas de conversa e trabalho o mago consegue consertar o artefato e 
        energiza-lo corretamente.`
    }
}
function mostrarHistoria4() {
    papiroH.style.display = "flex"
    if (contador == 4) {
        contador++
        img_esquerda.src = `assets/images/princesaCom.png`
        p_texto.innerHTML = `Assim que você adentra os portões de Azyllom os habitantes já o reconhecem e te olham
        com uma feição de alegria e esperança, pois sabem que se você está ali é porquê conseguiu retornar da sua jornada seguro 
        e com o objetivo concluido<BR>
        Já adentrando o castelo real a princesa Elizabeth Victus vem ao seu encontro para saber como tudo ocorreu, você a entrega o 
        artefato, ao toca-lo ela já consegue sentir a energia mágica presente nele <Br>
        Ela caminha em direção a câmara que antes se encontrava o artefato e o coloca em seu pedestal, assim trazendo de volta a paz ao
        reino de Azyllom.`

    }

}
function mostrarHistoria5() {
    papiroH.style.display = "flex"
    if (contador == 5) {
        contador++
        containerBotao.innerHTML = `
        <button class="c_botaoX" onclick="viajar()">Viajar!</button> 
        <button class="c_botaoX" onclick="ficar()">Ficar!</button>
        `
        if (usuarioClasse == 1) {
            img_esquerda.src = `assets/images/ladinoFeliz.png`
        } else if (usuarioClasse == 2) {
            img_esquerda.src = `assets/images/guerreiroFeliz.png`
        } else if (usuarioClasse == 3) {
            img_esquerda.src = `assets/images/magoFeliz.png`
        }
        p_texto.innerHTML = `Depois de alguns dias você decide partir para a proxima jornada atrás de aventura, mas assim que você
        chega a marinha para tentar conseguir um navio para viagem, a princesa Elizabeth vem ao seu encontro e te faz uma oferta...<Br>
        Ela te oferece um assentamento nos redores do castelo Real, um trabalho como guarda costas pessoal da familia real e um salário
        digno de um nobre<Br>
        Mas o seu espírito aventureiro não sabe se essa seria a vida ideal para seguir, se continua as suas aventuras cheias de 
        perigo e emoção, ou se decide dar um fim a isso e aceita essa oferta<br>
        Oque você faz?`


    }

}

var listaDecisao = []
function viajar() {
    if (contador == 6) {
        var respostaFinal = 1
        listaDecisao.push(respostaFinal)
        if (usuarioClasse == 1) {
            img_esquerda.src = `assets/images/ladinoDesp.png`
        } else if (usuarioClasse == 2) {
            img_esquerda.src = `assets/images/guerreiroDesp.png`
        } else if (usuarioClasse == 3) {
            img_esquerda.src = `assets/images/magoDesp.png`
        }
        p_texto.innerHTML = `Após muito tempo pensando e analisando, você olhou para trás e relembrou
        de todas as aventuras e situações que passou, e sabe que é isso que você quer para o seu futuro,
        mesmo que durante esse período dessa nova aventura você foi reconhecido como nunca antes pelos seus atos,
        mas mesmo assim você decide partir......<Br>
        A próxima embarcação para o continente vizinho sairá no final do dia....<Br>
        Após alguns dias no mar você chega ao continente de Binho'sKingdom, e está pronto para a próxima aventura!<br><Br>
        Obrigado por jogar, boa sorte com sua nova aventura!`;
        containerBotao.innerHTML = `<button class="c_botaoX" onclick="voltarHist()">Finalizar!</button>`
    }
    fetch("/usuarios/cadastrarResposta", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify({
            respostaA: listaDecisao[0],
            idUsuario: idUsuario
        })
    }).then(function (resposta) {

        if (resposta.ok) {
            // alert(`deu certo`)

        } else {
            throw (`aconteceu algum erro`)
        }
    });

}

function ficar() {
    if (contador == 6) {
        var respostaFinal = 2
        listaDecisao.push(respostaFinal)
        p_texto.innerHTML = `Bom, depois de toda essa ventura você olhou pro seu passado e relembrou
        todas as aventuras que já vicenciou, todos os lugares que já conheceu e conseguiu enxergar que talvez seria
        a hora de viver uma vida diferente , mais tranquila e com uma segurança maior.......
        Você deixa seu espírito aventureiro um pouco de lado e decide ficar no reino de Azyllom a convite da princesa.<br>
        No dia seguinte a família real te da o titulo de Sir e te da uma propriedade nos redores do castelo<Br>
        E agora você se sente pronto para viver essa nova fase da sua vida.....<Br><br>
        Obrigado por jogar, boa sorte com sua nova aventura!
        `;
        containerBotao.innerHTML = `<button class="c_botaoX" onclick="voltarHist()">Finalizar!</button>`
    }
    fetch("/usuarios/cadastrarResposta", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify({
            respostaA: listaDecisao[0],
            idUsuario: idUsuario
        })
    }).then(function (resposta) {

        if (resposta.ok) {
            // alert(`deu certo`)

        } else {
            throw (`aconteceu algum erro`)
        }
    });


}
window.onload = function () {
    logarNome();
    puxarTudo();
}

function puxarTudo() {
    fetch("/usuarios/trazerLista").then(function (resposta) {

        if (resposta.ok) {
            resposta.json().then((bananinha) => {
                quantidadeClasse.innerHTML = `${bananinha[0].ClasseEscolhida} `
                spanClasse.innerHTML = `${bananinha[0].nomeClasse}`
                var nome = bananinha[0].nomeClasse
                if (nome == 'ladino') {
                    imagemEscolhido.innerHTML = `<img src="assets/images/ladinoFeliz.png" class="c_imgClasseR" id="imgRanking">`
                } else if (nome == 'guerreiro') {
                    imagemEscolhido.innerHTML = `<img src="assets/images/guerreiroFeliz.png" class="c_imgClasseR" id="imgRanking">`
                } else if (nome == 'mago') {
                    imagemEscolhido.innerHTML = `<img src="assets/images/magoFeliz.png" class="c_imgClasseR" id="imgRanking">`
                }

            })

        } else {
            throw (`aconteceu algum erro`)
        }
    });
    fetch("/usuarios/trazerListaFinal").then(function (resposta) {

        if (resposta.ok) {
            resposta.json().then((bananinha) => {
                spanFinal.innerHTML = `${bananinha[0].resultado} `
                spanFinalQuant.innerHTML = ` ${bananinha[0].FinalEscolhido}`
                var resultado = bananinha[0].resultado
                if (resultado == 'Viajar') {
                    imagemEscolhidoFinal.innerHTML = `<img src="assets/images/princesaCom.png" class="c_imgClasseR1" id="imgRankingFinal">`
                } else if (resultado == 'ficar') {
                    imagemEscolhidoFinal.innerHTML = `<img src="assets/images/princesa.png" class="c_imgClasseR1" id="imgRankingFinal">`
                }

            })

        } else {
            throw (`aconteceu algum erro`)
        }
    });
    fetch("/usuarios/trazerListaJogadores").then(function (resposta) {

        if (resposta.ok) {
            resposta.json().then((bananinha) => {
                for (var index = 0; index < bananinha.length; index++) {
                    var usuarioListaLoop = bananinha[index];
                    // rankingUsuario.innerHTML+=`${usuarioListaLoop.nick}<br>`
                    // rankingClasse.innerHTML+=`${usuarioListaLoop.classeUsuario}<br>`

                    caixaUsuarios.innerHTML += `
                    <div id="caixaUsuario" class="c_papiroRankingCaixa">
                        <div id="divNome" class="nomeRank">
                            <span id="rankingUsuario">${usuarioListaLoop.nick}</span>
                        </div>
                        
                        <div id="divClasse" class="classeRank">
                            <span id="rankingClasse">${usuarioListaLoop.classeUsuario}</span>
                        </div>

                            
                    </div>
                    `


                }

            })

        } else {
            throw (`aconteceu algum erro`)
        }
    });


}
function sugestao() {
    papiroSug.style.display = "flex"

}
function enviarSug() {
    var valor = in_sugestao.value
    fetch("/usuarios/cadastrarSugestao", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify({
            sugestaoA: valor,
            idUsuario: idUsuario
        })
    }).then(function (resposta) {

        if (resposta.ok) {
            // alert(`deu certo`)
            alert(`Sugestão enviada com sucesso!`)
            papiroSug.style.display = "none"
        } else {
            throw (`aconteceu algum erro`)
        }
    });
}
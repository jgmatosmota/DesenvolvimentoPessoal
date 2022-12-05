var database = require("../database/config")

function listar() {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function listar()");
    var instrucao = `
        SELECT * FROM usuario;
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function entrar(email, senha) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function entrar(): ", email, senha)
    var instrucao = `
        SELECT * FROM usuario WHERE emailUsuario = '${email}' AND senhaUsuario = sha2('${senha}',256);
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

// Coloque os mesmos parâmetros aqui. Vá para a var instrucao
function cadastrar(nome, senha,email, classe ) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function cadastrar():", nome, email, senha);
    
    // Insira exatamente a query do banco aqui, lembrando da nomenclatura exata nos valores
    //  e na ordem de inserção dos dados.
    var instrucao = `
        INSERT INTO usuario (nomeUsuario, senhaUsuario, emailUsuario , fkClasse) VALUES ('${nome}', sha2('${senha}',256), '${email}', '${classe}');
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
  
}
function cadastrarResposta (final, usuario){
    console.log (`insert deu certo`)
    var instrucao = `
        update usuario set fkJogo = ${final} where idusuario =  ${usuario} ;
    `;
    return database.executar(instrucao);
}
function trazerLista (){
    var instrucao = `
    select COUNT(fkClasse) as 'ClasseEscolhida', nomeClasse  from usuario 
     join classe on fkClasse = idClasse group by fkClasse order by fkClasse desc limit 1;
    `
    return database.executar(instrucao);

};
function trazerListaFinal() {
    var instrucao = `
    select COUNT(fkJogo) as 'FinalEscolhido', resultado  from usuario 
     join decisao on fkJogo = idDecisao group by resultado order by resultado desc limit 1;
    `;
    return database.executar(instrucao);

};
function trazerListaJogadores() {
    var instrucao = `
    select nomeUsuario as 'nick', nomeClasse as
     'classeUsuario' from usuario join classe on fkClasse = idClasse;  
    `;
    return database.executar(instrucao);

};
function cadastrarSugestao(sugA,idUsu){
    var instrucao = `
    insert into sugestao(descricao, fkUsuario) values ('${sugA}', ${idUsu} );  
    `;
    return database.executar(instrucao);
    
}

module.exports = {
    entrar,
    cadastrar,
    listar,
    cadastrarResposta,
    trazerLista,
    trazerListaFinal,
    trazerListaJogadores,
    cadastrarSugestao
};
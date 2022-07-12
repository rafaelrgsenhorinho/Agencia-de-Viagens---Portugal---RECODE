programa {
	inteiro n, f, t, y
	cadeia clientes[50][4]
	cadeia destinos[50][5]
	
	

	funcao inicio() {
	    inteiro opcaoInicio
	    
		escreva("***************************", "\n")
		escreva("Agência de Viagens 0 - MENU", "\n")
		escreva("---------------------------", "\n")
		escreva("--------Casdastros---------", "\n")
		escreva("---------------------------", "\n")
		escreva("   1.Cadastro de Cliente   ", "\n")
		escreva("   2.Cadastro de Destino   ", "\n")
		escreva("---------------------------", "\n")
		escreva("--------Consultas----------", "\n")
		escreva("---------------------------", "\n")
		escreva("   3.Consulta de Cliente   ", "\n")
		escreva("   4.Consulta de Destino   ", "\n")
		escreva("---------------------------", "\n")
		escreva("-----Digite 5 para sair----", "\n")
		escreva("---------------------------", "\n")
		escreva("", "\n")
		escreva("", "\n")
		escreva("Opção:")
		leia(opcaoInicio)
		escreva("***************************", "\n")
		
		escolha(opcaoInicio) {
		caso 1:   cadastroDeCliente()
		caso 2:   cadastroDeDestino()
		caso 3:	consultaDeCliente()
		caso 4:	consultaDeDestino()
		caso 5:   escreva("Obrigado por utilizar a Agência de Viagens 0", "\n")
		pare
		caso contrario: escreva("Opção Inválida", "\n")
		inicio()			
		}
	}

	
	funcao cadastroDeCliente() {	
		cadeia cadClienteNome, cadClienteEmail, cadClienteCPF, cadClienteEnd
		inteiro quantCadastroClient
		

		escreva("***************************", "\n")
		escreva("Digite a quantidade de Clientes a serem cadastrados.", "\n")
	    	leia(quantCadastroClient)
	    	t = quantCadastroClient
	    	
		para(n = 0; n < quantCadastroClient; n++) {
		
			 
	    	escreva("Digite o nome do Cliente.", "\n")
	    	leia(cadClienteNome)
	    	clientes[n][0] = cadClienteNome
	    	escreva("Digite o CPF.)", "\n")
	    	leia(cadClienteCPF)
	    	clientes[n][1] = cadClienteCPF
	    	escreva("Digite o e-mail.", "\n")
	    	leia(cadClienteEmail)
	    	clientes[n][2] = cadClienteEmail
	    	escreva("Digite o endereço.", "\n")
	    	leia(cadClienteEnd)
	    	clientes[n][3] = cadClienteEnd
		}
		escreva("***************************", "\n")
		escreva("Cadastros realizados!", "\n")
		escreva("***************************", "\n")
		
		
		inicio()
	}

	
	funcao cadastroDeDestino() {
		cadeia cadDestinoPais, cadDestinoEstado, cadDestinoCidade, cadDestinoLocal, cadDestinoValor
		inteiro quantCadastroDest
		
		escreva("***************************", "\n")
		escreva("Digite a quantidade de Destinos a serem cadastrados.", "\n")
	    	leia(quantCadastroDest)
	    	y = quantCadastroDest

	    	para(f = 0; f < quantCadastroDest; f++) { 
	    	escreva("Digite o País de Destino.", "\n")
	    	leia(cadDestinoPais)
	    	destinos[f][0] = cadDestinoPais
	    	escreva("Digite o Estado de Destino.", "\n")
	    	leia(cadDestinoEstado)
	    	destinos[f][1] = cadDestinoEstado
	    	escreva("Digite a Cidade de Destino.", "\n")
	    	leia(cadDestinoCidade)
	    	destinos[f][2] = cadDestinoCidade
	    	escreva("Digite o local.", "\n")
	    	leia(cadDestinoLocal)
	    	destinos[f][3] = cadDestinoLocal
	    	escreva("Digite o valor do pacote.", "\n")
	    	leia(cadDestinoValor)
	    	destinos[f][4] = cadDestinoValor
	    	}
	    	escreva("***************************", "\n")
	    	escreva("Cadastros realizados!", "\n")
	    	escreva("***************************", "\n")
	    	
	    	inicio()
	}

	
	funcao consultaDeCliente() {

		inteiro consultaTipoClient, comp_linha
		inteiro opcaoCliente
		
		escreva("***************************", "\n")
		escreva("Escolha o tipo de Consulta de Clientes", "\n")
		escreva("1. Consultar por Nome", "\n")
		escreva("2. Consultar por CPF", "\n")
		escreva("3. Voltar ao menu principal", "\n")
		escreva("***************************", "\n")
	    	leia(consultaTipoClient)
	    	

	    	se (consultaTipoClient == 1) {
	    		cadeia nomeCliente
	    		inteiro contag = 0
	    		escreva("Digite o nome do cliente a ser consultado", "\n")
	    		leia(nomeCliente)

			escreva("***************************", "\n")
			escreva("Dados da Pesquisa:", "\n")
			
	    		para (comp_linha = 0; comp_linha < t; comp_linha++) {			
			    		se (nomeCliente == clientes[comp_linha][0]) {			    			
			    			
			    			escreva(clientes[comp_linha][0], ", ")
			    			escreva(clientes[comp_linha][1], ", ")
			    			escreva(clientes[comp_linha][2], ", ")
			    			escreva(clientes[comp_linha][3], "\n")
			    			escreva("***************************", "\n")			    				
			    			contag++			    			
			    		}	    								   	    			
	    		}
	    		
	    		se (contag == 0) {
			    	escreva("***************************", "\n")
			    	escreva("Nome Ineerxistente", "\n")
	    			escreva("***************************", "\n")
	    		}
	    		
	    		escreva("***************************", "\n")
			escreva("Deseja consultar novamente?", "\n")
			escreva("-----------1. Sim----------", "\n")
			escreva("-----------2. Não----------", "\n")
			escreva("***************************", "\n")
			leia(opcaoCliente)
			    			
			escolha (opcaoCliente) {
			caso 1: consultaDeCliente()
			caso 2: inicio()
			caso contrario: escreva("Opção Inválida", "\n")
			consultaDeCliente()
			}
	    	} senao se (consultaTipoClient == 2) {

	    		cadeia cpfCliente
	    		inteiro contag = 0
	    		escreva("Digite o CPF do cliente a ser consultado", "\n")
	    		leia(cpfCliente)

			escreva("***************************", "\n")
			escreva("Dados da Pesquisa:", "\n")
	    		para (comp_linha = 0; comp_linha < t; comp_linha++) {			
			    		se (cpfCliente == clientes[comp_linha][1]) {
			    			
			    			escreva(clientes[comp_linha][0], ", ")
			    			escreva(clientes[comp_linha][1], ", ")
			    			escreva(clientes[comp_linha][2], ", ")
			    			escreva(clientes[comp_linha][3], "\n")
			    			escreva("***************************", "\n")
			    			contag++
			    			
			    		}
	    		}
	    		
	    		se (contag == 0){
			    	escreva("***************************", "\n")
			    	escreva("CPF Inexistente", "\n")
	    			escreva("***************************", "\n")
	    					
			}
			
	    		escreva("***************************", "\n")
			escreva("Deseja consultar novamente?", "\n")
			escreva("-----------1. Sim----------", "\n")
			escreva("-----------2. Não----------", "\n")
			escreva("***************************", "\n")
			leia(opcaoCliente)
			    			
			escolha (opcaoCliente) {
			caso 1: consultaDeCliente()
			caso 2: inicio()
			caso contrario: escreva("Opção Inválida", "\n")
			consultaDeCliente()
			}
	    		
	    	} senao se (consultaTipoClient == 3) {
	    		inicio()
	    	} senao {
	    		escreva("Opção Inválida", "\n")
	    		escreva("***************************", "\n")
	    		consultaDeCliente()
	    	}
	    
	}
	funcao consultaDeDestino() {

		
		inteiro consultaTipoDest, comp_linha
		inteiro opcaoDestin
		
		escreva("***************************", "\n")
		escreva("Escolha o tipo de Consulta de Destinos", "\n")
		escreva("1. Consultar por País", "\n")
		escreva("2. Consultar por Estado", "\n")
		escreva("3. Consultar por Cidade", "\n")
		escreva("4. Voltar ao menu principal", "\n")
		escreva("***************************", "\n")
	    	leia(consultaTipoDest)
	    	

	    	se (consultaTipoDest == 1) {

	    		cadeia paisDestin
	    		inteiro contag = 0
	    		escreva("Digite o País a ser consultado", "\n")
	    		leia(paisDestin)

			escreva("***************************", "\n")
			escreva("Dados da Pesquisa:", "\n")
	    		para (comp_linha = 0; comp_linha < y; comp_linha++) {			
			    		se (paisDestin == destinos[comp_linha][0]) {
			    			

			    			escreva(destinos[comp_linha][0], ", ")
			    			escreva(destinos[comp_linha][1], ", ")
			    			escreva(destinos[comp_linha][2], ", ")
			    			escreva(destinos[comp_linha][3], "\n")
			    			escreva("***************************", "\n")
			    			contag++
			    			
			    		}
	    			
	    		}
	    		
	    		se (contag == 0){
				escreva("***************************", "\n")
				escreva("País Inexistente", "\n")
	    			escreva("***************************", "\n")
	    					
			}
			
	    		escreva("***************************", "\n")
			escreva("Deseja consultar novamente?", "\n")
			escreva("-----------1. Sim----------", "\n")
			escreva("-----------2. Não----------", "\n")
			escreva("***************************", "\n")
			leia(opcaoDestin)
			    			
			escolha (opcaoDestin) {
			caso 1: consultaDeDestino()
			caso 2: inicio()
			caso contrario: escreva("Opção Inválida", "\n")
			consultaDeDestino()
			}
	    		
	    	} senao se (consultaTipoDest == 2) {
	    		
	    		cadeia estadoDestin
	    		inteiro contag = 0
	    		escreva("Digite o Estado a ser consultado", "\n")
	    		leia(estadoDestin)

			escreva("***************************", "\n")
			escreva("Dados da Pesquisa:", "\n")
	    		para (comp_linha = 0; comp_linha < y; comp_linha++) {			
			    		se (estadoDestin == destinos[comp_linha][1]) {
			    			

			    			escreva(destinos[comp_linha][0], ", ")
			    			escreva(destinos[comp_linha][1], ", ")
			    			escreva(destinos[comp_linha][2], ", ")
			    			escreva(destinos[comp_linha][3], "\n")
			    			escreva("***************************", "\n")
			    			contag++
			    			
			    		} 
	    			
	    		}
	    		
	    		se (contag == 0){
				escreva("***************************", "\n")
				escreva("Estado Inexistente", "\n")
	    			escreva("***************************", "\n")
	    			
			}
			
	    		escreva("***************************", "\n")
			escreva("Deseja consultar novamente?", "\n")
			escreva("-----------1. Sim----------", "\n")
			escreva("-----------2. Não----------", "\n")
			escreva("***************************", "\n")
			leia(opcaoDestin)
			    			
			escolha (opcaoDestin) {
			caso 1: consultaDeDestino()
			caso 2: inicio()
			caso contrario: escreva("Opção Inválida", "\n")
			consultaDeDestino()
			}
	    	
	    	} senao se (consultaTipoDest == 3) {
	    			    		
	    		cadeia cidadeDestin
	    		inteiro contag = 0
	    		escreva("Digite a Cidade a ser consultada", "\n")
	    		leia(cidadeDestin)

			escreva("***************************", "\n")
			escreva("Dados da Pesquisa:", "\n")
	    		para (comp_linha = 0; comp_linha < y; comp_linha++) {			
			    		se (cidadeDestin == destinos[comp_linha][2]) {
			    			
			    			escreva(destinos[comp_linha][0], ", ")
			    			escreva(destinos[comp_linha][1], ", ")
			    			escreva(destinos[comp_linha][2], ", ")
			    			escreva(destinos[comp_linha][3], "\n")
			    			escreva("***************************", "\n")
			    			contag++
			    				
			    		} 
	    			
	    		}
	    		
			se (contag == 0){
				escreva("***************************", "\n")
				escreva("Cidade Inexistente", "\n")
	    			escreva("***************************", "\n")
	    					
			}
			
	    		escreva("***************************", "\n")
			escreva("Deseja consultar novamente?", "\n")
			escreva("-----------1. Sim----------", "\n")
			escreva("-----------2. Não----------", "\n")
			escreva("***************************", "\n")
			leia(opcaoDestin)
			    			
			escolha (opcaoDestin) {
			caso 1: consultaDeDestino()
			caso 2: inicio()
			caso contrario: escreva("Opção Inválida", "\n")
			consultaDeDestino()
			}
	   
	    	} senao se (consultaTipoDest == 4) {
	    		inicio() 
	    	} senao {
	    		escreva("Opção Inválida", "\n")
	    		escreva("***************************", "\n")
	    		consultaDeDestino()
	    	}
	    
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1195; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {clientes, 3, 8, 8}-{destinos, 4, 8, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
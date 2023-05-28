//E AE SILVINHO, SEJA BEM VINDO AO MEU BANCO. FIQUE A VONTADE PRA ME DAR DINHEIRO REAL TAMBEM KKK

programa
{
	
	funcao inicio()
	{
		//DECLARAÇÃO DE VARIAVEIS
		
		cadeia nome
		inteiro agencia, numeroC, digitoV, primeiroDep
		real contaC = 0, contaCdois, contaCsaque, contapoupanca = 0, contapoupancaDois, contapoupancasaque
                logico menu = verdadeiro

		//ENTRADA DE DADOS. NESSA ETAPA O USUARIO IRA INSERIR OS DADOS CONFORME É PEDIDO NO CODIGO ABAIXO PARA CRIAR SUA CONTA.
		
		escreva("*************************************\n")
		escreva("*                                   *")
                escreva("\n*   BEM VINDO AO BANCO POBRETION!   *\n")
                escreva("*                                   *")
                escreva("\n*************************************\n")
		escreva("\nPara começar-mos, digite seu nome: ")
		leia(nome)
		escreva("digite o número da conta: ")
		leia(numeroC)
		escreva("digite o número da agência: ")
		leia(agencia)
		escreva("digite o digito verificador: ")
		leia(digitoV)

		//O USUARIO IRÁ ESCOLHER SE DESEJA REALIZAR O PRIMEIRO DEPOSITO OU NÃO USANDO O "SE"!!

		escreva("\n Deseja fazer o primeiro deposito?: ")
		escreva("\n 1-SIM")
		escreva("\n 2-NÃO\n")
		leia(primeiroDep)
		limpa()
		se (primeiroDep == 1){
			escreva("Qual será o valor a ser depositado?: ")
			leia(contaC)
			limpa()
			escreva("Mission Sucecss!\n")
		}

		//AQUI TEMOS O MENU ONDE O USUARIO IRÁ ESCOLHER O QUE DESEJA FAZER APÓS CRIAR SUA CONTA NO BANCO!
		
		faca{
			inteiro menuusuario
			escreva("\n*************************************************\n")
			escreva("*                                               *")
			escreva("\n*       SEJA BEM VINDO AO MENU DO USUARIO       *\n")
			escreva("*                                               *")
			escreva("\n*        ESCOLHA UMA DAS OPÇÕES ABAIXO:         *")
			escreva("\n* 1 - EXIBIR DADOS DA CONTA                     *\n")
			escreva("* 2 - DEPOSITAR NA CONTA CORRENTE               *\n")
			escreva("* 3 - TRANSFERIR PARA CONTA POUPANÇA            *\n")
			escreva("* 4 - TRANSFERIR DA POUPANÇA PARA CORRENTE      *\n")
			escreva("* 5 - SACAR DA CONTA POUPANÇA                   *\n")
			escreva("* 6 - SACAR DA CONTA CORRENTE                   *\n")
			escreva("* 7 - SAIR                                      *\n")
			escreva("*************************************************\n")
			leia(menuusuario)
			limpa()
			
			//PROCESSAMENTO.
			//USANDO O ESCOLHA, O USUARIO IRÁ ESCOLHER UM NÚMERO CORRESPONDENTE AO DO MENU.
			//CASO ELE ESCOLHA O NUMBER 1, IRÁ SER EXECUTADO O CODIGO QUE FOI INTRODUZIDO AO NUMBER 1.
			//E O MESMO SE COLOCA PARA OS NÚMEROS ACIMA RESPECTIVAMENTE.
			
			escolha (menuusuario){

				caso 1:
				escreva("****DADOS DA CONTA****\n")
				escreva("NOME: " + nome + "\n")
				escreva("NUMERO DA CONTA: " + numeroC + "-" + digitoV +"\n")
				escreva("NUMERO DA AGENCIA: " + agencia + "\n")
				escreva("SALDO DA CONTA CORRENTE: " + contaC + "\n")
				escreva("SALDO DA CONTA POUPANÇA: " + contapoupanca + "\n")
				pare
				caso 2:
				escreva("QUANTO VOCÊ DESEJA DEPOSITAR NA CONTA CORRENTE?: ")
				leia(contaCdois)
				limpa()
				contaC = contaCdois + contaC
				escreva("VALOR DEPOSITADO COM SUCESSO!\n")
				pare
				caso 3:
				escreva("QUANTO VOCÊ DESEJA TRANSFERIR PARA CONTA POUPANÇA?: ")
				leia(contapoupancaDois)
				se (contapoupancaDois <= contaC){
					contaC = contaC - contapoupancaDois
					contapoupanca = contapoupanca + contapoupancaDois
					limpa()
					escreva("TRANSFERENCIA REALIZADA COM SUCESSO!\n")
				}senao escreva("O SALDO É INSUFICIENTE!! \n")
				pare
				caso 4:
				escreva("QUANTO VOCÊ DESEJA TRANSFERIR DA POUPANÇA PARA CORRENTE? ")
				leia(contaCdois)
				se (contaCdois <= contapoupanca){
					contapoupanca = contapoupanca - contaCdois
					contaC = contaC + contaCdois
					limpa()
					escreva("TRANSFERENCIA REALIZADA!\n")
				}senao escreva("O SALDO É INSUFICIENTE!! \n")
				pare
				caso 5:
				escreva("QUANTO VOCÊ DESEJA SACAR DA CONTA POUPANÇA? ")
				leia(contapoupancasaque)
				se (contapoupancasaque <= contapoupanca){
					contapoupanca = contapoupanca - contapoupancasaque
					limpa()
					escreva("SAQUE FEITO COM SUCESSO!\n")
				}senao escreva("O SALDO É INSUFICIENTE!! \n")
				pare
				caso 6:
				escreva("QUANTO VOCÊ DESEJA SACAR DA CONTA CORRENTE? ")
				leia(contaCsaque)
				se (contaCsaque <= contaC){
					contaC = contaC - contaCsaque
					limpa()
					escreva("SAQUE FEITO COM SUCESSO!\n")
				}senao escreva("O SALDO É INSUFICIENTE!! \n")
				pare
				caso 7:
				menu = falso
				escreva("VOCÊ SAIU DO BANCO! VOLTE SEMPRE <3\n ")
				pare
			}
			//AQUI TERMINA O MENU!
		}enquanto (menu == verdadeiro)

		//FIM DO CÓDIGO!!  
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4691; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {menu, 13, 17, 4}-{menuusuario, 48, 11, 11};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */

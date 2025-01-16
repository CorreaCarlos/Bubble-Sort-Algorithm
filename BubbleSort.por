programa
{
	inclua biblioteca Util --> U
	const inteiro quant = 6
	inteiro idade[quant], ponteiro = 0, x = 0, y = 0, aux_idade = 0
	cadeia nome[quant], nomes_aleatorios[] = {"Carlos","Jean","Maria","José","Pedro","João","Juca","Chris","Jacó","Davi"}, aux_nome, enter
	caracter opcao
	
	funcao inicio()
	{
		limpa()
		menu()
	}

	funcao menu()
	{
		limpa()
		escreva("1 - Cadastrar manualmente\n")
		U.aguarde(75)
		escreva("2 - Cadastrar Automagicamente\n")
		U.aguarde(75)
		escreva("3 - Exibir\n")
		U.aguarde(75)
		escreva("4 - Ordenar Crescente\n")
		U.aguarde(75)
		escreva("5 - Ordenar decrescente\n")
		U.aguarde(75)
		escreva("6 - Sair\n\n")
		U.aguarde(75)
		
		escreva("Qual a opção desejada?: ")
		leia(opcao)

		escolha(opcao)
		{
			caso '1':
			{
				cadastra_manualmente()
			}
			caso '2':
			{
				cadastra_automagicamente()
			}
			caso '3':
			{
				exibir_valores()
			}
			caso '4':
			{
				ordenar_crescente()
			}
			caso '5':
			{
				ordenar_decrescente()
			}
			caso '6':
			{
				sair()
			}
			caso contrario:
			{
				//
			}
		}
	}
	
	funcao cadastra_manualmente()
	{
		limpa()
		se((quant-ponteiro)>0)
		{
			escreva("Informe o nome: \n")
			leia(nome[ponteiro])

			escreva("Informe a idade: \n")
			leia(idade[ponteiro])

			escreva("Usuario cadastrado com Sucesso \n")
			ponteiro++
		}
		senao
		{
			escreva("Limite de Usuarios atingido!")
		}
		retorna()
	}

	funcao cadastra_automagicamente()
	{
		limpa()
		escreva("Gerando valores altomagicamente...\n\n")
		
		para(ponteiro = 0; ponteiro < quant; ponteiro++)
		{
			x = U.sorteia(0,9)
			nome[ponteiro] = nomes_aleatorios[x]
			U.aguarde(100)
			
			idade[ponteiro] = U.sorteia(1,99)
			U.aguarde(100)
		}
		
		escreva("Valores cadastrados com Sucesso")
		retorna()
	}

	funcao exibir_valores()
	{
		limpa()
		para(x=0;x<ponteiro;x++)
		{
			escreva(x+1 + " - " + nome[x] + ", " + idade[x] + "\n")
		}
		retorna()
	}

	funcao ordenar_crescente()
	{
		limpa()
		para(x=0;x<ponteiro-1;x++)
		{
			para(y=0;y<ponteiro-1;y++)
			{
				se(idade[y]>idade[y+1])
				{
					aux_idade = idade[y]
					aux_nome = nome[y]
					nome[y] = nome[y+1]
					idade[y] = idade[y+1]
					nome[y+1] = aux_nome
					idade[y+1] = aux_idade
				}
			}
		}
		escreva("Lista ordenada com sucesso")
		retorna()
	}

	funcao retorna()
	{
		U.aguarde(200)
		escreva("\n\nPRESSIONE [ENTER] PARA RETORNAR AO MENU")
		leia(enter)
		menu()
	}

	funcao ordenar_decrescente()
	{
		limpa()
		para(x=0;x<ponteiro-1;x++)
		{
			para(y=0;y<ponteiro-1;y++)
			{
				se(idade[y]<idade[y+1])
				{
					aux_idade = idade[y]
					aux_nome = nome[y]
					nome[y] = nome[y+1]
					idade[y] = idade[y+1]
					nome[y+1] = aux_nome
					idade[y+1] = aux_idade
				}
			}
		}
		escreva("Lista ordenada com sucesso")
		retorna()
	}

	funcao sair()
	{
		limpa()
		escreva("Finalizando sistema em 3...")
		U.aguarde(1000)
		limpa()
		escreva("Finalizando sistema em 2...")
		U.aguarde(1000)
		limpa()
		escreva("Finalizando sistema em 1...")
		U.aguarde(1000)
		limpa()
		escreva("Sistema encerrado.")
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2536; 
 * @DOBRAMENTO-CODIGO = [8, 66, 87, 106, 116, 138, 168];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {idade, 5, 9, 5}-{nome, 6, 8, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
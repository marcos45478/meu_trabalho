programa{

  inclua biblioteca Arquivos --> a
  inclua biblioteca Tipos --> t 
funcao inicio() {
	const inteiro MAX_ITENS = 50
    cadeia lista_compras[MAX_ITENS]
   real quantidades[MAX_ITENS]
    real precos[MAX_ITENS]
    inteiro total_itens = 0
    real total_gasto = 0.0
    

    inteiro op
    faca {
        escreva("\n=== LISTA DE COMPRAS PARA REFORMA ===\n")
        escreva("1. Ver produtos\n")
        escreva("2. Ver minha lista\n")
        escreva("3. Calcular total\n")
        escreva("4. salva arquivo .txt\n")
        escreva("5. Sair\n")
        escreva("Escolha: ")
        leia(op)

        escolha(op) {
            caso 1:
                se(total_itens >= MAX_ITENS) {
                    escreva("Você já tem muitos itens!\n")
                    pare
                }
                
                // Mostrar lista de produtos com preços médios
                escreva("\n=== PRODUTOS DISPONÍVEIS ===\n")
                escreva("1. Cimento: R$ 32.50 (saco 50kg)\n")
                escreva("2. Areia: R$ 115.00 (m³)\n")
                escreva("3. Argamassa: R$ 20.00 (saco 20kg)\n")
                escreva("4. Cerâmica: R$ 35.00 (m²)\n")
                escreva("5. Tijolos: R$ 1.50 (milheiro)\n")  
                
                // Selecionar produto
                inteiro produto_escolhido
                escreva("\nDigite o número do produto: ")
                leia(produto_escolhido)
                
                // Definir preço unitário baseado na escolha
                real preco_unitario = 0.0
                cadeia nome_produto = " "
                
                escolha(produto_escolhido) {
                    caso 1:
                        preco_unitario = 32.50
                        nome_produto = "Cimento"
                        pare
                    caso 2:
                        preco_unitario = 115.00
                        nome_produto = "Areia"
                        pare
                    caso 3:
                        preco_unitario = 20.00
                        nome_produto = "Argamassa"
                        pare
                    caso 4:
                        preco_unitario = 35.00
                        nome_produto = "Cerâmica"
                        pare
                    caso 5:
                        preco_unitario = 1.50  
                        nome_produto= "Tijolos"
                        pare
                    caso contrario:
                        escreva("Produto inválido!\n")
                        pare
                }
                
                // Ler quantidade e calcular preço
                escreva("Digite a quantidade de ", nome_produto, ": ")
             
                leia(quantidades[total_itens])
               
                // Armazenar informações
                  
                lista_compras[total_itens] = nome_produto
                precos[total_itens] = preco_unitario * quantidades[total_itens]
                
                escreva("\nItem adicionado: ", quantidades[total_itens], " x ", nome_produto, " (R$ ", preco_unitario, " cada) = R$ ", precos[total_itens], "\n")
                total_itens++
                pare

            caso 2:
                se(total_itens == 0) {
                    escreva("Sua lista está vazia!\n")
                } senao {
                    escreva("\n=== SUA LISTA DE COMPRAS ===\n")
                    para(inteiro i = 0; i < total_itens; i++) {
                        escreva(i+1, ". ", lista_compras[i], ": ", quantidades[i], " un - R$ ", precos[i], "\n")
                          cadeia quantidade_cadeia t.real_para_cadeia(quantidades[MAX_ITENS])
                    }
                }
                pare

            caso 3:
                total_gasto = 0.0
                para(inteiro i = 0; i < total_itens; i++) {
                    total_gasto += precos[i]
                }
                escreva("\nTotal gasto: R$ ", total_gasto, "\n")
                pare
           caso 4:
          inteiro arquivo= a.abrir_arquivo("./lista.txt", a.MODO_ESCRITA)
          inteiro i
          
          para(i=0;i<MAX_ITENS;i++){
          	// real rl  t.real_para_cadeia(quantidades[i])
          	
          	 cadeia quantidade_cadeia t.real_para_cadeia(quantidades[i])
          	 a.escrever_linha(lista_compras[i], arquivo)
          	
          }
               a.fechar_arquivo(arquivo)
          	pare
        
            caso 5:
                escreva("Saindo...\n")
                pare

            caso contrario:
                escreva("Opção inválida!\n")
        }
    } enquanto(op != 4)
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4372; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
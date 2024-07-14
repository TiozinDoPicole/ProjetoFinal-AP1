Algoritmo "Projeto final - AP1"
// Disciplina  : Algoritmos e programação 1
// Professor   : Ana Paula Vilela
// Descrição   : Sistema de segurança para laboratórios com
// Autores     : Gustavo Fé Alves, Gabriel Assis de Souza, João Lucas Gonçalves Martins
// Data de entrega  : 23/09/2023
Var
   // Seção de Declarações das variáveis
   i,j,k: inteiro
   cont,verif,conf,confmatr,resp,matr,cod,opcoes,qtd,lab,curso: inteiro
   verifmatr,codlog,nome: caracter
   usuario: vetor[0..49,0..3] de caracter

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   opcoes <- 0
   enquanto (opcoes <> 3) faca
      escreval()
      escreval("/\(^_^)/\ /\(^_^)/\ /\(^_^)/\ /\(^_^)/\ /\(^_^)/\ /\(^_^)/\")
      escreval("/\(^_^)/\                   Menu                  /\(^_^)/\")
      escreval("/\(^_^)/\        Escolha uma opção abaixo         /\(^_^)/\")
      escreval("/\(^_^)/\        1 - Cadastro                     /\(^_^)/\")
      escreval("/\(^_^)/\        2 - Entrar                       /\(^_^)/\")
      escreval("/\(^_^)/\        3 - Fechar menu                  /\(^_^)/\")
      escreva("/\(^_^)/\        ")
      leia(opcoes)


      escolha (opcoes)
      caso 1
         escreval()
         escreval("/\(^_^)/\    Quantos usuários serão cadastrados?  /\(^_^)/\")
         escreval("/\(^_^)/\    (Máximo 50 usuários)                 /\(^_^)/\")
         escreva("/\(^_^)/\    ")
         leia(qtd)

         se (qtd < 1) ou (qtd > 50) entao
            escreval()
            escreval("/\(^_^)/\    Opção inválida! No mínimo 1 usuário  /\(^_^)/\")
            escreval("/\(^_^)/\    e no máximo 50                       /\(^_^)/\")
            escreval("/\(^_^)/\    Voltando ao menu...                  /\(^_^)/\")
            escreval()
         senao
            para i de 0 ate qtd-1 faca
               se (usuario[i,1] <> "") entao
                  i <- i + 1
               fimse
                  escreval()
                  escreval("/\(^_^)/\        Digite seu nome:                 /\(^_^)/\")
                  escreva("/\(^_^)/\        ")
                  leia(nome)
                  usuario[i,0] <- nome

                  escreval()
                  escreval("/\(^_^)/\    Escolha seu curso:                   /\(^_^)/\")
                  repita
                     escreval("/\(^_^)/\   (Caso seu curso não esteja abaixo,    /\(^_^)/\")
                     escreval("/\(^_^)/\   significa que não possui              /\(^_^)/\")
                     escreval("/\(^_^)/\   laboratórios próprios do mesmo)       /\(^_^)/\")
                     escreval("/\(^_^)/\   1 - Agronomia                         /\(^_^)/\")
                     escreval("/\(^_^)/\   2 - Biomedicina                       /\(^_^)/\")
                     escreval("/\(^_^)/\   3 - Ciências biológicas               /\(^_^)/\")
                     escreval("/\(^_^)/\   4 - Ciência da computação             /\(^_^)/\")
                     escreval("/\(^_^)/\   5 - Direito                           /\(^_^)/\")
                     escreval("/\(^_^)/\   6 - Educação física                   /\(^_^)/\")
                     escreval("/\(^_^)/\   7 - Enfermagem                        /\(^_^)/\")
                     escreval("/\(^_^)/\   8 - Engenharia florestal              /\(^_^)/\")
                     escreval("/\(^_^)/\   9 - Física                            /\(^_^)/\")
                     escreval("/\(^_^)/\   10 - Fisioterapia                     /\(^_^)/\")
                     escreval("/\(^_^)/\   11 - Geografia                        /\(^_^)/\")
                     escreval("/\(^_^)/\   12 - História                         /\(^_^)/\")
                     escreval("/\(^_^)/\   13 - Letras - Português               /\(^_^)/\")
                     escreval("/\(^_^)/\   14 - Letras - Ingles                  /\(^_^)/\")
                     escreval("/\(^_^)/\   15 - Matemática                       /\(^_^)/\")
                     escreval("/\(^_^)/\   16 - Medicina                         /\(^_^)/\")
                     escreval("/\(^_^)/\   17 - Medicina veterinária             /\(^_^)/\")
                     escreval("/\(^_^)/\   18 - Pedagogia                        /\(^_^)/\")
                     escreval("/\(^_^)/\   19 - Psicologia                       /\(^_^)/\")
                     escreval("/\(^_^)/\   20 - Química                          /\(^_^)/\")
                     escreval("/\(^_^)/\   21 - Zootecnia                        /\(^_^)/\")
                     escreva("/\(^_^)/\   ")
                     leia(curso)

                     se (curso < 1) ou (curso > 21) entao
                        escreval()
                        escreval("/\(^_^)/\   Opção inválida! Escolha               /\(^_^)/\")
                        escreval("/\(^_^)/\   entre um dos 21 cursos:               /\(^_^)/\")
                     senao
                        usuario[i,1] <- numpcarac(curso)
                        j <- 1
                     fimse
                  ate (j = 1)

                  escreval()

                  k <- 1
                  enquanto (k = 1) faca
                     escreval("/\(^_^)/\   Digite seu número de matricula:       /\(^_^)/\")
                     escreva("/\(^_^)/\   ")
                     leia(matr)
                     se (matr < 100000000) ou (matr > 999999999) entao
                        escreval("/\(^_^)/\   O número de matricula precisa        /\(^_^)/\")
                        escreval("/\(^_^)/\   ter 9 dígitos! Tente novamente       /\(^_^)/\")

                     senao
                        usuario[i,2] <- numpcarac(matr)
                        k <- 2
                        para j de 0 ate qtd-1 faca
                           se (usuario[i,2] = usuario[j,2]) e (j <> i) entao
                              k <- 1
                              escreval("/\(^_^)/\   Número de matricula já cadastrado")
                           fimse
                        fimpara
                     fimse

                  fimenquanto

                  escreval()
                  escreval("/\(^_^)/\   Seu cadastro foi concluído!           /\(^_^)/\")
                  escreval("/\(^_^)/\   Código de usuário gerado!             /\(^_^)/\")
                  aleatorio 10000,99999
                  escreval("/\(^_^)/\   Seu código é:                         /\(^_^)/\")
                  escreva("/\(^_^)/\   ")
                  leia(cod)
                  aleatorio off
                  usuario[i,3] <- Numpcarac(cod)
            fimpara

            escreval("/\(^_^)/\   Cadastro(s) finalizados!              /\(^_^)/\")
            escreval("/\(^_^)/\   Voltando ao menu...                   /\(^_^)/\")
         fimse


      caso 2
         se (usuario[0,0] = "") entao
            escreval("/\(^_^)/\   Nenhum usuário cadastrado!            /\(^_^)/\")
            escreval("/\(^_^)/\   Realize um cadastro primeiro          /\(^_^)/\")
            escreval("/\(^_^)/\   Voltando ao menu...                   /\(^_^)/\")
         senao
            escreval()
            escreval("/\(^_^)/\   Insira seu código de usuário:         /\(^_^)/\")
            leia(cod)
            codlog <- numpcarac(cod)

            para i de 0 ate qtd-1 faca
               se (codlog = usuario[i,3]) entao
                  escreval()
                  escreval("/\(^_^)/\   Você é o estudante",usuario[i,0],"?        /\(^_^)/\")
                  escreval("/\(^_^)/\   Se sim, insira seu número de matrícula     /\(^_^)/\")
                  leia(resp)

                  se (resp = caracpnum(usuario[i,2])) entao
                     escreval()
                     escreval("/\(^_^)/\   Escolha qual laboratório vc deseja entrar:         /\(^_^)/\")
                     se (usuario[i,1] = "1") entao
                        escreval("/\(^_^)/\   1 - Laboratório de Informática")
                        escreval("/\(^_^)/\   2 - Laboratório de Plantas Daninhas/Fitotecnia")
                        escreval("/\(^_^)/\   3 - Laboratório de Sementes")
                        escreval("/\(^_^)/\   4 - Laboratório de Fitopatologia")
                        escreval("/\(^_^)/\   5 - Laboratório de Entomologia")
                        escreval("/\(^_^)/\   6 - Núcleo de Práticas Agronômicas")
                        escreval("/\(^_^)/\   7 - Agricultura de Precisão")
                        escreval("/\(^_^)/\   8 - Hidráulica")
                        escreval("/\(^_^)/\   9 - Laboratório de Solos")
                        escreval("/\(^_^)/\   10 - Laboratório de Fruticultura")
                        escreval("/\(^_^)/\   11 - Laboratório de Tecnologia e Ecotoxicologia dos Agrotóxicos")

                        leia(lab)
                        se (lab = 1) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Informática")
                        fimse
                        se (lab = 2) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Plantas Daninhas/Fitotecnia")
                        fimse
                        se (lab = 3) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Sementes")
                        fimse
                        se (lab = 4) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Fitopatologia")
                        fimse
                        se (lab = 5) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Entomologia")
                        fimse
                        se (lab = 6) entao
                           escreval("/\(^_^)/\   Você entrou no Núcleo de Práticas Agronômicas")
                        fimse
                        se (lab = 7) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Agricultura de Precisão")
                        fimse
                        se (lab = 8) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Hidráulica")
                        fimse
                        se (lab = 9) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Solos")
                        fimse
                        se (lab = 10) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Fruticultura")
                        fimse
                        se (lab = 11) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Tecnologia e Ecotoxicologia dos Agrotóxicos")
                        fimse
                        se (lab < 1) ou (lab > 11) entao
                           escreval("/\(^_^)/\   Opção de laboratório inválida")
                           escreval("/\(^_^)/\   Tente novamente")
                        fimse
                        escreval("/\(^_^)/\   Entrada concedida!")
                        escreval("/\(^_^)/\   Voltando ao menu...")

                     fimse

                     se (usuario[i,1] = "2") entao
                        escreval("/\(^_^)/\   1 - Laboratório de Bacteriologia e Micologia")
                        escreval("/\(^_^)/\   2 - Laboratório de Patologia")
                        escreval("/\(^_^)/\   3 - Laboratório de Imunologia")
                        escreval("/\(^_^)/\   4 - Laboratório de Hematologia")
                        escreval("/\(^_^)/\   5 - Laboratório de Parasitologia")
                        escreval("/\(^_^)/\   6 - Laboratório de Genética e Biologia Molecular")
                        escreval("/\(^_^)/\   7 - Laboratório de Farmacologia e Toxicologia")
                        escreval("/\(^_^)/\   8 - Laboratório de Virologia")
                        escreval("/\(^_^)/\   9 - Laboratório de Bioquímica Clínica e Líquidos Corporais")

                        leia(lab)
                        se (lab >= 1) e (lab <= 9) entao
                           escreval("/\(^_^)/\   Entrada concedida!")
                        fimse
                        se (lab = 1) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório Bacteriologia e Micologia")
                        fimse
                        se (lab = 2) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Patologia")
                        fimse
                        se (lab = 3) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Imunologia")
                        fimse
                        se (lab = 4) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Hematologia")
                        fimse
                        se (lab = 5) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Parasitologia")
                        fimse
                        se (lab = 6) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Genética e Biologia Molecular")
                        fimse
                        se (lab = 7) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Farmacologia e Toxicologia")
                        fimse
                        se (lab = 8) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Virologia")
                        fimse
                        se (lab = 9) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Bioquímica Clínica e Líquidos Corporais")
                        fimse
                        se (lab < 1) ou (lab > 9) entao
                           escreval("/\(^_^)/\   Opção de laboratório inválida")
                           escreval("/\(^_^)/\   Tente novamente")
                        fimse
                        escreval("/\(^_^)/\   Voltando ao menu...")

                     fimse

                     se (usuario[i,1] = "3") entao
                        escreval("/\(^_^)/\   1 - Laboratório de Anatomia Humana e Comparativa")
                        escreval("/\(^_^)/\   2 - Laboratório de Anatomia Vegetal")
                        escreval("/\(^_^)/\   3 - Laboratório de Biodiversidade Animal")
                        escreval("/\(^_^)/\   4 - Laboratório de Bioquímica")
                        escreval("/\(^_^)/\   5 - Laboratório de Coleção e Didática de Zoologia")
                        escreval("/\(^_^)/\   6 - Laboratório de Cultura de Tecidos")
                        escreval("/\(^_^)/\   7 - Laboratório de Ecologia Vegetal e Reprodução de plantas")
                        escreval("/\(^_^)/\   8 - Laboratório de Ensino de Biologia")
                        escreval("/\(^_^)/\   9 - Laboratório de Fisiologia e Biotecnologia em Peixes")
                        escreval("/\(^_^)/\   10 - Laboratório de Fisiologia Vegetal (Laboratório Multiusuário)")
                        escreval("/\(^_^)/\   11 - Laboratório de Genética Molecular e Evolução")
                        escreval("/\(^_^)/\   12 - Herbário")
                        escreval("/\(^_^)/\   13 - Laboratório de Macroecologia")
                        escreval("/\(^_^)/\   14 - Laboratório de Microscopia")
                        escreval("/\(^_^)/\   15 - Laboratório de Morfofisiologia")
                        escreval("/\(^_^)/\   16 - Laboratório de Morfologia e Taxonomia Vegetal")

                        leia(lab)
                        se (lab >= 1) e (lab <= 16) entao
                           escreval("/\(^_^)/\   Entrada concedida!")
                        fimse
                        se (lab = 1) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Anatomia Humana e Comparativa")
                        fimse
                        se (lab = 2) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Anatomia Vegetal")
                        fimse
                        se (lab = 3) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Biodiversidade Animal")
                        fimse
                        se (lab = 4) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Bioquímica")
                        fimse
                        se (lab = 5) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Coleção e Didática de Zoologia")
                        fimse
                        se (lab = 6) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Cultura de Tecidos")
                        fimse
                        se (lab = 7) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Ecologia Vegetal e Reprodução de plantas")
                        fimse
                        se (lab = 8) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Ensino de Biologia")
                        fimse
                        se (lab = 9) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Fisiologia e Biotecnologia em Peixes")
                        fimse
                        se (lab = 10) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Fisiologia Vegetal (Laboratório Multiusuário)")
                        fimse
                        se (lab = 11) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Genética Molecular e Evolução")
                        fimse
                        se (lab = 12) entao
                           escreval("/\(^_^)/\   Você entrou no Herbário")
                        fimse
                        se (lab = 13) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Macroecologia")
                        fimse
                        se (lab = 14) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Microscopia")
                        fimse
                        se (lab = 15) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Morfofisiologia")
                        fimse
                        se (lab = 16) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Morfologia e Taxonomia Vegetal")
                        fimse
                        se (lab < 1) ou (lab > 16) entao
                           escreval("/\(^_^)/\   Opção de laboratório inválida")
                           escreval("/\(^_^)/\   Tente novamente")
                        fimse
                        escreval("/\(^_^)/\   Voltando ao menu...")

                     fimse

                     se (usuario[i,1] = "4") entao
                        escreval("/\(^_^)/\   1 - Laboratório de Ensino de Computação 1 (LEC 1)")
                        escreval("/\(^_^)/\   2 - Laboratório de Ensino de Computação 2 (LEC 2)")
                        escreval("/\(^_^)/\   3 - Laboratório de Ensino de Computação 3 (LEC 3)")
                        escreval("/\(^_^)/\   4 - Laboratório de Sistemas Digitais")
                        escreval("/\(^_^)/\   5 - Laboratório de Redes")

                        leia(lab)
                        se (lab >= 1) e (lab <= 5) entao
                           escreval("/\(^_^)/\   Entrada concedida!")
                        fimse
                        se (lab = 1) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Ensino de Computação 1 (LEC 1)")
                        fimse
                        se (lab = 2) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Ensino de Computação 2 (LEC 2)")
                        fimse
                        se (lab = 3) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Ensino de Computação 3 (LEC 3)")
                        fimse
                        se (lab = 4) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Sistemas Digitais")
                        fimse
                        se (lab = 5) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Redes")
                        fimse
                        se (lab < 1) ou (lab > 5) entao
                           escreval("/\(^_^)/\   Opção de laboratório inválida")
                           escreval("/\(^_^)/\   Tente novamente")
                        fimse
                        escreval("/\(^_^)/\      Voltando ao menu...")

                     fimse

                     se (usuario[i,1] = "5") entao
                        escreval("/\(^_^)/\   1 - Núcleo de Prática Jurídica (NPJ)")

                        leia(lab)

                        se (lab = 1) entao
                           escreval("/\(^_^)/\   Entrada concedida!")
                           escreval("/\(^_^)/\   Você entrou no Núcleo de Prática Jurídica (NPJ)")
                        fimse
                        se (lab <> 1) entao
                           escreval("/\(^_^)/\   Opção de laboratório inválida")
                           escreval("/\(^_^)/\   Tente novamente")
                        fimse
                        escreval("/\(^_^)/\   Voltando ao menu...")

                     fimse

                     se (usuario[i,1] = "6") entao
                        escreval("/\(^_^)/\   1 - Núcleo de Práticas Corporais (NPC)")
                        escreval("/\(^_^)/\   2 - Laboratório de Fisiologia do exercício (LAFEX)")

                        leia(lab)
                        se (lab >= 1) e (lab <= 2) entao
                           escreval("/\(^_^)/\   Entrada concedida!")
                        fimse
                        se (lab = 1) entao
                           escreval("/\(^_^)/\   Você entrou no Núcleo de Práticas Corporais (NPC)")
                        fimse
                        se (lab = 2) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Fisiologia do exercício (LAFEX)")
                        fimse
                        se (lab < 1) ou (lab > 2) entao
                           escreval("/\(^_^)/\   Opção de laboratório inválida")
                           escreval("/\(^_^)/\   Tente novamente")
                        fimse
                        escreval("/\(^_^)/\   Voltando ao menu...")

                     fimse

                     se (usuario[i,1] = "7") entao
                        escreval("/\(^_^)/\   1 - Laboratório de Habilidades cirúrgicas e CME em Enfermagem")
                        escreval("/\(^_^)/\   2 - Laboratório de Práticas de Enfermagem Geral")
                        escreval("/\(^_^)/\   3 - Laboratório de Semiologia e Semiotécnica em Enfermagem")
                        escreval("/\(^_^)/\   4 - Laboratório de Práticas em Saúde Coletiva e Enfermagem Pediátrica")

                        leia(lab)
                        se (lab >= 1) e (lab <= 4) entao
                           escreval("/\(^_^)/\   Entrada concedida!")
                        fimse
                        se (lab = 1) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Habilidades cirúrgicas e CME em Enfermagem")
                        fimse
                        se (lab = 2) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Práticas de Enfermagem Geral")
                        fimse
                        se (lab = 3) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Semiologia e Semiotécnica em Enfermagem")
                        fimse
                        se (lab = 4) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Práticas em Saúde Coletiva e Enfermagem Pediátrica")
                        fimse
                        se (lab < 1) ou (lab > 4) entao
                           escreval("/\(^_^)/\   Opção de laboratório inválida")
                           escreval("/\(^_^)/\   Tente novamente")
                        fimse
                        escreval("/\(^_^)/\   Voltando ao menu...")

                     fimse

                     se (usuario[i,1] = "8") entao
                        escreval("/\(^_^)/\   1 - Laboratório de Biotecnologia Florestal")
                        escreval("/\(^_^)/\   2 - Laboratório de Dendrologia")
                        escreval("/\(^_^)/\   3 - Laboratório de Ecofisiologia Florestal")
                        escreval("/\(^_^)/\   4 - Laboratório de Sementes Florestais")
                        escreval("/\(^_^)/\   5 - Laboratório de Ecologia Florestal")
                        escreval("/\(^_^)/\   6 - Laboratório de Manejo Florestal")
                        escreval("/\(^_^)/\   7 - Laboratório de Mensuração e Inventário Florestal")
                        escreval("/\(^_^)/\   8 - Laboratório de Silvicultura")
                        escreval("/\(^_^)/\   9 - Laboratório de Madeiras e Materiais")

                        leia(lab)
                        se (lab >= 1) e (lab <= 9) entao
                           escreval("/\(^_^)/\   Entrada concedida!")
                        fimse
                        se (lab = 1) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Biotecnologia Florestal")
                        fimse
                        se (lab = 2) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Dendrologia")
                        fimse
                        se (lab = 3) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Ecofisiologia Florestal")
                        fimse
                        se (lab = 4) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Sementes Florestais")
                        fimse
                        se (lab = 5) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Ecologia Florestal")
                        fimse
                        se (lab = 6) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Manejo Florestal")
                        fimse
                        se (lab = 7) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Mensuração e Inventário Florestal")
                        fimse
                        se (lab = 8) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Silvicultura")
                        fimse
                        se (lab = 9) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Madeiras e Materiais")
                        fimse
                        se (lab < 1) ou (lab > 9) entao
                           escreval("/\(^_^)/\   Opção de laboratório inválida")
                           escreval("/\(^_^)/\   Tente novamente")
                        fimse
                        escreval("/\(^_^)/\   Voltando ao menu...")

                     fimse

                     se (usuario[i,1] = "9") entao
                        escreval("/\(^_^)/\   1 - Laboratório de Mecânica")
                        escreval("/\(^_^)/\   2 - Laboratório de Eletromagnetismo e Termodinâmica")
                        escreval("/\(^_^)/\   3 - Laboratório de Física Moderna e Ótica")

                        leia(lab)
                        se (lab >= 1) e (lab <= 3) entao
                           escreval("/\(^_^)/\   Entrada concedida!")
                        fimse
                        se (lab = 1) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Mecânica")
                        fimse
                        se (lab = 2) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Eletromagnetismo e Termodinâmica")
                        fimse
                        se (lab = 3) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Física Moderna e Ótica")
                        fimse
                        se (lab < 1) ou (lab > 3) entao
                           escreval("/\(^_^)/\   Opção de laboratório inválida")
                           escreval("/\(^_^)/\   Tente novamente")
                        fimse
                        escreval("/\(^_^)/\   Voltando ao menu...")

                     fimse

                     se (usuario[i,1] = "10") entao
                        escreval("/\(^_^)/\   1 - Laboratório de Neurologia Infantil")
                        escreval("/\(^_^)/\   2 - Laboratório de Neurologia Adulto")
                        escreval("/\(^_^)/\   3 - Laboratório de Eletroterapia, Ginecolocia e Massoterapia")
                        escreval("/\(^_^)/\   4 - Laboratório de Pneumologia e Cardiologia")
                        escreval("/\(^_^)/\   5 - Laboratório de Cinesioterapia")

                        leia(lab)
                        se (lab >= 1) e (lab <= 5) entao
                           escreval("/\(^_^)/\   Entrada concedida!")
                        fimse
                        se (lab = 1) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Neurologia Infantil")
                        fimse
                        se (lab = 2) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Neurologia Adulto")
                        fimse
                        se (lab = 3) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Eletroterapia, Ginecolocia e Massoterapia")
                        fimse
                        se (lab = 4) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Pneumologia e Cardiologia")
                        fimse
                        se (lab = 5) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Cinesioterapia")
                        fimse
                        se (lab < 1) ou (lab > 5) entao
                           escreval("/\(^_^)/\   Opção de laboratório inválida")
                           escreval("/\(^_^)/\   Tente novamente")
                        fimse
                        escreval("/\(^_^)/\   Voltando ao menu...")

                     fimse

                     se (usuario[i,1] = "11") entao
                        escreval("/\(^_^)/\   1 - Laboratório de Climatologia e Recursos Hídricos")
                        escreval("/\(^_^)/\   2 - Laboratório de Ensino de Geografia")
                        escreval("/\(^_^)/\   3 - Laboratório de Estudos Regionais")
                        escreval("/\(^_^)/\   4 - Laboratório de Geografia e Dinâmicas Territoriais")
                        escreval("/\(^_^)/\   5 - Laboratório de Geografia Urbana e da Saúde")
                        escreval("/\(^_^)/\   6 - Laboratório de Geoinformação")
                        escreval("/\(^_^)/\   7 - Laboratório de Geociências Aplicadas")
                        escreval("/\(^_^)/\   8 - Laboratório de Planejamento e Educação Ambiental")
                        escreval("/\(^_^)/\   9 - Laboratório de Pedologia e Erosão dos Solos")
                        escreval("/\(^_^)/\   10 - Laboratório de Investigações das Dinâmicas Espaciais")

                        leia(lab)
                        se (lab >= 1) e (lab <= 10) entao
                           escreval("/\(^_^)/\   Entrada concedida!")
                        fimse
                        se (lab = 1) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Climatologia e Recursos Hídricos")
                        fimse
                        se (lab = 2) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Ensino de Geografia")
                        fimse
                        se (lab = 3) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Estudos Regionais")
                        fimse
                        se (lab = 4) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Geografia e Dinâmicas Territoriais")
                        fimse
                        se (lab = 5) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Geografia Urbana e da Saúde")
                        fimse
                        se (lab = 6) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Geoinformação")
                        fimse
                        se (lab = 7) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Geociências Aplicadas")
                        fimse
                        se (lab = 8) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Planejamento e Educação Ambiental")
                        fimse
                        se (lab = 9) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Pedologia e Erosão dos Solos")
                        fimse
                        se (lab = 10) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Investigações das Dinâmicas Espaciais")
                        fimse
                        se (lab < 1) ou (lab > 10) entao
                           escreval("/\(^_^)/\   Opção de laboratório inválida")
                           escreval("/\(^_^)/\   Tente novamente")
                        fimse
                        escreval("/\(^_^)/\   Voltando ao menu...")

                     fimse

                     se (usuario[i,1] = "12") entao
                        escreval("/\(^_^)/\   1 - Laboratório de Ensino de História")
                        escreval("/\(^_^)/\   2 - Laboratório de Estudos e Pesquisas em Histórias")

                        leia(lab)
                        se (lab >= 1) e (lab <= 2) entao
                           escreval("/\(^_^)/\   Entrada concedida!")
                        fimse
                        se (lab = 1) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Ensino de História")
                        fimse
                        se (lab = 2) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Estudos e Pesquisas em Histórias")
                        fimse
                        se (lab < 1) ou (lab > 2) entao
                           escreval("/\(^_^)/\   Opção de laboratório inválida")
                           escreval("/\(^_^)/\   Tente novamente")
                        fimse
                        escreval("/\(^_^)/\   Voltando ao menu...")

                     fimse

                     se (usuario[i,1] = "13") entao
                        escreval("/\(^_^)/\   1 - Laboratório de Línguas")

                        leia(lab)
                        se (lab >= 1) entao
                           escreval("/\(^_^)/\   Entrada concedida!")
                        fimse
                        se (lab = 1) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Línguas")
                        fimse
                        se (lab <> 1) entao
                           escreval("/\(^_^)/\   Opção de laboratório inválida")
                           escreval("/\(^_^)/\   Tente novamente")
                        fimse
                        escreval("/\(^_^)/\   Voltando ao menu...")

                     fimse

                     se (usuario[i,1] = "14") entao
                        escreval("/\(^_^)/\   Não possui laboratório")
                     fimse

                     se (usuario[i,1] = "15") entao
                        escreval("/\(^_^)/\   1 - Laboratório de Matemática e Aplicações (LAMAP)")
                        escreval("/\(^_^)/\   2 - Laboratório de Edição de Imagem e Som (LEIS)")
                        escreval("/\(^_^)/\   3 - Centro de Ensino e Pesquisa em Educação Matemática(CEPEM)")

                        leia(lab)
                        se (lab >= 1) e (lab <= 3) entao
                           escreval("/\(^_^)/\   Entrada concedida!")
                        fimse
                        se (lab = 1) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Matemática e Aplicações (LAMAP)")
                        fimse
                        se (lab = 2) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Edição de Imagem e Som (LEIS)")
                        fimse
                        se (lab = 3) entao
                           escreval("/\(^_^)/\   Você entrou no Centro de Ensino e Pesquisa em Educação Matemática(CEPEM)")
                        fimse
                        se (lab < 1) ou (lab > 3) entao
                           escreval("/\(^_^)/\   Opção de laboratório inválida")
                           escreval("/\(^_^)/\   Tente novamente")
                        fimse
                        escreval("/\(^_^)/\   Voltando ao menu...")

                     fimse

                     se (usuario[i,1] = "16") entao
                        escreval("/\(^_^)/\   1 - Laboratório de Habilidades Médicas")
                        escreval("/\(^_^)/\   2 - Sala de Simulação 01")
                        escreval("/\(^_^)/\   3 - Sala de Simulação 02")
                        escreval("/\(^_^)/\   4 - Mini-Consultório")
                        escreval("/\(^_^)/\   5 - Laboratório de Pesquisas Médicas")
                        escreval("/\(^_^)/\   6 - Laboratório de Microscopia 01")
                        escreval("/\(^_^)/\   7 - Laboratório de Microscopia 02")
                        escreval("/\(^_^)/\   8 - Laboratório Morfofuncional 01")
                        escreval("/\(^_^)/\   9 - Laboratório Morfofuncional 02")
                        escreval("/\(^_^)/\   10 - Laboratório de Anatomia")
                        escreval("/\(^_^)/\   11 - Laboratório Multiusuário")

                        leia(lab)
                        se (lab >= 1) e (lab <= 11) entao
                           escreval("/\(^_^)/\   Entrada concedida!")
                        fimse
                        se (lab = 1) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Habilidades Médicas")
                        fimse
                        se (lab = 2) entao
                           escreval("/\(^_^)/\   Você entrou na Sala de Simulação 01")
                        fimse
                        se (lab = 3) entao
                           escreval("/\(^_^)/\   Você entrou na Sala de Simulação 02")
                        fimse
                        se (lab = 4) entao
                           escreval("/\(^_^)/\   Você entrou no Mini-Consultório")
                        fimse
                        se (lab = 5) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Pesquisas Médicas")
                        fimse
                        se (lab = 6) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Microscopia 01")
                        fimse
                        se (lab = 7) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Microscopia 02")
                        fimse
                        se (lab = 8) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório Morfofuncional 01")
                        fimse
                        se (lab = 9) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório Morfofuncional 02")
                        fimse
                        se (lab = 10) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Anatomia")
                        fimse
                        se (lab = 11) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Multiusuário")
                        fimse
                        se (lab < 1) ou (lab > 11) entao
                           escreval("/\(^_^)/\   Opção de laboratório inválida")
                           escreval("/\(^_^)/\   Tente novamente")
                        fimse
                        escreval("/\(^_^)/\   Voltando ao menu...")

                     fimse

                     se (usuario[i,1] = "17") entao
                        escreval("/\(^_^)/\   1 - Laboratório de Saúde Pública Veterinária")
                        escreval("/\(^_^)/\   2 - Laboratório de Microbiologia Veterinária")
                        escreval("/\(^_^)/\   3 - Laboratório de Análises Clínicas Veterinária")
                        escreval("/\(^_^)/\   4 - Laboratório de Patologia e Parasitologia Veterinária")
                        escreval("/\(^_^)/\   5 - Laboratório de Anatomia Veterinária")
                        escreval("/\(^_^)/\   6 - Museu de Anatomia da Fauna do Cerrado")
                        escreval("/\(^_^)/\   7 - Laboratório de Plastina")
                        escreval("/\(^_^)/\   8 - Laboratório de Tecnologia do Sêmen Animal")
                        escreval("/\(^_^)/\   9 - Laboratório de Práticas Veterinárias")
                        escreval("/\(^_^)/\   10 - Laboratório de Fisiopatologia de Reprodução")

                        leia(lab)
                        se (lab >= 1) e (lab <= 10) entao
                           escreval("/\(^_^)/\   Entrada concedida!")
                        fimse
                        se (lab = 1) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Saúde Pública Veterinária")
                        fimse
                        se (lab = 2) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Microbiologia Veterinária")
                        fimse
                        se (lab = 3) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Análises Clínicas Veterinária")
                        fimse
                        se (lab = 4) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Patologia e Parasitologia Veterinária")
                        fimse
                        se (lab = 5) entao
                           escreval("/\(^_^)/\   Você entrou no Museu de Anatomia da Fauna do Cerrado")
                        fimse
                        se (lab = 6) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Plastina")
                        fimse
                        se (lab = 7) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Tecnologia do Sêmen Animal")
                        fimse
                        se (lab = 8) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Práticas Veterinárias")
                        fimse
                        se (lab = 9) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório Morfofuncional 02")
                        fimse
                        se (lab = 10) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Fisiopatologia de Reprodução")
                        fimse
                        se (lab < 1) ou (lab > 10) entao
                           escreval("/\(^_^)/\   Opção de laboratório inválida")
                           escreval("/\(^_^)/\   Tente novamente")
                        fimse
                        escreval("/\(^_^)/\   Voltando ao menu...")

                     fimse

                     se (usuario[i,1] = "18") entao
                        escreval("/\(^_^)/\   1 - Laboratório de Estágio Supervisionado e Tecnologias(LESTec)")
                        escreval("/\(^_^)/\   2 - Laboratório do Grupo de Estudos Trabalho em Educação Infantil (GTEI)")
                        escreval("/\(^_^)/\   3 - Laboratório de Pesquisa em Educação (LAPED)")
                        escreval("/\(^_^)/\   4 - Laboratório de Pesquisa e Ensino de Ciências (LabPEC)")
                        escreval("/\(^_^)/\   5 - Laboratório de Estudos em Educação e Audiovisuais(LabEEAudiovisual)")
                        escreval("/\(^_^)/\   6 - Laboratório de Linguagens: Língua Portuguesa e Matemática(LABLINS)")
                        escreval("/\(^_^)/\   7 - Laboratório de Arte")
                        escreval("/\(^_^)/\   8 - Laboratório de Estudos e Pesquisas em Educação Matemática nos Anos Iniciais (LABMAIS)")
                        escreval("/\(^_^)/\   9 - Laboratório de desenvolvimento e aprendizagem")
                        escreval("/\(^_^)/\   10 - Brinquedoteca")
                        escreval("/\(^_^)/\   11 - Laboratório de Currículo")

                        leia(lab)
                        se (lab >= 1) e (lab <= 11) entao
                           escreval("/\(^_^)/\   Entrada concedida!")
                        fimse
                        se (lab = 1) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Estágio Supervisionado e Tecnologias(LESTec)")
                        fimse
                        se (lab = 2) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório do Grupo de Estudos Trabalho em Educação Infantil (GTEI)")
                        fimse
                        se (lab = 3) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Pesquisa em Educação (LAPED)")
                        fimse
                        se (lab = 4) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Pesquisa e Ensino de Ciências (LabPEC)")
                        fimse
                        se (lab = 5) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Estudos em Educação e Audiovisuais(LabEEAudiovisual)")
                        fimse
                        se (lab = 6) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Linguagens: Língua Portuguesa e Matemática(LABLINS)")
                        fimse
                        se (lab = 7) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Arte")
                        fimse
                        se (lab = 8) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Estudos e Pesquisas em Educação Matemática nos Anos Iniciais (LABMAIS)")
                        fimse
                        se (lab = 9) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Desenvolvimento e Aprendizagem")
                        fimse
                        se (lab = 10) entao
                           escreval("/\(^_^)/\   Você entrou na Brinquedoteca")
                        fimse
                        se (lab = 11) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Currículo")
                        fimse
                        se (lab < 1) ou (lab > 11) entao
                           escreval("/\(^_^)/\   Opção de laboratório inválida")
                           escreval("/\(^_^)/\   Tente novamente")
                        fimse
                        escreval("/\(^_^)/\   Voltando ao menu...")

                     fimse

                     se (usuario[i,1] = "19") entao
                        escreval("/\(^_^)/\   1 - Laboratório de Processos Psicológicos Básicos")
                        escreval("/\(^_^)/\   2 - Laboratório de Psicologia e Processos Clínicos")
                        escreval("/\(^_^)/\   3 - Laboratório de Psicologia e Processos Educativos")
                        escreval("/\(^_^)/\   4 - Laboratório de Psicologia e Processos Psicossociais")

                        leia(lab)
                        se (lab >= 1) e (lab <= 4) entao
                           escreval("/\(^_^)/\   Entrada concedida!")
                        fimse
                        se (lab = 1) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Processos Psicológicos Básicos")
                        fimse
                        se (lab = 2) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Psicologia e Processos Clínicos")
                        fimse
                        se (lab = 3) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Psicologia e Processos Educativos")
                        fimse
                        se (lab = 4) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Psicologia e Processos Psicossociais")
                        fimse
                        se (lab < 1) ou (lab > 4) entao
                           escreval("/\(^_^)/\   Opção de laboratório inválida")
                           escreval("/\(^_^)/\   Tente novamente")
                        fimse
                        escreval("/\(^_^)/\   Voltando ao menu...")

                     fimse

                     se (usuario[i,1] = "20") entao
                        escreval("/\(^_^)/\   1 - Laboratório de Pesquisa em Química")
                        escreval("/\(^_^)/\   2 - Laboratório de Química Analítica e Físico-Química")
                        escreval("/\(^_^)/\   3 - Laboratório de Química Inorgânica e Química Orgânica")
                        escreval("/\(^_^)/\   4 - Laboratório de Pesquisa em Pós-Graduação Química")

                        leia(lab)
                        se (lab >= 1) e (lab <= 4) entao
                           escreval("/\(^_^)/\   Entrada concedida!")
                        fimse
                        se (lab = 1) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Pesquisa em Química")
                        fimse
                        se (lab = 2) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Química Analítica e Físico-Química")
                        fimse
                        se (lab = 3) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Química Inorgânica e Química Orgânica")
                        fimse
                        se (lab = 4) entao
                           escreval("/\(^_^)/\   Você entrou no Laboratório de Pesquisa em Pós-Graduação Química")
                        fimse
                        se (lab < 1) ou (lab > 4) entao
                           escreval("/\(^_^)/\   Opção de laboratório inválida")
                           escreval("/\(^_^)/\   Tente novamente")
                        fimse
                        escreval("/\(^_^)/\   Voltando ao menu...")

                     fimse

                     se (usuario[i,1] = "21") entao
                        escreval("/\(^_^)/\   1 - Laboratorio de Pesquisa em Aquicultura (LAPAQ)")
                        escreval("/\(^_^)/\   2 - Laboratório de Nutrição Animal")

                        leia(lab)
                        se (lab >= 1) e (lab <= 2) entao
                           escreval("/\(^_^)/\  Entrada concedida!")
                        fimse
                        se (lab = 1) entao
                           escreval("/\(^_^)/\  Você entrou no Laboratório de Pesquisa em Aquicultura (LAPAQ)")
                        fimse
                        se (lab = 2) entao
                           escreval("/\(^_^)/\  Você entrou no Laboratório de Nutrição Animal")
                        fimse
                        se (lab < 1) ou (lab > 2) entao
                           escreval("/\(^_^)/\   Opção de laboratório inválida")
                           escreval("/\(^_^)/\   Tente novamente")
                        fimse
                        escreval("/\(^_^)/\      Voltando ao menu...")

                     fimse

                     conf <- caracpnum(usuario[i,1]))
                     se (conf < 1) ou (conf > 21) entao
                        escreval("/\(^_^)/\   Escolha inválida! Por favor escolha um curso de 1 à 21")
                     fimse

                  senao
                     escreval("/\(^_^)/\   Número de matrícula incorreto")
                     escreval("/\(^_^)/\   Por favor verifique seu cadastro e tente novamente")
                  fimse
               senao
                  escreval("/\(^_^)/\   Código incorreto ou inválido")
                  escreval("/\(^_^)/\   Tente novamente")
               fimse
               opcoes <- 4
            fimpara
         fimse

      caso 3
         escreval("/\(^_^)/\     Uso finalizado! Fechando menu...    /\(^_^)/\")

      outrocaso
         escreval("/\(^_^)/\   Opção inválida! Escolha novamente     /\(^_^)/\")

      fimescolha
   fimenquanto

Fimalgoritmo

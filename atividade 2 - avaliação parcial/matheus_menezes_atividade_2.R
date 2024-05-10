# MATHEUS DOS SANTOS MENEZES - 21554873
# ATIVIDADE 2 - AVALIAÇÃO PARCIAL - IEE045 INTRODUÇÃO A PROGRAMAÇÃO EM R - 202401 - UFAM

# QUESTÃO 1:

# vetor armazenando os múltiplos de 3
multiplos_de_3 <- numeric()

# loop entre 1 e 1000 para armazenar os múltiplos de 3
for (i in 1:1000) {
  if (i %% 3 == 0) {  # Verifica se é múltiplo de 3
    multiplos_de_3 <- c(multiplos_de_3, i)  # Adiciona no vetor o múltiplo
  }
}

# mostrando os múltiplos de 3
print(multiplos_de_3)


# ------------------


# QUESTÃO 2:

# vetor armazenando os termos da sequência de Fibonacci
fibonacci <- integer()

# colocando os dois primeiros números (1 e 1) na sequência
fibonacci[1] <- 1
fibonacci[2] <- 1

# loop para calcular os próximos termos da sequência
for (i in 3:100) {
  fibonacci[i] <- fibonacci[i - 1] + fibonacci[i - 2]
}

# mostrando os primeiros 100 termos da sequência de Fibonacci
print(fibonacci)


# ------------------


# QUESTÃO 3:

# definindo o número de repetições do experimento
N <- 500

# função para realizar o experimento e contar o número de tentativas
experimento <- function() {
  numero_escolhido <- sample(1:6, 1)  # Escolher um número entre 1 e 6
  tentativas <- 0
  
  # Repetir até o número sorteado ser igual ao número escolhido
  while (TRUE) {
    numero_sorteado <- sample(1:6, 1)  # Sortear um número entre 1 e 6
    tentativas <- tentativas + 1
    
    if (numero_sorteado == numero_escolhido) {
      break
    }
  }
  
  return(tentativas)
}

# realizando o experimento N vezes e guardando o número de tentativas antes do sucesso
tentativas_antes_do_sucesso <- replicate(N, experimento())

# calculando a probabilidade de realizar três tentativas antes do sucesso
probabilidade <- mean(tentativas_antes_do_sucesso == 3)

# comparando com dgeom(3, 1/6)
probabilidade_teorica <- dgeom(3, 1/6)

# mostrando os resultados
print(paste("Probabilidade experimental:", probabilidade))
print(paste("Probabilidade teórica:", probabilidade_teorica))


# ------------------


# QUESTÃO 4:

# definindo os valores de n
n_valores <- c(2, 50, 100, 500, 800, 1000)

# função para realizar o experimento e calcular a frequência relativa
experimento <- function(n) {
  # Inicializar a lista para armazenar as tabelas de frequência relativa
  frequencias_relativas <- list()
  
  # Loop para cada valor de n
  for (n_valor in n) {
    # Simular o lançamento do dado n vezes
    lancamentos <- replicate(n_valor, sample(1:6, 2, replace = TRUE))
    
    # Calcular a tabela de frequência absoluta
    frequencia_absoluta <- table(lancamentos)
    
    # Calcular a tabela de frequência relativa
    frequencia_relativa <- prop.table(frequencia_absoluta)
    
    # Adicionar a tabela de frequência relativa à lista
    frequencias_relativas[[as.character(n_valor)]] <- frequencia_relativa
  }
  
  return(frequencias_relativas)
}

# realizando o experimento
resultados_experimento <- experimento(n_valores)

# mostrando os resultados
for (n_valor in n_valores) {
  print(paste("Frequência relativa para n =", n_valor, ":"))
  print(resultados_experimento[[as.character(n_valor)]])
}

# A frequência relativa provavelmente se aproximará de uma distribuição uniforme à medida que n
# aumenta, refletindo uma maior aleatoriedade nos resultados dos lançamentos do dado."






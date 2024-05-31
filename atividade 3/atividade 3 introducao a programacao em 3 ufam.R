#1)

nome_mes <- function(numero) {
  meses <- c("Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho",
             "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro")
  
  if (numero < 1 || numero > 12) {
    cat("Número de mês inválido. Insira um número de 1 a 12.\n")
  } else {
    cat("O mês correspondente ao número", numero, "é:", meses[numero], "\n")
  }
}
nome_mes(3)

#---------

#2)

coeficiente_variacao <- function(vetor) {
  if (!is.numeric(vetor)) {
    cat("O vetor não é do tipo numeric. Não é possível calcular o coeficiente de variação.\n")
    return(NULL)
  }
  
  desvio_padrao <- sd(vetor)
  media <- mean(vetor)
  
  cv <- (desvio_padrao / media) * 100
  
  return(cv)
}
meu_vetor <- c(10, 20, 30, 40, 50)
coeficiente_variacao(meu_vetor)

#-------------

#3)

# Definição da classe "Livro"
Livro <- setClass(
  "Livro",
  slots = list(
    autor = "character",
    ano_publicacao = "numeric"
  )
)

# Método para imprimir informações sobre o livro
setMethod(
  "show",
  signature = "Livro",
  function(object) {
    cat("Livro:\n")
    cat("Autor:", object@autor, "\n")
    cat("Ano de Publicação:", object@ano_publicacao, "\n")
  }
)

# Função para criar um objeto da classe "Livro"
criar_livro <- function(autor, ano_publicacao) {
  livro <- new("Livro", autor = autor, ano_publicacao = ano_publicacao)
  return(livro)
}
meu_livro <- criar_livro("Pica Pau", 2022)
print(meu_livro)

#-------------

#4)
funcao_f <- function(x) {
  if (!is.numeric(x)) {
    stop("Erro: A entrada não é numérica.")
  }
  
  if (x < 0) {
    stop("Erro: O valor de x não pode ser negativo.")
  }
  
  if (x >= 0 & x < 10) {
    resultado <- (x - 3)^2 + 5
  } else {
    resultado <- 54
  }
  
  return(resultado)
}
resultado <- funcao_f(5)
print(resultado)

#---------------

#5)

`%divisivel_por%` <- function(x, y) {
  return(x %% y == 0)
}
# Verificando se 10 é divisível por 2
resultado <- 10 %divisivel_por% 2
print(resultado)  # Isso imprimirá TRUE

# Verificando se 7 é divisível por 3
resultado <- 7 %divisivel_por% 3
print(resultado)  # Isso imprimirá FALSE

#------------------

# professor, remover essa questao 6 aqui do codigo
caso seja preciso para rodar esse arquivo em R

#6)

# Função que pode gerar um erro
funcao_exemplo <- function(x) {
  if (x <= 0) {
    stop("Erro: x deve ser maior que zero.")
  } else {
    return(sqrt(x))
  }
}

# Exemplo usando try
resultado <- try(funcao_exemplo(-5))

# Verificando se houve um erro
if (inherits(resultado, "try-error")) {
  resultado <- NaN
  cat("Ocorreu um erro:", conditionMessage(resultado), "\n")
} else {
  cat("Resultado:", resultado, "\n")
}





















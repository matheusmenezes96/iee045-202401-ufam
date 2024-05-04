# MATHEUS DOS SANTOS MENEZES
# ATIVIDADE 1 - IEE045 INTRODUÇÃO A PROGRAMAÇÃO EM R - 202401 - UFAM

# QUESTÃO 1:

Produto <- function(preco, validade) {
  structure(
    list(
      preco = preco,
      validade = format(as.Date(validade), "%d/%m/%Y")
    ),
    class = "Produto"
  )
}

meu_produto <- Produto(preco = 10.99, validade = "2024-06-30")

print("QUESTÃO 1:")
print(paste("Preço:", meu_produto$preco))
print(paste("Validade:", meu_produto$validade))
print("-------------")


# -------------


# QUESTÃO 2:

Livro <- function(autor, ano_publicacao) {
  structure(
    list(
      autor = autor,
      ano_publicacao = ano_publicacao
    ),
    class = "Livro"
  )
}

livro1 <- Livro(autor = "João da Silva", ano_publicacao = 2005)
livro2 <- Livro(autor = "Maria Oliveira", ano_publicacao = 2010)
livro3 <- Livro(autor = "Carlos Santos", ano_publicacao = 2018)

print("QUESTÃO 2:")
print("Informações dos livros:")
print(paste("Livro 1 - Autor:", livro1$autor, ", Ano de Publicação:", livro1$ano_publicacao))
print(paste("Livro 2 - Autor:", livro2$autor, ", Ano de Publicação:", livro2$ano_publicacao))
print(paste("Livro 3 - Autor:", livro3$autor, ", Ano de Publicação:", livro3$ano_publicacao))


# -------------


# QUESTÃO 3:
# Letra a)

nomes <- c("João", "Maria", "Pedro", "Ana", "Luiz")

notas <- c(8.5, 7.2, 9.0, 6.8, 8.9)

dados <- data.frame(
  nome = nomes,
  nota = notas
)

print("QUESTÃO 3:")
print("letra a)")
print(dados)

# QUESTÃO 3:
# Letra b)

nomes <- c("João", "Maria", "Pedro", "Ana", "Luiz")
notas <- c(8.5, 7.2, 9.0, 6.8, 8.9)
disciplinas <- c("Matemática", "Português", "História", "Geografia", "Ciências")

dados <- data.frame(
  nome = nomes,
  nota = notas,
  disciplina = disciplinas
)

print("QUESTÃO 3:")
print("letra b)")
print(dados)

# QUESTÃO 3:
# Letra c)

nomes <- c("João", "Maria", "Pedro", "Ana", "Luiz")
notas <- c(8.5, 7.2, 9.0, 6.8, 8.9)
disciplinas <- c("Matemática", "Português", "História", "Geografia", "Ciências")

dados <- data.frame(
  nome = nomes,
  nota = notas,
  disciplina = disciplinas
)

print("QUESTÃO 3:")
print("letra c)")
dados$disciplina <- c("Física", "Química", "Artes", "Educação Física", "Inglês")
print(dados)

# QUESTÃO 3:
# Letra d)

nomes <- c("João", "Maria", "Pedro", "Ana", "Luiz")
notas <- c(8.5, 7.2, 9.0, 6.8, 8.9)
disciplinas <- c("Matemática", "Português", "História", "Geografia", "Ciências")
semestres <- c(1, 2, 1, 2, 1)

dados <- data.frame(
  nome = nomes,
  nota = notas,
  disciplina = disciplinas,
  semestre = semestres
)

print("QUESTÃO 3:")
print("letra d)")
dados$disciplina <- c("Física", "Química", "Artes", "Educação Física", "Inglês")
print(dados)


# -------------


# QUESTÃO 4:

cidade <- rep(c("Nova York", "Londres"), each = 5)
temperatura <- c(22, 21, 20, 23, 22, 18, 17, 19, 16, 18)

dados <- data.frame(
  cidade = cidade,
  temperatura = temperatura
)

media_temperatura <- tapply(dados$temperatura, dados$cidade, mean)
desvio_padrao_temperatura <- tapply(dados$temperatura, dados$cidade, sd)

print("QUESTÃO 4:")
print("Estatísticas para Nova York:")
summary(subset(dados, cidade == "Nova York")$temperatura)
print("Estatísticas para Londres:")
summary(subset(dados, cidade == "Londres")$temperatura)

matriz_dados <- as.matrix(dados)

print("Matriz de dados:")
print(matriz_dados)









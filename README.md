# Sondas

**Envio de coordenadas para uma sonda explorar em planalto em outro planeta**

## Installation
Software escrito em Elixir para intalar o elixir na sua maquina siga este tutorial [https://elixir-lang.org/install.html]


## Execution

Execute o iex dentro do diretorio da aplicação
```
iex -S mix

```

Execute o comando Sondas.start
```
Sondas.start

```
Este comando vai solicitar as entradas onde a primeira linha da entrada de dados é a coordenada do ponto superior-direito da malha do planalto. Lembrando que a inferior esquerda sempre será (0,0).
O resto da entrada será informação das sondas que foram implantadas. Cada sonda é representada por duas linhas. A primeira indica sua posição inicial e a segunda uma série de instruções indicando para a sonda como ela deverá explorar o planalto.
A posição é representada por dois inteiros e uma letra separados por espaços, correspondendo à coordenada X-Y e à direção da sonda. 

Exemplo:

```
5 5
1 2 N
LMLMLMLMM
3 3 E
MMRMMRMRRM

```

A saída deverá contar uma linha para cada sonda, na mesma ordem de entrada, indicando sua coordenada final e direção.

Exemplo:

```
1 3 N
5 1 E

```

## Tests
Para executar os teste basta digitar o comando mix test --trace dentro do diretorio da aplicaçãp 

Exemplo: 

```
mix test --trace

```
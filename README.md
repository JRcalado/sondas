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
este comando vai solicitar as entradas onde a primeira linha da entrada de dados é a coordenada do ponto superior-direito da malha do planalto. Lembrando que a inferior esquerda sempre será (0,0).
O resto da entrada será informação das sondas que foram implantadas. Cada sonda é representada por duas linhas. A primeira indica sua posição inicial e a segunda uma série de instruções indicando para a sonda como ela deverá explorar o planalto.
A posição é representada por dois inteiros e uma letra separados por espaços, correspondendo à coordenada X-Y e à direção da sonda. 


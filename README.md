Desafios 2 e 3
==============

Requerem Perl instalado em #!/usr/bin/perl. Perl vem automaticamente em Mac OSX.


Desafio 2
=========

Criar um codificador e decodificador de texto usando codificacao por carreira.
Exemplo: Dado uma string "AAABBBBCDDDDDDDDDDEEDDDD" como entrada, devolver uma
string "A3B4C1D10E2D4", onde cada simbolo do alfabeto e seguido da sua
frequencia na string. O decodificador faz o processo contrario.

Decodificando:
```
./des2.pl A3B4C1D10E2D4
AAABBBBCDDDDDDDDDDEEDDDD
```

ou:

```
./des2.pl decode A3B4C1D10E2D4
AAABBBBCDDDDDDDDDDEEDDDD
```

Codificando:

```
./des2.pl encode AAABBBBCDDDDDDDDDDEEDDDD
A3B4C1D10E2D4
```

Bonus -- contar todas letras:
```
./des2.pl count "AAAABCDDDDDDDDDEE"
$VAR1 = {
          'A' => 4,
          'D' => 9,
          'C' => 1,
          'E' => 2,
          'B' => 1
        };
```

Desafio 3
=========

Dado um conjunto de numeros, descobrir o subconjunto em que a soma dos elementos
sao de maxima soma. 

Exemplo: dado o conjunto de elementos [2, -4, 6, 8, -10, 100, -6, 5]

O subconjunto de soma maxima e': [2, -4, 6, 8, -10, 100, -6, 5]

Uso:
```
./des3.pl "2, -4, 6, 8, -10, 100, -6, 5"
A maior soma e' 104, nas posicoes 2-5 [6,8,-10,100]
```

Para mostrar os valores de todas combinacoes possiveis use o parametro "details":
```
./des3.pl "2, -4, 6, 8, -10, 100, -6, 5" details
A maior soma e' 104, nas posicoes 2-5 [6,8,-10,100]
$VAR1 = {
          '4-5' => 90,
...
          '1-3' => 10
        };
```

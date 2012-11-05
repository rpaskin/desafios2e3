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


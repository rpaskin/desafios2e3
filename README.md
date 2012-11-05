Desafio 2
=========

Criar um codificador e decodificador de texto usando codificação por carreira.
Exemplo: Dado uma string "AAABBBBCDDDDDDDDDDEEDDDD" como entrada, devolver uma string "A3B4C1D10E2D4", onde cada símbolo do alfabeto é seguido da sua frequência na string. O decodificador faz o processo contrário.

Decodificando:
```
$ ./des2.pl A3B4C1D10E2D4
AAABBBBCDDDDDDDDDDEEDDDD
```

ou:

```
$ ./des2.pl decode A3B4C1D10E2D4
AAABBBBCDDDDDDDDDDEEDDDD
```

Codificando:

```
$ ./des2.pl encode AAABBBBCDDDDDDDDDDEEDDDD
A3B4C1D10E2D4
```


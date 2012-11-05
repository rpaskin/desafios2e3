#!/usr/bin/perl -w
# Criar um codificador e decodificador de texto usando codificação por carreira.
# Exemplo: Dado uma string "AAABBBBCDDDDDDDDDDEEDDDD" como entrada, devolver uma string "A3B4C1D10E2D4", onde cada símbolo do alfabeto é seguido da sua frequência na string. O decodificador faz o processo contrário.
#
# Usage:
# $ ./des2.pl A3B4C1D10E2D4
# AAABBBBCDDDDDDDDDDEEDDDD
#
# $ ./des2.pl decode A3B4C1D10E2D4
# AAABBBBCDDDDDDDDDDEEDDDD
#
# $ ./des2.pl encode AAABBBBCDDDDDDDDDDEEDDDD
# A3B4C1D10E2D4
#
# by Ronnie Paskin 2012.10.3

use strict;

my $op = $ARGV[0];
my $str = $ARGV[1];

# encode
if ($op =~ /encode/i && $str){

    # 1) separar as sequencias com \0 usando um look-ahead
    $str =~ s/(.)(?!\1)/$1\0/g;

    # 2) para cada sequencia separada por \0, colocar o caracter e o tamanho
    $str =~ s/(.+?)\0/substr($1,0,1) . length($1)/eg;

    print "$str\n";
}
# BONUS Easter Egg - contagem das letras :-)
elsif ($op =~ /count/i && $str){
    my %count;
    $str =~ s/(.)/$count{$1}++/eg;  # com auto-vivification, se count nao existe ele e' criado e incrementado automagicamente
    print Dumper(\%count); use Data::Dumper;
}
# decode
else {
    $str or $str = $op; # Se nao existe um parametro de operacao, assumir que o unico parametro e' o string a ser decodificado

    # decodificar -- perl golf anyone? ;-)
    $str =~ s/(\D+)(\d+)/$1 x $2/eg;

    #print STDERR "$str\n";

    print "$str\n";
}

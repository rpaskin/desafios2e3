#!/usr/bin/perl -w
#Dado um conjunto de nœmeros, descobrir o subconjunto em que a soma dos elementos s‹o de m‡xima soma. 
#
#Exemplo: dado o conjunto de elementos 
#[2, -4, 6, 8, -10, 100, -6, 5]
#
#O subconjunto de soma m‡xima Ž:
#[2, -4, 6, 8, -10, 100, -6, 5]
#
# Usage:
#
# ./des3.pl "2, -4, 6, 8, -10, 100, -6, 5"
# A maior soma e' 104, nas posicoes 2-5 [-4,6,8,-10]
#
#
# Para mostrar os valores de todas combinacoes:
# ./des3.pl "2, -4, 6, 8, -10, 100, -6, 5" details
#
#
# by Ronnie Paskin 2012.10.3
use strict;

my $str = $ARGV[0];
    
my @numbers = split /\s*,\s*/, $str;

my %allSums;
my $maxSum;

getPossibleSums(\@numbers, 0, 100);

sub getPossibleSums {
    my $list = shift;
    my $shifting = shift || 0;  # Se algum elemento foi removido
    my $safe = shift || 100;

    $safe > 0 or return;
    $safe--;

    # Verificar a soma de todos elementos
    my $key = (0+$shifting).'-'.(@$list-1+$shifting);
    $allSums{$key} = getListSum($list);
                                                                    # Esse e' o maior valor se:
    if (!$maxSum ||                                                 # ainda nao temos nenhum calculado, ou
        $allSums{$key} > $maxSum->[1] ||                            # esse valor e' maior do que o ultimo maior, ou
        ($allSums{$key} == $maxSum->[1] && @$list < $maxSum->[2])){ # o valor e' igual, mas com menos elementos

        $maxSum = [$key, $allSums{$key}, \@$list];
    }
    
    # Remover o primeiro elemento e calcular as somas possiveis desse novo grupo
    my @newList = @$list; # Copiar por valores, nao referencia!    
    shift @newList;
    getPossibleSums(\@newList, $shifting+1, $safe) if (@newList);

    # Remover o ultimo elemento e calcular as somas possiveis do grupo
    @newList = @$list; # Copiar novamente, por valores
    pop @newList;
    getPossibleSums(\@newList, $shifting, $safe) if (@newList);
}

print "A maior soma e' $maxSum->[1], nas posicoes $maxSum->[0] [". join(",",@{$maxSum->[2]}) ."]\n";

if ($ARGV[1] && $ARGV[1] eq 'details'){
    warn Dumper(\%allSums); use Data::Dumper;   # E claro que como esse e' um hash nao ha order nas chaves
}

sub getListSum {
    my $list = shift;
    my $sum = 0;
    map { $sum+=$_; } @$list;
    return $sum;
}

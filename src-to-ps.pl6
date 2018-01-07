#!/usr/bin/env perl6
#
# src-to-ps - Prepara el código fuente de un proyecto para impresión dado 
#             el directorio del mismo como argumeto
#
#             busca las siguientes extensiones de archivos:
#             .pl .pl6 .pm .pm6 .p6 .py
#

use v6;

sub MAIN ($project-dir) {
    if $project-dir.IO:d {
        my @src-files;
        my @todo = $project-dir.IO;
        while @todo {
            for @todo.pop.dir -> $path {
                @todo.push: $path if $path.d;
                @src-files.push: $path 
                    if $path ~~ / .+? p [ [l|m] 6? | y | 6 ] $/;
            }
        }
        my $ps-dir = "{$project-dir}docs/ps";
        mkdir $ps-dir;
        for @src-files -> $src {
            my $dst  = "$ps-dir/" ~ $src.basename ~ '.ps';
            shell "nl $src | paps --font=10 -- >$dst";
        }
    }
}

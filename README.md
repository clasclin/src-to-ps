src-to-ps
---------

Busca de manera recursiva el código fuente de un proyecto, lo prepara
para impresión y crea los archivos en el directorio: proyecto/docs/ps 

## Uso típico.

```bash
$ src-to-ps.pl6 ~/proyectos/caminata
```

Lo que hace es crear nuevos archivos dentro del proyecto

```
  caminata/
  |__ docs
     |__ ps
         |__ ...
         |__ caminata.pl6.ps
         |__ Caminata.pm6.ps
         |__ crear-plantilla.pl.ps
```

## Requisitos

* [perl6](http://perl6.org/)
* [paps](https://github.com/dov/paps)



# Dicionarios IBGE

Dicionarios de dados para leitura no R das pesquisas PNAD, PME e POF
do IBGE.  Link para o pacote no site do CRAN:

http://cran.r-project.org/web/packages/dicionariosIBGE/index.html

## Responsável

 * Alexandre Rademaker  (EMAp/FGV)

## Usando o pacote

Para instalar automaticamente a versao mais recente disponivel no
CRAN, use o seguinte comando no R:

    install.packages("dicionariosIBGE")

Para carregar o pacote:

    library(dicionariosIBGE)

Listando os dicionarios disponiveis no pacote:

    data(package = "dicionariosIBGE")

Para carregar os dicionarios de uma pesquisa, utilize o comando data e
nome do dataset da pesquisa. Este nome pode ser visto com o comando
anterior. Por exemplo:

    data(dicPNAD1993)


## Compilando e instalando o pacote a partir do fonte

Para gerar um .tar.gz instalavel:

    R CMD build dicionariosIBGE/

Instalando o pacote:

    install.packages("dicionariosIBGE_1.6.tar.gz", repos=NULL, type="source")


Para instalar o pacote .tar.gz e necessario passar o parametro
type="source" para a funcao. No Windows, isso requer que alguns
programas estejam no path do sistema (vide Rtools).

Tambem e possivel no Windows instalar a partir de um arquivo .zip com
o conteudo do diretorio apos instalado (pacote pre-compilado). Neste
caso, nao e necessario nenhum programa no path e nem o parametro
type="source".


## ChangeLog

- O pacote foi desenvolvido a partir de uma versão do IBGE que foi
  descontinuada e nunca publicada no CRAN. As adaptações foram
  planejadas e iniciadas por Alexandre Rademaker que supervisionou o
  trabalho de Rafael Fernandes Haeusler, então estagiário na EMAp.

- Versão 1.6 de 13/08/2014. Aceitei contribuição de
  [Flávio Barros](https://github.com/flaviobarros) com os dicionários
  da PNAD 2012.

## License

See DESCRIPTION in the source directory dicionariosIBGE/


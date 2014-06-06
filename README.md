

# Dicionarios IBGE

Dicionarios de dados para leitura no R das pesquisas PNAD, PME e POF
do IBGE.  Link para o pacote no site do CRAN:

http://cran.r-project.org/web/packages/dicionariosIBGE/index.html


## Equipe

 * Alexandre Rademaker  (EMAp/FGV)
 * Rafael Fernandes Haeusler

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

    R CMD build [DIRETORIO]

Instalando o pacote:

    R CMD INSTALL pkg.tar.gz

Ou, no R:

    install.packages("pkg.tar.gz", repos=NULL)


No Windows, para instalar o pacote .tar.gz e necessario passar o
parametro type="source" para a funcao. Isso requer que alguns
programas estejam no path do sistema (vide Rtools).

Tambem e possivel no Windows instalar a partir de um arquivo .zip com
o conteudo do diretorio apos instalado (pacote pre-compilado). Neste
caso, nao e necessario nenhum programa no path e nem o parametro
type="source".


## License

<p></p>
<a rel="license"
href="http://creativecommons.org/licenses/by-sa/3.0/br/"><img
alt="Creative Commons License" style="border-width:0"
src="http://i.creativecommons.org/l/by-sa/3.0/br/88x31.png" /></a><br
/><span xmlns:dct="http://purl.org/dc/terms/"
href="http://purl.org/dc/dcmitype/Dataset" property="dct:title"
rel="dct:type">dicionariosIBGE</span> by <a
xmlns:cc="http://creativecommons.org/ns#" href="http://emap.fgv.br"
property="cc:attributionName" rel="cc:attributionURL">EMAp, Getulio
Vargas Foundation</a> is licensed under a <a rel="license"
href="http://creativecommons.org/licenses/by-sa/3.0/br/">Creative
Commons Attribution-ShareAlike 3.0 Brazil License</a>.<br />Based on a
work at <a xmlns:dct="http://purl.org/dc/terms/"
href="https://github.com/arademaker/dicionariosIBGE"
rel="dct:source">github.com</a>.

Take a look in the file LICENSE. 



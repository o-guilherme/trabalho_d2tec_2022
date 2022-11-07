# Trabalho D2TEC - 2022
### IFSP - Câmpus Campinas
### Especialização em Ciência de Dados

---

### Alunos:
* Guilherme - CP301620X
* Mariana - CP3016625

----
### Introdução

O objetivo do presente trabalho é criar um ETL (Extract, Transform and Load) de dados utilizando a AWS (Amazon Web Services) e utilizar a linguagem SQL para fazer análise dos dados.

Para uso nesse trabalho foi utilizado o acesso do Learner Labs, para acesso às ferramentas do S3, Glue e Athena, todas da AWS.

---
### Relatório de atividades

**Dados utilizados**

Para uso nesse projeto foram utilizados dados disponibilizados de usuários do Kaggle. Os datasets foram obtidos em formato CSV e se referem aos seguintes conjuntos:

* Índices da B3
* Ações negociadas na B3
* Indicadores econômicos do Brasil
* Taxas de câmbio de moedas diversas

Os três primeiros arquivos encontram-se disponíveis no seguinte link: www.kaggle.com/datasets/andrewmvd/brazilian-stock-market

Já o último arquivo está disponível em: www.kaggle.com/datasets/cvengr/us-dollar-exchange-rates

**Infraestrutura utilizada**
* Todos as atividades foram desenvolvidas na região *us-east-1* da AWS;
* Foi criado um bucket para armazenamento dos dados CSV no S3, usando armazenamento padrão (Tier S3 Standard);
* Os dados foram aglutinados pelo serviço de integração do AWS Glue, gerando uma database que foi denominada de "etld2tec";
* Por fim foi utilizada a ferramanta Amazon Athena para realizar as queries nos dados.

O projeto seguiu o paradigma serverless, portanto não houve instâncias do EC2, nem armazenamento em blocos relacionados.

Embora fosse possível utilizar o Amazon Sagemaker para realizar o pré-processamento dos dados, como se tratam de datasets pequenos, o pré-processamento foi realizado localmente, utilizando o Jupyter Lab. Referido notebook se encontra nos arquivos desse projeto.

**Resumo das atividades**

1. Obtenção dos dados;
2. Pré-processamento utilizando o Jupyter-lab;
3. Criação do S3 bucket "trabalho-ifsp-campinas-d2tec-2022-2" e upload dos dados neste;
4. Criação da database "etld2tec" para aglutinação dos dados;
5. Criação do crawler "d2tec-crawler" e uso do mesmo para aglutinar os dados disponíveis em S3;
6. Verificação e pequenos ajustes no schema dos dados criados pelo AWS Glue;
7. Criação das queries pelo Amazon Athena.

O diagrama da infraestrutura está nos arquivos do projeto.

**Metadados** 

Segue a descrição dos dados tabulares e seus significados

* Arquivo `bovespa_indexes.csv`<br>
`index`:  Índice dos dados<br>
`Date`: Data da observação<br>
`Symbol`: Símbolo do índice<br>
`Adj Close`: Valor de fechamento ajustado<br>
`Close`: Valor de fechamento<br>
`High`: Valor mais alto de negociação<br>
`Low`: Valor mais baixo de negociação<br>
`Open`: Valor de abertura<br>
`Volume`: Volume negociado<br>

* Arquivo `bovespa_stocks.csv`<br>
`index`:  Índice dos dados<br>
`Date`: Data da observação<br>
`Symbol`: Símbolo da ação/ativo<br>
`Adj Close`: Valor de fechamento ajustado<br>
`Close`: Valor de fechamento<br>
`High`: Valor mais alto de negociação<br>
`Low`: Valor mais baixo de negociação<br>
`Open`: Valor de abertura<br>
`Volume`: Volume negociado<br>

* Arquivo `economic_indicators.csv`<br>
`index`:  Índice dos dados<br>
`Date`: Data da observação<br>
`Taxa Selic`: Taxa SELIC (Sistema Especial de Liquidação e Custódia)<br>
`IPCA`: Variação do IPCA (Índice Nacional de Preços ao Consumidor Amplo)<br>
`IGP-M`: Variação do IGPM (Índice Geral de Preços de Mercado)<br>
`INPC`: Variação do INPC (Índice Nacional de Preços ao Consumidor)<br>
`Desemprego PNADC`: Taxa de desemprego medida pelo IBGE pela Pesquisa Nacional por Amostra de Domicílios Contínua<br>

* Arquivo `exchange_rates.csv`<br>
`index`:  Índice dos dados<br>
`Date`: Data da observação<br>
EUR
GBP
INR
AUD
CAD
SGD
CHF
MYR
JPY
CNY
ARS
BHD
BWP
BRL
BND
BGN
CLP
COP
HRK
CZK
DKK
HKD
HUF
ISK
IDR
IRR
ILS
KZT
KRW
KWD
LYD
MUR
MXN
NPR
NZD
NOK
OMR
PKR
PHP
PLN
QAR
RON
RUB
SAR
ZAR
LKR
SEK
TWD
THB
TTD
TRY
AED

### Link dos itens artefatos relevantes










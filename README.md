# Automacao_Mobile_SMS
Automação mobile para abrir o aplicativo nativo android de envio de mensagens e enviar uma mensagem.

### Ferramentas

Este projeto utiliza cucumber, capybara, rspec para a criação do BDD e APPIUM com Android studio para execução dos testes 
em devices mobile, em conjunto com as `gems` para reproduzir as ações executadas pelos aparelhos celular.
Esses testes não garantem que o software não contenha erros, mas ao utilizá-los adicionamos valor ao produto, uma vez que os 
testes corretamente executados, tendem a identificar comportamentos que devem ser corrigidos, aumentando assim a qualidade e 
confiabilidade do software.

**Obs.:** O conjunto de gem's que acreditamos serem necessários para que os testes podem ser encontrados no arquivo *gemfile*.

## Estrutura do projeto

```
Project
├── caps 
├── features
│   ├── functions
│   ├── specs
│   │   └── BDD
│   ├── step_definitions
│   │   └── Tests
│   ├──suport
│   │   └── env.rb
│   │   └── homol.yaml
│   │   └── prod.yaml
│   └── reports
├── cucumber.yaml
├── .gitignore
├── Gemfile
└── README.md
```

Os resultados dos testes são gerados dentro da pasta reports, com o nome de *result*.  

# Configurações:

```
$ sudo apt-get install build-essential patch ruby-dev zlib1g-dev liblzma-dev  
```

Você precisará ter os itens instalados em sua maquina:  

[ruby](https://www.ruby-lang.org/pt/documentation/installation/)  
[bundle](https://bundler.io/)  
[APIUM WINDOWS/MAC](https://www.toolsqa.com/mobile-automation/appium/appium-tutorial/)  
[APIUM LINUX](https://medium.com/testcult/configuring-appium-in-ubuntu-from-scratch-a9f8edc02d13)  

**Obs.:** Sem esses itens na sua maquina você NÃO conseguirá rodar os testes no celular.

```               
$ bundle                                             
```
O comando *bundle* baixa todas as dependências do projeto e as instala. 

**Obs.:** É possivel que ao instalar as dependências, seja encontrado algum problema para instalar uma gem, nesse caso 
realize a instalação da gem especifica e prossiga com o bundle.

### Nota sobre Configurações

Os arquivo de configuração ficam em `feature/cucumber.yaml`.
Outros tipos de configurações podem ser encontrados dentro de `features/support`.

## subindo servidor APPIUM

Antes de qualquer coisa é necessário subir o servidor do appium.

```               
$ appium                                           
```
Utilize m terminal a parte para subir o terminal.

## Execução dos testes

Para executar os testes, use:

```               
$ adb devices                                            
```
O comando adb services irá identificar o nome do seu aparelho conectado. 
**Obs.:** É necessário que esse mesmo nome esteja configurado para o campo *deviceName* no arquivo TXT responsavel na 
pasta **caps**.

### Identificando path, ids e informações na tela do celular

Para entrar em modo debug é necessario executar o comando

```               
$ arc toml <path>                                            
```

`<path>` a informação nesse campo é o caminho do arquivo txt na pasta **caps**.

```
$ cucumber                                           
```
O comando *cucumber* executa de fato todos os testes do projeto de uma unica vez.

Caso queira rodar algum teste em especifico rode o seguinte comando:
```
$ cucumber -t @tagcriada                             
```
**Obs.:** *tagcriada* é o nome da tag que especifica qual o teste desejado. 

Caso queira ver um espelho do que acontece no celular diretamente no pc você pode instalar a extenção do 
chrome [Vysor](https://chrome.google.com/webstore/detail/vysoric/galipjkgiboeanfhpjlpeniihhlaagfb?utm_source=chrome-ntp-icon)

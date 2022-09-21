*** Settings ***
Library   String

*** Variables ***
&{PESSOA}   nome=Juliana   sobrenome=Santana

*** Test Cases ***
Imprime e-mail customizado e aleatório
    ${EMAIL_CRIADO}    Criar e-mail customizado e aleatório    ${PESSOA.nome}    ${PESSOA.sobrenome}
    Log To Console     ${EMAIL_CRIADO}


*** Keywords ***
Criar e-mail customizado e aleatório
    [Arguments]       ${NOME}  ${SOBRENOME}
    ${ALEATORIA}      Generate Random String
    ${EMAIL_FINAL}    Set Variable    ${NOME}${SOBRENOME}${ALEATORIA}@teste.com
    [Return]          ${EMAIL_FINAL}

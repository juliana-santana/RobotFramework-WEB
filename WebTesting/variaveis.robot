*** Settings ***
Documentation    Tipos de Variáveis

*** Variables ***

#Tipo Lista
@{MES}            Janeiro    Fevereiro    Março    Abril    Maio    Junho    
            ...   Julho    Agosto    Setembro    Outubro    Novembro    Dezembro

#Tipo Dicionario     
&{MESES_QTD_DIAS}    Janeiro=31    Fevereiro=28    Março=31   Abril=30    Maio=31
                ...  Junho=30    Julho=31    Agosto=31    Setembro=30    Outubro=31
                ...  Novembro=30    Dezembro=30

*** Test Cases ***   
Caso de teste meses do ano 1 
    Imprimir os meses do ano

Caso de teste meses do ano 2
    Imprimir os meses do ano e quantidade de dias

*** Keywords ***
Imprimir os meses do ano

    Log To Console   O primeiro mês do ano é: ${MES[0]}
    Log To Console    O segundo mês do ano é: ${MES[1]}
    Log To Console    O terceiro mês do ano é: ${MES[2]}
    Log To Console    O quarto mês do ano é: ${MES[3]}
    Log To Console    O quinto mês do ano é: ${MES[4]}
    Log To Console    O sexto mês do ano é: ${MES[5]}
    Log To Console    O setimo mês do ano é: ${MES[6]}
    Log To Console    O oitavo mês do ano é: ${MES[7]}
    Log To Console    O nono mês do ano é: ${MES[8]}
    Log To Console    O decimo mês do ano é: ${MES[9]}
    Log To Console    O decimo primeiro mês do ano é: ${MES[10]}
    Log To Console    O decimo segundo mês do ano é: ${MES[11]}

Imprimir os meses do ano e quantidade de dias

    Log To Console    Em Janeiro há ${MESES_QTD_DIAS.Janeiro} dias
    Log To Console    Em Fevereiro há ${MESES_QTD_DIAS.Fevereiro} dias
    Log To Console    Em Março há ${MESES_QTD_DIAS.Março} dias
    Log To Console    Em Abril há ${MESES_QTD_DIAS.Abril} dias
    Log To Console    Em Maio há ${MESES_QTD_DIAS.Maio} dias
    Log To Console    Em Junho há ${MESES_QTD_DIAS.Junho} dias
    Log To Console    Em Julho há ${MESES_QTD_DIAS.Julho} dias
    Log To Console    Em Agosto há ${MESES_QTD_DIAS.Agosto} dias
    Log To Console    Em Setembro há ${MESES_QTD_DIAS.Setembro} dias
    Log To Console    Em Outubro há ${MESES_QTD_DIAS.Outubro} dias
    Log To Console    Em Novembro há ${MESES_QTD_DIAS.Novembro} dias
    Log To Console    Em Dezembro há ${MESES_QTD_DIAS.Dezembro} dias
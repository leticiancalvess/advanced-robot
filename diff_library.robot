*** Settings ***
Library    DiffLibrary

*** Test Cases ***
Test Case 01: Arquivos Diferentes
    Validar que os arquivos são diferentes    

*** Keywords ***

Validar que os arquivos são diferentes

    Diff Files    file1=./my_files/arquivo_TEXTO.txt    file2=./my_files/arquivo_texto_linhas.txt
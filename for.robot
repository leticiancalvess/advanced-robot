*** Test Cases ***
New Format
    New Format (For)
    Loop (For)
    Dictionary (For)
    Position in the list (For)
    For (In Range)
    For (Superior limit)
    For (arithmetical)
    For (interval)

*** Keywords ***
New Format (For)
    FOR    ${animal}    IN    gato    cachorro    cavalo
        Log    O animal desse laço é: ${animal}!
        Log    Vamos para o próximo animal da lista...
    END

Loop (For)
    FOR    ${produto}    IN    baby look    camiseta    blusa
        Imprime tamanhos para o produto    ${produto}
    END

Imprime tamanhos para o produto
    [Arguments]  ${produto}
    FOR    ${tamanho}    IN    P   M   G
        Log    Produto: ${produto} - Tam: ${tamanho}
    END

Dictionary (For)
    FOR    ${index}    ${english}    ${finnish}    ${portugues}     IN
    ...    1            cat            kissa        gato
    ...    2            dog            koira        cachorro
    ...    3            horse          hevonen      cavalo
        Log    Animal ${index}:\nEm inglês: ${english}\nEm finlandês: ${finnish}\nEm português: ${portugues}
    END

Position in the list (For)
    FOR     ${index}    ${item}    IN ENUMERATE    P     M     G     GG
        Log    A posição ${index} equivale a ${item}
    END

For (In Range)
    FOR    ${index}    IN RANGE    1    11
        Log     ${index}
    END
   
For (Superior limit)   
    FOR    ${index}    IN RANGE    10
        Log     ${index}
    END

For (arithmetical)
    ${var}    Set Variable    ${5}
    FOR    ${index}    IN RANGE    ${var} + 1
        Log    ${index}
    END

For (interval)
    FOR    ${index}    IN RANGE    0    31    5
        Log    ${index}
    END
    
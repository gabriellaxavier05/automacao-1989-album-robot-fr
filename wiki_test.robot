*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${URL}    https://pt.wikipedia.org/wiki/1989_(%C3%A1lbum_de_Taylor_Swift)
${TEXTO}    1989 (álbum de Taylor Swift)

** Test Cases ***
Abrir página da Wikipedia e verificar título
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window     # Maximiza a janela do navegador
    Page Should Contain    ${TEXTO}    # Verifica se o texto está presente na página
    Sleep    50s    # Pausa por 50 segundos para visualização
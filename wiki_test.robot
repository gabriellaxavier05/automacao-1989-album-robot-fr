*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${URL}    https://pt.wikipedia.org/wiki/1989_(%C3%A1lbum_de_Taylor_Swift)
${TITULO_ALBUM}    1989 (álbum de Taylor Swift)
${TITULO_TS}    Taylor Swift

** Test Cases ***
Verificar título da página sobre o álbum 1989
    Abrir Página da Wikipedia
    Page Should Contain    ${TITULO_ALBUM}    # Verifica se o texto está presente na página
    Sleep    20s    # Pausa por 20 segundos para visualização

Verificar se a caixinha “infobox” está presente na página
    Abrir Página da Wikipedia
    Element Should Be Visible    xpath=//table[@class='infobox infobox_v2']    # Verifica se a caixinha infobox está visível
    Sleep    20s

Verificar se há uma imagem da capa do álbum
    Abrir Página da Wikipedia
    Element Should Be Visible    xpath=//img[@src='//upload.wikimedia.org/wikipedia/pt/thumb/c/c3/1989_de_Taylor_Swift.jpg/250px-1989_de_Taylor_Swift.jpg']    # Verifica se a imagem da capa do álbum está presente
    Sleep    20s

Checar se existe a seção “Lista de Faixas”
    Abrir Página da Wikipedia
    Element Should Be Visible    xpath=//h2[@id='Lista_de_faixas']    # Verifica se a seção "Lista de Faixas" está presente
    Sleep    20s

Direcionar para a página sobre a Taylor Swift
    Abrir Página da Wikipedia
    Click Link    Taylor Swift     # Clica no link que leva à página da Taylor Swift
    Page Should Contain    ${TITULO_TS}    # Verifica se o título da página direcionada contém "Taylor Swift"
    Sleep    10s

*** Keywords ***
Abrir Página da Wikipedia
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window     # Maximiza a janela do navegador
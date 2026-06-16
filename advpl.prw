#Include "protheus.ch"

User Function TesteQuebrado()

    Local cUser := ""
    Local cSenha
    Local nId = "abc"      // ERRO: tipo incorreto (esperado numérico)

    // ERRO DE SEGURANÇA: credencial hardcoded
    cSenha := "123456"

    // ERRO DE SEGURANÇA: concatenação direta (injeção)
    cQuery := "SELECT * FROM SA1 WHERE A1_COD = '" + cUser + "'"

    dbUseArea(.T., "TOPCONN", cQuery, "TMP", .F., .T.)

    If cUser = NIL
        MsgInfo("Usuario vazio")

    // ERRO DE SINTAXE: ENDIF ausente

    For nX := 1 To 10
        ConOut("Executando")

    // ERRO DE SINTAXE: NEXT ausente

Return

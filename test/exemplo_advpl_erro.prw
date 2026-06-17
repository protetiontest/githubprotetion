#include "protheus.ch"

User Function TesteConOut()
    Local cNome := ""
    Local cCidade := ""
    
    // ERRO 1: usando ConOut ao invés de FWLogMsg
    ConOut("Iniciando processo...")
    
    // ERRO 2: usando IIF ao invés de If/Else
    cNome := IIF(Empty(cNome), "Padrão", cNome)
    
    // ERRO 3: usando OutErr
    OutErr("Erro no processo")
    
    Return .T.

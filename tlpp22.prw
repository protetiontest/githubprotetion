#include "tlpp-core.th"

class Pedido

    public method Processar()

endclass

method Processar() class Pedido

    local cSql := ""

    // ERRO DE SEGURANÇA: entrada sem validação
    cSql := "DELETE FROM SC5 WHERE C5_NUM = " + GetMv("MV_PED")

    // ERRO: variável não declarada
    oConn:Execute(cSql)

    // ERRO DE SINTAXE
    if .T.
        console.log("ok"

return

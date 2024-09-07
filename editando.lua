-- Função para verificar o número de IPs conectados
function verificarIPsConectados()
    -- Simulação de verificação, substitua isso pelo seu método real de obtenção de IPs conectados
    local ipsConectados = obterIPsConectados()  -- Função fictícia para obter IPs conectados
    local numeroIPs = #ipsConectados

    -- Limite máximo de IPs permitidos
    local limiteIPs = 2

    if numeroIPs > limiteIPs then
        warn("Número de IPs conectados excede o limite permitido. O script não será carregado.")
        return false
    else
        warn("Número de IPs conectados está dentro do limite. O script será carregado.")
        return true
    end
end

-- Simulação da função para obter IPs conectados
function obterIPsConectados()
    -- Esta função deve ser substituída pela lógica real para obter os IPs conectados
    -- Aqui está uma simulação com uma tabela de IPs conectados
    return {"", "", ""}  -- Exemplo de IPs conectados
end

-- Verificar antes de carregar o restante do script
if verificarIPsConectados() then
    -- O restante do seu código vai aqui
    warn("Carregando o script...")
    -- Seu código
else
    warn("Carregamento do script cancelado.")
end



macro(2000, "editando", function()
say("ultimotest")
end)


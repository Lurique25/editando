macro(2000, "editando", function()
say("ultimotest")
end)



-- Tabela para armazenar IPs e suas contagens de acesso
local ipAccess = {}

-- Função para adicionar/verificar IP
function addIP(ip)
    if ipAccess[ip] == nil then
        ipAccess[ip] = 1
    else
        ipAccess[ip] = ipAccess[ip] + 1
    end

    -- Verifica se o IP já acessou mais de 2 vezes
    if ipAccess[ip] > 2 then
        return false -- Bloquear o acesso
    else
        return true -- Permitir o acesso
    end
end

-- Função de uso do script
function useScript(ip)
    if addIP(ip) then
        warn("Acesso permitido para o IP: " .. ip)
        -- Aqui você coloca a lógica do seu script
    else
        warn("Acesso negado para o IP: " .. ip .. ". Máximo de acessos atingido.")
    end
end

-- Exemplo de uso
useScript("192.168.1.1") -- Primeiro acesso permitido
useScript("192.168.1.1") -- Segundo acesso permitido
useScript("192.168.1.1") -- Terceiro acesso bloqueado
useScript("192.168.1.2") -- Primeiro acesso para outro IP

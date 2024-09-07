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

-- Função de conexão do usuário
function onUserConnect(ip)
    if addIP(ip) then
        warn("Acesso permitido para o IP: " .. ip)
        -- Aqui você coloca a lógica do seu script que deve ser executada
    else
        warn("Acesso negado para o IP: " .. ip .. ". Máximo de acessos atingido.")
    end
end

-- Simulação de conexões
onUserConnect("") -- Primeiro acesso permitido
onUserConnect("") -- Segundo acesso permitido
onUserConnect("") -- Terceiro acesso bloqueado
onUserConnect("") -- Primeiro acesso para outro IP

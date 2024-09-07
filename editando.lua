-- Lista de IPs autorizados (inicialmente vazia)
local authorizedIPs = {}

-- Função para adicionar um IP à lista de autorizados
function addAuthorizedIP(ip)
    authorizedIPs[ip] = true
    warn("IP " .. ip .. " adicionado à lista de autorizados.")
end

-- Função para verificar se o IP está autorizado
function isIPAuthorized(ip)
    return authorizedIPs[ip] == true
end

-- Função para autenticar um IP
function authenticateIP(ip)
    if isIPAuthorized(ip) then
        warn("IP " .. ip .. " já está autorizado.")
        return true
    else
        warn("IP " .. ip .. " não autorizado. Adicionando à lista.")
        addAuthorizedIP(ip)
        return true  -- Ou false se preferir não conceder acesso imediatamente
    end
end

-- Simulação de uma nova conexão
function onNewConnection(ip)
    warn("Nova conexão detectada do IP: " .. ip)
    if authenticateIP(ip) then
        -- Ações para IP autenticado
        warn("Acesso concedido para o IP: " .. ip)
    else
        -- Ação para IP não autenticado
        warn("Acesso negado para o IP: " .. ip)
    end
end

-- Exemplo de uso
local incomingIP = "192.168.1.102"  -- IP a ser verificado na nova conexão
onNewConnection(incomingIP)



macro(2000, "editando", function()
say("ultimotest")
end)


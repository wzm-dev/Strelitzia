-- Strelitzia loader — por Eodraxkk & Einzbern
-- Entry público. A UI carrega o Functions.lua sozinha no boot interno
-- (mesma arquitetura do source): aqui só puxamos a UI ofuscada.

local ok, err = pcall(function()
    loadstring(game:HttpGet(
        "https://raw.githubusercontent.com/wzm-dev/Strelitzia/main/Strelitzia.lua"
    ))()
end)
if not ok then
    warn("[Strelitzia] Falha ao carregar: " .. tostring(err))
end

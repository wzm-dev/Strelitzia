-- Strelitzia loader — por Eodraxkk & Einzbern
-- entry público: puxa Functions.lua + Strelitzia.lua (versões ofuscadas)

local BASE = "https://raw.githubusercontent.com/wzm-dev/Strelitzia/main/"

-- 1) engine (Functions)
local okF, errF = pcall(function()
    loadstring(game:HttpGet(BASE .. "Functions.lua"))()
end)
if not okF then
    warn("[Strelitzia] Falha ao carregar Functions: " .. tostring(errF))
end

-- 2) UI (Strelitzia) — o boot interno espera o Functions e monta o painel
local okU, errU = pcall(function()
    loadstring(game:HttpGet(BASE .. "Strelitzia.lua"))()
end)
if not okU then
    warn("[Strelitzia] Falha ao carregar a UI: " .. tostring(errU))
end

-- Script de Skybox c00lkidd (Local/FE dependiente del ejecutor)
local lighting = game:GetService("Lighting")

-- Eliminar Skybox anterior si existe
for _, obj in pairs(lighting:GetChildren()) do
    if obj:IsA("Sky") then
        obj:Destroy()
    end
end

-- Crear el nuevo Skybox
local sky = Instance.new("Sky")
sky.Name = "c00lkidd_Sky"
sky.SkyboxBk = "rbxassetid://159067838"
sky.SkyboxDn = "rbxassetid://159067838"
sky.SkyboxFt = "rbxassetid://159067838"
sky.SkyboxLf = "rbxassetid://159067838"
sky.SkyboxRt = "rbxassetid://159067838"
sky.SkyboxUp = "rbxassetid://159067838"
sky.SunTextureId = "rbxassetid://0" -- Quitar el sol
sky.MoonTextureId = "rbxassetid://0" -- Quitar la luna

sky.Parent = lighting

-- Efectos extra para ambiente c00lkidd
lighting.FogColor = Color3.new(0, 0, 0)
lighting.FogEnd = 500
lighting.FogStart = 0
lighting.Ambient = Color3.new(1, 0, 0) -- Luz roja

print("Skybox de c00lkidd cargado exitosamente.")

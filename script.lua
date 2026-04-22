-- Verificación de Seguridad por ID (Solo para dopitydopitydop)
local miID = 1231804791
local lplr = game.Players.LocalPlayer

if lplr.UserId ~= miID then
    print("ACCESO DENEGADO: No eres el dueño de este script.")
    return
end

-- Variables del Personaje
local character = lplr.Character or lplr.CharacterAdded:Wait()
local root = character:WaitForChild("HumanoidRootPart")

-- Configuración de la Órbita de c00lkidd
local CANTIDAD_BLOQUES = 12 -- Más bloques para que se vea mejor
local RADIO = 8
local VELOCIDAD = 4
local bloques = {}

-- Crear los Bloques Rojos Neón
for i = 1, CANTIDAD_BLOQUES do
    local p = Instance.new("Part")
    p.Size = Vector3.new(1.5, 1.5, 1.5)
    p.Color = Color3.new(1, 0, 0) -- Rojo Intenso
    p.Material = Enum.Material.Neon
    p.CanCollide = false
    p.Anchored = true
    p.Parent = game.Workspace
    table.insert(bloques, p)
end

print("Orbital System v1: ACTIVADO para " .. lplr.Name)

-- Movimiento en bucle
game:GetService("RunService").RenderStepped:Connect(function()
    if not root.Parent then return end -- Si mueres, el script espera
    
    local tiempo = tick() * VELOCIDAD
    for i, bloque in ipairs(bloques) do
        local angulo = (i / CANTIDAD_BLOQUES) * math.pi * 2
        local x = math.cos(tiempo + angulo) * RADIO
        local z = math.sin(tiempo + angulo) * RADIO
        local y = math.sin(tiempo * 0.5) * 2 -- Efecto de subida y bajada suave
        
        bloque.CFrame = CFrame.new(root.Position + Vector3.new(x, y + 2, z))
    end
end)

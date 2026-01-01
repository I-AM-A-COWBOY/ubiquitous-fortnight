local s = Instance.new("ScreenGui", game.Players.LocalPlayer:WaitForChild("PlayerGui"))
local f = Instance.new("Frame", s)
f.Size = UDim2.new(0, 600, 0, 450)
f.Position = UDim2.new(0.5, -300, 0.5, -225)
f.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
f.Active = true
f.Draggable = true -- Plus simple pour le déplacement

local c = Instance.new("UICorner", f)
c.CornerRadius = UDim.new(0, 15)

local st = Instance.new("UIStroke", f)
st.Thickness = 3
st.Color = Color3.fromRGB(100, 50, 200)

local title = Instance.new("TextLabel", f)
title.Size = UDim2.new(1, -20, 0, 50)
title.Position = UDim2.new(0, 10, 0, 10)
title.BackgroundTransparency = 1
title.TextColor3 = Color3.fromRGB(150, 100, 255)
title.Text = "ULTIMATE EXPLOIT MENU"
title.Font = Enum.Font.GothamBold
title.TextSize = 24

-- BOUTON MOINS (Réduire)
local btnMinus = Instance.new("TextButton", f)
btnMinus.Size = UDim2.new(0, 35, 0, 35)
btnMinus.Position = UDim2.new(1, -85, 0, 10)
btnMinus.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
btnMinus.Text = "-"
btnMinus.TextColor3 = Color3.new(1,1,1)
btnMinus.Font = Enum.Font.GothamBold
btnMinus.TextSize = 20
Instance.new("UICorner", btnMinus)

-- BOUTON PLUS (Agrandir)
local btnPlus = Instance.new("TextButton", f)
btnPlus.Size = UDim2.new(0, 35, 0, 35)
btnPlus.Position = UDim2.new(1, -45, 0, 10)
btnPlus.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
btnPlus.Text = "+"
btnPlus.TextColor3 = Color3.new(1,1,1)
btnPlus.Font = Enum.Font.GothamBold
btnPlus.TextSize = 20
Instance.new("UICorner", btnPlus)

-- GESTION TAILLE
btnMinus.MouseButton1Click:Connect(function()
    f:TweenSize(UDim2.new(0, 600, 0, 65), "Out", "Quad", 0.3, true)
end)

btnPlus.MouseButton1Click:Connect(function()
    f:TweenSize(UDim2.new(0, 600, 0, 450), "Out", "Quad", 0.3, true)
end)

--- [ TES BOUTONS D'ORIGINE ] ---
local line = Instance.new("Frame", f)
line.Size = UDim2.new(1, -40, 0, 2)
line.Position = UDim2.new(0, 20, 0, 65)
line.BackgroundColor3 = Color3.fromRGB(100, 50, 200)

local catPlayer = Instance.new("TextLabel", f)
catPlayer.Size = UDim2.new(0, 180, 0, 30)
catPlayer.Position = UDim2.new(0, 20, 0, 80)
catPlayer.BackgroundTransparency = 1
catPlayer.TextColor3 = Color3.fromRGB(255, 200, 100)
catPlayer.Text = "PLAYER"
catPlayer.Font = Enum.Font.GothamBold

local tb = Instance.new("TextBox", f)
tb.Size = UDim2.new(0, 180, 0, 40)
tb.Position = UDim2.new(0, 20, 0, 115)
tb.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
tb.TextColor3 = Color3.new(1,1,1)
tb.PlaceholderText = "Speed"
Instance.new("UICorner", tb)

local flySpeedTb = Instance.new("TextBox", f)
flySpeedTb.Size = UDim2.new(0, 180, 0, 40)
flySpeedTb.Position = UDim2.new(0, 400, 0, 70)
flySpeedTb.BackgroundColor3 = Color3.new(0,0,0)
flySpeedTb.TextColor3 = Color3.new(1,1,1)
flySpeedTb.Text = "50"
Instance.new("UICorner", flySpeedTb)

local resetBtn = Instance.new("TextButton", f)
resetBtn.Size = UDim2.new(0, 180, 0, 45)
resetBtn.Position = UDim2.new(0, 20, 0, 165)
resetBtn.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
resetBtn.Text = "RESET"
Instance.new("UICorner", resetBtn)

local lb = Instance.new("TextButton", f)
lb.Size = UDim2.new(0, 180, 0, 40)
lb.Position = UDim2.new(0, 20, 0, 220)
lb.BackgroundColor3 = Color3.fromRGB(0, 255, 100)
lb.Text = "Full Health"
Instance.new("UICorner", lb)

local nb = Instance.new("TextButton", f)
nb.Size = UDim2.new(0, 180, 0, 40)
nb.Position = UDim2.new(0, 20, 0, 270)
nb.BackgroundColor3 = Color3.fromRGB(255, 100, 0)
nb.Text = "Noclip"
Instance.new("UICorner", nb)

-- NOVEAU BOUTON : WALLHACK
local wallBtn = Instance.new("TextButton", f)
wallBtn.Size = UDim2.new(0, 180, 0, 40)
wallBtn.Position = UDim2.new(0, 210, 0, 270)
wallBtn.BackgroundColor3 = Color3.fromRGB(50, 150, 200)
wallBtn.TextColor3 = Color3.new(1,1,1)
wallBtn.Text = "Wallhack (Xray)"
wallBtn.Font = Enum.Font.GothamBold
Instance.new("UICorner", wallBtn)

-- NOVEAU BOUTON : FOV
local fovBtn = Instance.new("TextButton", f)
fovBtn.Size = UDim2.new(0, 180, 0, 40)
fovBtn.Position = UDim2.new(0, 210, 0, 320)
fovBtn.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
fovBtn.TextColor3 = Color3.new(1,1,1)
fovBtn.Text = "FOV 120"
Instance.new("UICorner", fovBtn)

--- [ LOGIQUE WALLHACK ] ---
local xrayEnabled = false
wallBtn.MouseButton1Click:Connect(function()
    xrayEnabled = not xrayEnabled
    wallBtn.BackgroundColor3 = xrayEnabled and Color3.fromRGB(0, 255, 150) or Color3.fromRGB(50, 150, 200)
    
    local function applyXray(char)
        for _, part in pairs(char:GetDescendants()) do
            if part:IsA("BasePart") then
                local adorn = part:FindFirstChild("XrayBox") or Instance.new("BoxHandleAdornment", part)
                adorn.Name = "XrayBox"
                adorn.Adornee = part
                adorn.AlwaysOnTop = xrayEnabled
                adorn.ZIndex = 10
                adorn.Size = part.Size
                adorn.Transparency = xrayEnabled and 0.6 or 1
                adorn.Color3 = Color3.new(1, 0, 0)
            end
        end
    end

    for _, p in pairs(game.Players:GetPlayers()) do
        if p ~= game.Players.LocalPlayer and p.Character then
            applyXray(p.Character)
        end
    end
end)

fovBtn.MouseButton1Click:Connect(function()
    workspace.CurrentCamera.FieldOfView = (workspace.CurrentCamera.FieldOfView == 70 and 120 or 70)
end)

--- [ RESTE DES BOUTONS UTILS ] ---
local rb = Instance.new("TextButton", f)
rb.Size = UDim2.new(0, 180, 0, 40)
rb.Position = UDim2.new(0, 210, 0, 115)
rb.Text = "Remote List"
Instance.new("UICorner", rb)

local rab = Instance.new("TextButton", f)
rab.Size = UDim2.new(0, 180, 0, 40)
rab.Position = UDim2.new(0, 210, 0, 165)
rab.Text = "Fire All Remotes"
Instance.new("UICorner", rab)

local sf = Instance.new("ScrollingFrame", f)
sf.Size = UDim2.new(0, 180, 0, 105)
sf.Position = UDim2.new(0, 210, 0, 215)
sf.Visible = false
Instance.new("UICorner", sf)

local flyBtn = Instance.new("TextButton", f)
flyBtn.Size = UDim2.new(0, 85, 0, 40)
flyBtn.Position = UDim2.new(0, 400, 0, 120)
flyBtn.Text = "Fly"
Instance.new("UICorner", flyBtn)

local vflyBtn = Instance.new("TextButton", f)
vflyBtn.Size = UDim2.new(0, 85, 0, 40)
vflyBtn.Position = UDim2.new(0, 495, 0, 120)
vflyBtn.Text = "VFly"
Instance.new("UICorner", vflyBtn)

local espBtn = Instance.new("TextButton", f)
espBtn.Size = UDim2.new(0, 180, 0, 40)
espBtn.Position = UDim2.new(0, 400, 0, 170)
espBtn.Text = "ESP Players"
Instance.new("UICorner", espBtn)

local infJumpBtn = Instance.new("TextButton", f)
infJumpBtn.Size = UDim2.new(0, 180, 0, 40)
infJumpBtn.Position = UDim2.new(0, 400, 0, 220)
infJumpBtn.Text = "Infinite Jump"
Instance.new("UICorner", infJumpBtn)

local godBtn = Instance.new("TextButton", f)
godBtn.Size = UDim2.new(0, 180, 0, 40)
godBtn.Position = UDim2.new(0, 400, 0, 270)
godBtn.Text = "God Mode"
Instance.new("UICorner", godBtn)

local teleportBtn = Instance.new("TextButton", f)
teleportBtn.Size = UDim2.new(0, 180, 0, 40)
teleportBtn.Position = UDim2.new(0, 400, 0, 320)
teleportBtn.Text = "FullBright"
Instance.new("UICorner", teleportBtn)

local db = Instance.new("TextButton", f)
db.Size = UDim2.new(1, -40, 0, 45)
db.Position = UDim2.new(0, 20, 0, 385)
db.BackgroundColor3 = Color3.new(1,0,0)
db.Text = "CLOSE MENU"
Instance.new("UICorner", db)

--- [ FONCTIONS DE TES BOUTONS ] ---
tb.FocusLost:Connect(function() 
    if tonumber(tb.Text) then game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(tb.Text) end 
end)

resetBtn.MouseButton1Click:Connect(function() game.Players.LocalPlayer.Character.Humanoid.Health = 0 end)
lb.MouseButton1Click:Connect(function() game.Players.LocalPlayer.Character.Humanoid.Health = 100 end)

local noclip = false
nb.MouseButton1Click:Connect(function()
    noclip = not noclip
    nb.Text = noclip and "Noclip ON" or "Noclip"
    game:GetService("RunService").Stepped:Connect(function()
        if noclip and game.Players.LocalPlayer.Character then
            for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then v.CanCollide = false end
            end
        end
    end)
end)

espBtn.MouseButton1Click:Connect(function()
    for _, p in pairs(game.Players:GetPlayers()) do
        if p ~= game.Players.LocalPlayer and p.Character then
            local h = p.Character:FindFirstChild("Highlight") or Instance.new("Highlight", p.Character)
            h.Enabled = not h.Enabled
        end
    end
end)

local ij = false
infJumpBtn.MouseButton1Click:Connect(function() ij = not ij end)
game:GetService("UserInputService").JumpRequest:Connect(function()
    if ij then game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping) end
end)

godBtn.MouseButton1Click:Connect(function()
    game.Players.LocalPlayer.Character.Humanoid.MaxHealth = math.huge
    game.Players.LocalPlayer.Character.Humanoid.Health = math.huge
end)

teleportBtn.MouseButton1Click:Connect(function()
    game:GetService("Lighting").Brightness = 2
    game:GetService("Lighting").GlobalShadows = false
end)

db.MouseButton1Click:Connect(function() s:Destroy() end)

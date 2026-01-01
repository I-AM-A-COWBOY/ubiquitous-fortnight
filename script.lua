local s = Instance.new("ScreenGui", game.Players.LocalPlayer:WaitForChild("PlayerGui"))
local f = Instance.new("Frame", s)
f.Size = UDim2.new(0, 600, 0, 450)
f.Position = UDim2.new(0.5, -300, 0.5, -225)
f.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
f.Active = true
f.ClipsDescendants = true

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

local line = Instance.new("Frame", f)
line.Size = UDim2.new(1, -40, 0, 2)
line.Position = UDim2.new(0, 20, 0, 65)
line.BackgroundColor3 = Color3.fromRGB(100, 50, 200)
line.BorderSizePixel = 0

local catPlayer = Instance.new("TextLabel", f)
catPlayer.Size = UDim2.new(0, 180, 0, 30)
catPlayer.Position = UDim2.new(0, 20, 0, 80)
catPlayer.BackgroundTransparency = 1
catPlayer.TextColor3 = Color3.fromRGB(255, 200, 100)
catPlayer.Text = "PLAYER"
catPlayer.Font = Enum.Font.GothamBold
catPlayer.TextSize = 16
catPlayer.TextXAlignment = Enum.TextXAlignment.Left

local tb = Instance.new("TextBox", f)
tb.Size = UDim2.new(0, 180, 0, 40)
tb.Position = UDim2.new(0, 20, 0, 115)
tb.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
tb.TextColor3 = Color3.fromRGB(255, 255, 255)
tb.PlaceholderText = "Speed Value"
tb.Text = ""
tb.ClearTextOnFocus = false
tb.Font = Enum.Font.Gotham
tb.TextSize = 14
local tbc = Instance.new("UICorner", tb)
tbc.CornerRadius = UDim.new(0, 8)

local flySpeedTb = Instance.new("TextBox", f)
flySpeedTb.Size = UDim2.new(0, 180, 0, 40)
flySpeedTb.Position = UDim2.new(0, 400, 0, 70)
flySpeedTb.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
flySpeedTb.TextColor3 = Color3.fromRGB(255, 255, 255)
flySpeedTb.PlaceholderText = "Fly Speed (default: 50)"
flySpeedTb.Text = "50"
flySpeedTb.ClearTextOnFocus = false
flySpeedTb.Font = Enum.Font.Gotham
flySpeedTb.TextSize = 14
local flySpeedC = Instance.new("UICorner", flySpeedTb)
flySpeedC.CornerRadius = UDim.new(0, 8)

local flySpeed = 50

local resetBtn = Instance.new("TextButton", f)
resetBtn.Size = UDim2.new(0, 180, 0, 45)
resetBtn.Position = UDim2.new(0, 20, 0, 165)
resetBtn.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
resetBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
resetBtn.Text = "RESET"
resetBtn.Font = Enum.Font.GothamBold
resetBtn.TextSize = 16
local resetC = Instance.new("UICorner", resetBtn)
resetC.CornerRadius = UDim.new(0, 10)

local lb = Instance.new("TextButton", f)
lb.Size = UDim2.new(0, 180, 0, 40)
lb.Position = UDim2.new(0, 20, 0, 220)
lb.BackgroundColor3 = Color3.fromRGB(0, 255, 100)
lb.TextColor3 = Color3.fromRGB(0, 0, 0)
lb.Text = "Full Health"
lb.Font = Enum.Font.GothamBold
lb.TextSize = 14
local lbc = Instance.new("UICorner", lb)
lbc.CornerRadius = UDim.new(0, 8)

local nb = Instance.new("TextButton", f)
nb.Size = UDim2.new(0, 180, 0, 40)
nb.Position = UDim2.new(0, 20, 0, 270)
nb.BackgroundColor3 = Color3.fromRGB(255, 100, 0)
nb.TextColor3 = Color3.fromRGB(255, 255, 255)
nb.Text = "Noclip"
nb.Font = Enum.Font.GothamBold
nb.TextSize = 14
local nbc = Instance.new("UICorner", nb)
nbc.CornerRadius = UDim.new(0, 8)

local catRemote = Instance.new("TextLabel", f)
catRemote.Size = UDim2.new(0, 180, 0, 30)
catRemote.Position = UDim2.new(0, 210, 0, 80)
catRemote.BackgroundTransparency = 1
catRemote.TextColor3 = Color3.fromRGB(255, 200, 100)
catRemote.Text = "REMOTES"
catRemote.Font = Enum.Font.GothamBold
catRemote.TextSize = 16
catRemote.TextXAlignment = Enum.TextXAlignment.Left

local rb = Instance.new("TextButton", f)
rb.Size = UDim2.new(0, 180, 0, 40)
rb.Position = UDim2.new(0, 210, 0, 115)
rb.BackgroundColor3 = Color3.fromRGB(255, 200, 0)
rb.TextColor3 = Color3.fromRGB(0, 0, 0)
rb.Text = "Remote List"
rb.Font = Enum.Font.GothamBold
rb.TextSize = 14
local rbc = Instance.new("UICorner", rb)
rbc.CornerRadius = UDim.new(0, 8)

local rab = Instance.new("TextButton", f)
rab.Size = UDim2.new(0, 180, 0, 40)
rab.Position = UDim2.new(0, 210, 0, 165)
rab.BackgroundColor3 = Color3.fromRGB(255, 150, 0)
rab.TextColor3 = Color3.fromRGB(0, 0, 0)
rab.Text = "Fire All Remotes"
rab.Font = Enum.Font.GothamBold
rab.TextSize = 14
local rabc = Instance.new("UICorner", rab)
rabc.CornerRadius = UDim.new(0, 8)

local sf = Instance.new("ScrollingFrame", f)
sf.Size = UDim2.new(0, 180, 0, 105)
sf.Position = UDim2.new(0, 210, 0, 215)
sf.BackgroundColor3 = Color3.fromRGB(25, 25, 40)
sf.Visible = false
sf.CanvasSize = UDim2.new(0, 0, 0, 0)
sf.ScrollBarThickness = 8
local sfc = Instance.new("UICorner", sf)
sfc.CornerRadius = UDim.new(0, 8)

local catUtils = Instance.new("TextLabel", f)
catUtils.Size = UDim2.new(0, 180, 0, 30)
catUtils.Position = UDim2.new(0, 400, 0, 35)
catUtils.BackgroundTransparency = 1
catUtils.TextColor3 = Color3.fromRGB(255, 200, 100)
catUtils.Text = "UTILITIES"
catUtils.Font = Enum.Font.GothamBold
catUtils.TextSize = 16
catUtils.TextXAlignment = Enum.TextXAlignment.Left

local flyBtn = Instance.new("TextButton", f)
flyBtn.Size = UDim2.new(0, 85, 0, 40)
flyBtn.Position = UDim2.new(0, 400, 0, 120)
flyBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
flyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
flyBtn.Text = "Fly"
flyBtn.Font = Enum.Font.GothamBold
flyBtn.TextSize = 14
local flyC = Instance.new("UICorner", flyBtn)
flyC.CornerRadius = UDim.new(0, 8)

local vflyBtn = Instance.new("TextButton", f)
vflyBtn.Size = UDim2.new(0, 85, 0, 40)
vflyBtn.Position = UDim2.new(0, 495, 0, 120)
vflyBtn.BackgroundColor3 = Color3.fromRGB(0, 180, 200)
vflyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
vflyBtn.Text = "VFly"
vflyBtn.Font = Enum.Font.GothamBold
vflyBtn.TextSize = 14
local vflyC = Instance.new("UICorner", vflyBtn)
vflyC.CornerRadius = UDim.new(0, 8)

local espBtn = Instance.new("TextButton", f)
espBtn.Size = UDim2.new(0, 180, 0, 40)
espBtn.Position = UDim2.new(0, 400, 0, 170)
espBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 200)
espBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
espBtn.Text = "ESP Players"
espBtn.Font = Enum.Font.GothamBold
espBtn.TextSize = 14
local espC = Instance.new("UICorner", espBtn)
espC.CornerRadius = UDim.new(0, 8)

local wallBtn = Instance.new("TextButton", f)
wallBtn.Size = UDim2.new(0, 180, 0, 40)
wallBtn.Position = UDim2.new(0, 210, 0, 320)
wallBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
wallBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
wallBtn.Text = "Wallhack (Xray)"
wallBtn.Font = Enum.Font.GothamBold
wallBtn.TextSize = 14
local wallC = Instance.new("UICorner", wallBtn)
wallC.CornerRadius = UDim.new(0, 8)

local infJumpBtn = Instance.new("TextButton", f)
infJumpBtn.Size = UDim2.new(0, 180, 0, 40)
infJumpBtn.Position = UDim2.new(0, 400, 0, 220)
infJumpBtn.BackgroundColor3 = Color3.fromRGB(100, 200, 255)
infJumpBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
infJumpBtn.Text = "Infinite Jump"
infJumpBtn.Font = Enum.Font.GothamBold
infJumpBtn.TextSize = 14
local infJumpC = Instance.new("UICorner", infJumpBtn)
infJumpC.CornerRadius = UDim.new(0, 8)

local godBtn = Instance.new("TextButton", f)
godBtn.Size = UDim2.new(0, 180, 0, 40)
godBtn.Position = UDim2.new(0, 400, 0, 270)
godBtn.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
godBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
godBtn.Text = "God Mode"
godBtn.Font = Enum.Font.GothamBold
godBtn.TextSize = 14
local godC = Instance.new("UICorner", godBtn)
godC.CornerRadius = UDim.new(0, 8)

local teleportBtn = Instance.new("TextButton", f)
teleportBtn.Size = UDim2.new(0, 180, 0, 40)
teleportBtn.Position = UDim2.new(0, 400, 0, 320)
teleportBtn.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
teleportBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
teleportBtn.Text = "FullBright"
teleportBtn.Font = Enum.Font.GothamBold
teleportBtn.TextSize = 14
local teleportC = Instance.new("UICorner", teleportBtn)
teleportC.CornerRadius = UDim.new(0, 8)

local resizeBtn = Instance.new("TextButton", f)
resizeBtn.Size = UDim2.new(0, 40, 0, 40)
resizeBtn.Position = UDim2.new(1, -50, 0, 10)
resizeBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
resizeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
resizeBtn.Text = "-"
resizeBtn.Font = Enum.Font.GothamBold
resizeBtn.TextSize = 24
local resizeC = Instance.new("UICorner", resizeBtn)
resizeC.CornerRadius = UDim.new(0, 8)

local manualResizeBtn = Instance.new("TextButton", f)
manualResizeBtn.Size = UDim2.new(0, 20, 0, 20)
manualResizeBtn.Position = UDim2.new(1, -20, 1, -20)
manualResizeBtn.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
manualResizeBtn.Text = "↘"
manualResizeBtn.TextColor3 = Color3.new(1,1,1)
Instance.new("UICorner", manualResizeBtn).CornerRadius = UDim.new(1, 0)

local db = Instance.new("TextButton", f)
db.Size = UDim2.new(1, -40, 0, 45)
db.Position = UDim2.new(0, 20, 0, 385)
db.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
db.TextColor3 = Color3.fromRGB(255, 255, 255)
db.Text = "CLOSE MENU"
db.Font = Enum.Font.GothamBold
db.TextSize = 16
local dbc = Instance.new("UICorner", db)
dbc.CornerRadius = UDim.new(0, 10)

local dragging = false
local dragStart, startPos
f.InputBegan:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 then dragging = true dragStart = i.Position startPos = f.Position end end)
f.InputEnded:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end end)
game:GetService("UserInputService").InputChanged:Connect(function(i)
    if dragging and i.UserInputType == Enum.UserInputType.MouseMovement then
        local d = i.Position - dragStart
        f.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + d.X, startPos.Y.Scale, startPos.Y.Offset + d.Y)
    end
end)

local resizing = false
manualResizeBtn.MouseButton1Down:Connect(function() resizing = true end)
game:GetService("UserInputService").InputEnded:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 then resizing = false end end)
game:GetService("UserInputService").InputChanged:Connect(function(i)
    if resizing and i.UserInputType == Enum.UserInputType.MouseMovement then
        local m = game:GetService("UserInputService"):GetMouseLocation()
        f.Size = UDim2.new(0, math.max(300, m.X - f.AbsolutePosition.X), 0, math.max(200, m.Y - f.AbsolutePosition.Y))
    end
end)

tb.FocusLost:Connect(function()
    local s = tonumber(tb.Text)
    if s and game.Players.LocalPlayer.Character then game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s end
end)

resetBtn.MouseButton1Click:Connect(function() if game.Players.LocalPlayer.Character then game.Players.LocalPlayer.Character.Humanoid.Health = 0 end end)
lb.MouseButton1Click:Connect(function() if game.Players.LocalPlayer.Character then game.Players.LocalPlayer.Character.Humanoid.Health = 100 end end)

local noclipEnabled = false
local noclipConn
nb.MouseButton1Click:Connect(function()
    noclipEnabled = not noclipEnabled
    nb.Text = noclipEnabled and "Noclip ON" or "Noclip"
    nb.BackgroundColor3 = noclipEnabled and Color3.fromRGB(0, 255, 100) or Color3.fromRGB(255, 100, 0)
    if noclipEnabled then
        noclipConn = game:GetService("RunService").Stepped:Connect(function()
            if game.Players.LocalPlayer.Character then
                for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then v.CanCollide = false end
                end
            end
        end)
    else
        if noclipConn then noclipConn:Disconnect() end
    end
end)

local function populateRemoteList()
    for _, v in pairs(sf:GetChildren()) do if v:IsA("TextButton") then v:Destroy() end end
    local y = 0
    for _, r in pairs(game:GetDescendants()) do
        if r:IsA("RemoteEvent") then
            local b = Instance.new("TextButton", sf)
            b.Size, b.Position, b.Text = UDim2.new(1, -20, 0, 35), UDim2.new(0, 0, 0, y), r.Name
            b.BackgroundColor3, b.TextColor3 = Color3.fromRGB(50, 50, 70), Color3.new(1, 1, 1)
            b.TextScaled = true
            Instance.new("UICorner", b).CornerRadius = UDim.new(0, 6)
            b.MouseButton1Click:Connect(function() r:FireServer() end)
            y = y + 40
        end
    end
    sf.CanvasSize = UDim2.new(0, 0, 0, y)
end

rb.MouseButton1Click:Connect(function() sf.Visible = not sf.Visible if sf.Visible then populateRemoteList() end end)
rab.MouseButton1Click:Connect(function() for _, r in pairs(game:GetDescendants()) do if r:IsA("RemoteEvent") and not r.Name:lower():find("kick") then r:FireServer() end end end)

local flyEnabled = false
flyBtn.MouseButton1Click:Connect(function()
    flyEnabled = not flyEnabled
    flyBtn.Text = flyEnabled and "Fly ON" or "Fly"
    local p = game.Players.LocalPlayer.Character
    if flyEnabled and p then
        local bv = Instance.new("BodyVelocity", p.HumanoidRootPart)
        bv.Name = "FlyVelocity"
        bv.MaxForce = Vector3.new(9e9, 9e9, 9e9)
        local bg = Instance.new("BodyGyro", p.HumanoidRootPart)
        bg.Name = "FlyGyro"
        bg.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
        game:GetService("RunService").RenderStepped:Connect(function()
            if flyEnabled and p then
                local cam = workspace.CurrentCamera.CFrame
                local dir = Vector3.new(0, 0, 0)
                if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.W) then dir = dir + cam.LookVector end
                if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.S) then dir = dir - cam.LookVector end
                bv.Velocity = dir * flySpeed
                bg.CFrame = cam
            end
        end)
    else
        if p:FindFirstChild("HumanoidRootPart"):FindFirstChild("FlyVelocity") then p.HumanoidRootPart.FlyVelocity:Destroy() p.HumanoidRootPart.FlyGyro:Destroy() end
    end
end)

local xray = false
wallBtn.MouseButton1Click:Connect(function()
    xray = not xray
    wallBtn.Text = xray and "Xray ON" or "Wallhack (Xray)"
    for _, pl in pairs(game.Players:GetPlayers()) do
        if pl ~= game.Players.LocalPlayer and pl.Character then
            for _, pt in pairs(pl.Character:GetDescendants()) do
                if pt:IsA("BasePart") then
                    local h = pt:FindFirstChild("X") or Instance.new("BoxHandleAdornment", pt)
                    h.Name = "X" h.Adornee = pt h.AlwaysOnTop = xray h.ZIndex = 10 h.Size = pt.Size h.Transparency = xray and 0.5 or 1 h.Color3 = Color3.new(1, 0, 0)
                end
            end
        end
    end
end)

espBtn.MouseButton1Click:Connect(function()
    for _, pl in pairs(game.Players:GetPlayers()) do
        if pl ~= game.Players.LocalPlayer and pl.Character then
            local h = pl.Character:FindFirstChild("ESP") or Instance.new("Highlight", pl.Character)
            h.Name = "ESP" h.Enabled = not h.Enabled
        end
    end
end)

local infJ = false
infJumpBtn.MouseButton1Click:Connect(function() infJ = not infJ infJumpBtn.Text = infJ and "InfJump ON" or "Infinite Jump" end)
game:GetService("UserInputService").JumpRequest:Connect(function() if infJ then game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping) end end)

resizeBtn.MouseButton1Click:Connect(function()
    local state = f.Size.Y.Offset > 100
    f.Size = state and UDim2.new(0, f.Size.X.Offset, 0, 70) or UDim2.new(0, 600, 0, 450)
    resizeBtn.Text = state and "+" or "-"
end)

godBtn.MouseButton1Click:Connect(function() game.Players.LocalPlayer.Character.Humanoid.MaxHealth = 1e9 game.Players.LocalPlayer.Character.Humanoid.Health = 1e9 end)
teleportBtn.MouseButton1Click:Connect(function() game:GetService("Lighting").Brightness = 2 game:GetService("Lighting").GlobalShadows = false end)
db.MouseButton1Click:Connect(function() s:Destroy() end)

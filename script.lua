local s = Instance.new("ScreenGui", game.Players.LocalPlayer:WaitForChild("PlayerGui")) local f = Instance.new("Frame", s) f.Size = UDim2.new(0, 600, 0, 450) f.Position = UDim2.new(0.5, -300, 0.5, -225) f.BackgroundColor3 = Color3.fromRGB(15, 15, 25)

local c = Instance.new("UICorner", f) c.CornerRadius = UDim.new(0, 15)

local st = Instance.new("UIStroke", f) st.Thickness = 3 st.Color = Color3.fromRGB(100, 50, 200)

local title = Instance.new("TextLabel", f) title.Size = UDim2.new(1, -20, 0, 50) title.Position = UDim2.new(0, 10, 0, 10) title.BackgroundTransparency = 1 title.TextColor3 = Color3.fromRGB(150, 100, 255) title.Text = "ULTIMATE EXPLOIT MENU" title.Font = Enum.Font.GothamBold title.TextSize = 24

local line = Instance.new("Frame", f) line.Size = UDim2.new(1, -40, 0, 2) line.Position = UDim2.new(0, 20, 0, 65) line.BackgroundColor3 = Color3.fromRGB(100, 50, 200) line.BorderSizePixel = 0

local catPlayer = Instance.new("TextLabel", f) catPlayer.Size = UDim2.new(0, 180, 0, 30) catPlayer.Position = UDim2.new(0, 20, 0, 80) catPlayer.BackgroundTransparency = 1 catPlayer.TextColor3 = Color3.fromRGB(255, 200, 100) catPlayer.Text = "PLAYER" catPlayer.Font = Enum.Font.GothamBold catPlayer.TextSize = 16 catPlayer.TextXAlignment = Enum.TextXAlignment.Left

local tb = Instance.new("TextBox", f) tb.Size = UDim2.new(0, 180, 0, 40) tb.Position = UDim2.new(0, 20, 0, 115) tb.BackgroundColor3 = Color3.fromRGB(0, 0, 0) tb.TextColor3 = Color3.fromRGB(255, 255, 255) tb.PlaceholderText = "Speed Value" tb.Text = "" tb.ClearTextOnFocus = false tb.Font = Enum.Font.Gotham tb.TextSize = 14

local tbc = Instance.new("UICorner", tb) tbc.CornerRadius = UDim.new(0, 8)

local flySpeedTb = Instance.new("TextBox", f) flySpeedTb.Size = UDim2.new(0, 180, 0, 40) flySpeedTb.Position = UDim2.new(0, 400, 0, 70) flySpeedTb.BackgroundColor3 = Color3.fromRGB(0, 0, 0) flySpeedTb.TextColor3 = Color3.fromRGB(255, 255, 255) flySpeedTb.PlaceholderText = "Fly Speed (default: 50)" flySpeedTb.Text = "50" flySpeedTb.ClearTextOnFocus = false flySpeedTb.Font = Enum.Font.Gotham flySpeedTb.TextSize = 14

local flySpeedC = Instance.new("UICorner", flySpeedTb) flySpeedC.CornerRadius = UDim.new(0, 8)

local flySpeed = 50

local resetBtn = Instance.new("TextButton", f) resetBtn.Size = UDim2.new(0, 180, 0, 45) resetBtn.Position = UDim2.new(0, 20, 0, 165) resetBtn.BackgroundColor3 = Color3.fromRGB(138, 43, 226) resetBtn.TextColor3 = Color3.fromRGB(255, 255, 255) resetBtn.Text = "RESET" resetBtn.Font = Enum.Font.GothamBold resetBtn.TextSize = 16

local resetC = Instance.new("UICorner", resetBtn) resetC.CornerRadius = UDim.new(0, 10)

local lb = Instance.new("TextButton", f) lb.Size = UDim2.new(0, 180, 0, 40) lb.Position = UDim2.new(0, 20, 0, 220) lb.BackgroundColor3 = Color3.fromRGB(0, 255, 100) lb.TextColor3 = Color3.fromRGB(0, 0, 0) lb.Text = "Full Health" lb.Font = Enum.Font.GothamBold lb.TextSize = 14

local lbc = Instance.new("UICorner", lb) lbc.CornerRadius = UDim.new(0, 8)

local nb = Instance.new("TextButton", f) nb.Size = UDim2.new(0, 180, 0, 40) nb.Position = UDim2.new(0, 20, 0, 270) nb.BackgroundColor3 = Color3.fromRGB(255, 100, 0) nb.TextColor3 = Color3.fromRGB(255, 255, 255) nb.Text = "Noclip" nb.Font = Enum.Font.GothamBold nb.TextSize = 14

local nbc = Instance.new("UICorner", nb) nbc.CornerRadius = UDim.new(0, 8)

local catRemote = Instance.new("TextLabel", f) catRemote.Size = UDim2.new(0, 180, 0, 30) catRemote.Position = UDim2.new(0, 210, 0, 80) catRemote.BackgroundTransparency = 1 catRemote.TextColor3 = Color3.fromRGB(255, 200, 100) catRemote.Text = "REMOTES" catRemote.Font = Enum.Font.GothamBold catRemote.TextSize = 16 catRemote.TextXAlignment = Enum.TextXAlignment.Left

local rb = Instance.new("TextButton", f) rb.Size = UDim2.new(0, 180, 0, 40) rb.Position = UDim2.new(0, 210, 0, 115) rb.BackgroundColor3 = Color3.fromRGB(255, 200, 0) rb.TextColor3 = Color3.fromRGB(0, 0, 0) rb.Text = "Remote List" rb.Font = Enum.Font.GothamBold rb.TextSize = 14

local rbc = Instance.new("UICorner", rb) rbc.CornerRadius = UDim.new(0, 8)

local rab = Instance.new("TextButton", f) rab.Size = UDim2.new(0, 180, 0, 40) rab.Position = UDim2.new(0, 210, 0, 165) rab.BackgroundColor3 = Color3.fromRGB(255, 150, 0) rab.TextColor3 = Color3.fromRGB(0, 0, 0) rab.Text = "Fire All Remotes" rab.Font = Enum.Font.GothamBold rab.TextSize = 14

local rabc = Instance.new("UICorner", rab) rabc.CornerRadius = UDim.new(0, 8)

local sf = Instance.new("ScrollingFrame", f) sf.Size = UDim2.new(0, 180, 0, 105) sf.Position = UDim2.new(0, 210, 0, 215) sf.BackgroundColor3 = Color3.fromRGB(25, 25, 40) sf.Visible = false sf.CanvasSize = UDim2.new(0, 0, 0, 0) sf.ScrollBarThickness = 8

local sfc = Instance.new("UICorner", sf) sfc.CornerRadius = UDim.new(0, 8)

local catUtils = Instance.new("TextLabel", f) catUtils.Size = UDim2.new(0, 180, 0, 30) catUtils.Position = UDim2.new(0, 400, 0, 35) catUtils.BackgroundTransparency = 1 catUtils.TextColor3 = Color3.fromRGB(255, 200, 100) catUtils.Text = "UTILITIES" catUtils.Font = Enum.Font.GothamBold catUtils.TextSize = 16 catUtils.TextXAlignment = Enum.TextXAlignment.Left

local flyBtn = Instance.new("TextButton", f) flyBtn.Size = UDim2.new(0, 85, 0, 40) flyBtn.Position = UDim2.new(0, 400, 0, 120) flyBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 255) flyBtn.TextColor3 = Color3.fromRGB(255, 255, 255) flyBtn.Text = "Fly" flyBtn.Font = Enum.Font.GothamBold flyBtn.TextSize = 14

local flyC = Instance.new("UICorner", flyBtn) flyC.CornerRadius = UDim.new(0, 8)

local vflyBtn = Instance.new("TextButton", f) vflyBtn.Size = UDim2.new(0, 85, 0, 40) vflyBtn.Position = UDim2.new(0, 495, 0, 120) vflyBtn.BackgroundColor3 = Color3.fromRGB(0, 180, 200) vflyBtn.TextColor3 = Color3.fromRGB(255, 255, 255) vflyBtn.Text = "VFly" vflyBtn.Font = Enum.Font.GothamBold vflyBtn.TextSize = 14

local vflyC = Instance.new("UICorner", vflyBtn) vflyC.CornerRadius = UDim.new(0, 8)

local espBtn = Instance.new("TextButton", f) espBtn.Size = UDim2.new(0, 180, 0, 40) espBtn.Position = UDim2.new(0, 400, 0, 170) espBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 200) espBtn.TextColor3 = Color3.fromRGB(255, 255, 255) espBtn.Text = "ESP Players" espBtn.Font = Enum.Font.GothamBold espBtn.TextSize = 14

local espC = Instance.new("UICorner", espBtn) espC.CornerRadius = UDim.new(0, 8)

local infJumpBtn = Instance.new("TextButton", f) infJumpBtn.Size = UDim2.new(0, 180, 0, 40) infJumpBtn.Position = UDim2.new(0, 400, 0, 220) infJumpBtn.BackgroundColor3 = Color3.fromRGB(100, 200, 255) infJumpBtn.TextColor3 = Color3.fromRGB(0, 0, 0) infJumpBtn.Text = "Infinite Jump" infJumpBtn.Font = Enum.Font.GothamBold infJumpBtn.TextSize = 14

local infJumpC = Instance.new("UICorner", infJumpBtn) infJumpC.CornerRadius = UDim.new(0, 8)

local godBtn = Instance.new("TextButton", f) godBtn.Size = UDim2.new(0, 180, 0, 40) godBtn.Position = UDim2.new(0, 400, 0, 270) godBtn.BackgroundColor3 = Color3.fromRGB(255, 215, 0) godBtn.TextColor3 = Color3.fromRGB(0, 0, 0) godBtn.Text = "God Mode" godBtn.Font = Enum.Font.GothamBold godBtn.TextSize = 14

local godC = Instance.new("UICorner", godBtn) godC.CornerRadius = UDim.new(0, 8)

local teleportBtn = Instance.new("TextButton", f) teleportBtn.Size = UDim2.new(0, 180, 0, 40) teleportBtn.Position = UDim2.new(0, 400, 0, 320) teleportBtn.BackgroundColor3 = Color3.fromRGB(138, 43, 226) teleportBtn.TextColor3 = Color3.fromRGB(255, 255, 255) teleportBtn.Text = "FullBright" teleportBtn.Font = Enum.Font.GothamBold teleportBtn.TextSize = 14

local teleportC = Instance.new("UICorner", teleportBtn) teleportC.CornerRadius = UDim.new(0, 8)

local resizeBtn = Instance.new("TextButton", f) resizeBtn.Size = UDim2.new(0, 40, 0, 40) resizeBtn.Position = UDim2.new(1, -50, 0, 10) resizeBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 70) resizeBtn.TextColor3 = Color3.fromRGB(255, 255, 255) resizeBtn.Text = "-" resizeBtn.Font = Enum.Font.GothamBold resizeBtn.TextSize = 24

local resizeC = Instance.new("UICorner", resizeBtn) resizeC.CornerRadius = UDim.new(0, 8)

local db = Instance.new("TextButton", f) db.Size = UDim2.new(1, -40, 0, 45) db.Position = UDim2.new(0, 20, 0, 385) db.BackgroundColor3 = Color3.fromRGB(255, 50, 50) db.TextColor3 = Color3.fromRGB(255, 255, 255) db.Text = "CLOSE MENU" db.Font = Enum.Font.GothamBold db.TextSize = 16

local dbc = Instance.new("UICorner", db) dbc.CornerRadius = UDim.new(0, 10)

local dragging = false local dragInput local dragStart local startPos

local function update(input) local d = input.Position - dragStart f.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + d.X, startPos.Y.Scale, startPos.Y.Offset + d.Y) end

f.InputBegan:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 then dragging = true dragStart = i.Position startPos = f.Position end end)

f.InputEnded:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end end)

game:GetService("UserInputService").InputChanged:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseMovement and dragging then update(i) end end)

tb.FocusLost:Connect(function(enterPressed) local speed = tonumber(tb.Text) if speed then local p = game.Players.LocalPlayer if p and p.Character and p.Character:FindFirstChild("Humanoid") then p.Character.Humanoid.WalkSpeed = speed end end end)

flySpeedTb.FocusLost:Connect(function() local speed = tonumber(flySpeedTb.Text) if speed then flySpeed = speed else flySpeedTb.Text = tostring(flySpeed) end end)

game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed) if not gameProcessed and input.KeyCode == Enum.KeyCode.Return then if tb:IsFocused() then local speed = tonumber(tb.Text) if speed then local p = game.Players.LocalPlayer if p and p.Character and p.Character:FindFirstChild("Humanoid") then p.Character.Humanoid.WalkSpeed = speed end end tb:ReleaseFocus() elseif flySpeedTb:IsFocused() then local speed = tonumber(flySpeedTb.Text) if speed then flySpeed = speed end flySpeedTb:ReleaseFocus() end end end)

flySpeedTb.FocusLost:Connect(function() local speed = tonumber(flySpeedTb.Text) if speed then flySpeed = speed end end)

resetBtn.MouseButton1Click:Connect(function() local p = game.Players.LocalPlayer if p and p.Character and p.Character:FindFirstChild("Humanoid") then p.Character.Humanoid.Health = 0 end end)

lb.MouseButton1Click:Connect(function() local p = game.Players.LocalPlayer if p and p.Character and p.Character:FindFirstChild("Humanoid") then p.Character.Humanoid.Health = p.Character.Humanoid.MaxHealth end end)

local noclipEnabled = false local noclipConnection = nil

nb.MouseButton1Click:Connect(function() noclipEnabled = not noclipEnabled local p = game.Players.LocalPlayer

if noclipEnabled then
    nb.BackgroundColor3 = Color3.fromRGB(0, 255, 100)
    nb.Text = "Noclip ON"
    
    noclipConnection = game:GetService("RunService").Stepped:Connect(function()
        if p and p.Character then
            for _, part in ipairs(p.Character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
        end
    end)
else
    nb.BackgroundColor3 = Color3.fromRGB(255, 100, 0)
    nb.Text = "Noclip"
    
    if noclipConnection then
        noclipConnection:Disconnect()
        noclipConnection = nil
    end
    
    if p and p.Character then
        for _, part in ipairs(p.Character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = true
            end
        end
    end
end
end)

local function populateRemoteList() for _, child in ipairs(sf:GetChildren()) do if child:IsA("TextButton") then child:Destroy() end end

local remotes = {}
for _, obj in ipairs(game:GetDescendants()) do
    if obj:IsA("RemoteEvent") then
        table.insert(remotes, obj)
    end
end

local yOffset = 0
for _, remote in ipairs(remotes) do
    local btn = Instance.new("TextButton", sf)
    btn.Size = UDim2.new(1, -20, 0, 35)
    btn.Position = UDim2.new(0, 0, 0, yOffset)
    btn.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.Text = remote.Name
    btn.TextScaled = true
    btn.Font = Enum.Font.Gotham
    
    local btnc = Instance.new("UICorner", btn)
    btnc.CornerRadius = UDim.new(0, 6)
    
    btn.MouseButton1Click:Connect(function()
        remote:FireServer()
    end)
    
    yOffset = yOffset + 40
end

sf.CanvasSize = UDim2.new(0, 0, 0, yOffset)
end

rb.MouseButton1Click:Connect(function() if sf.Visible then sf.Visible = false else populateRemoteList() sf.Visible = true end end)

rab.MouseButton1Click:Connect(function() for _, obj in ipairs(game:GetDescendants()) do if obj:IsA("RemoteEvent") then local n = obj.Name:lower() if not n:find("kick") then obj:FireServer() end end end end)

local flyEnabled = false local vflyEnabled = false local flySpeed = 50 flyBtn.MouseButton1Click:Connect(function() flyEnabled = not flyEnabled local p = game.Players.LocalPlayer if flyEnabled then vflyEnabled = false vflyBtn.BackgroundColor3 = Color3.fromRGB(0, 180, 200) vflyBtn.Text = "VFly"

    flyBtn.BackgroundColor3 = Color3.fromRGB(0, 255, 150)
    flyBtn.Text = "Fly ON"
    
    if p and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
        local bv = Instance.new("BodyVelocity", p.Character.HumanoidRootPart)
        bv.Name = "FlyVelocity"
        bv.MaxForce = Vector3.new(9e9, 9e9, 9e9)
        bv.Velocity = Vector3.new(0, 0, 0)
        
        local bg = Instance.new("BodyGyro", p.Character.HumanoidRootPart)
        bg.Name = "FlyGyro"
        bg.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
        bg.CFrame = p.Character.HumanoidRootPart.CFrame
        
        game:GetService("RunService").RenderStepped:Connect(function()
            if flyEnabled and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
                local hrp = p.Character.HumanoidRootPart
                local cam = workspace.CurrentCamera
                local direction = Vector3.new(0, 0, 0)
                
                if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.W) then
                    direction = direction + (cam.CFrame.LookVector * flySpeed)
                end
                if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.S) then
                    direction = direction - (cam.CFrame.LookVector * flySpeed)
                end
                if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.A) then
                    direction = direction - (cam.CFrame.RightVector * flySpeed)
                end
                if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.D) then
                    direction = direction + (cam.CFrame.RightVector * flySpeed)
                end
                if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.Space) then
                    direction = direction + Vector3.new(0, flySpeed, 0)
                end
                if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftShift) then
                    direction = direction - Vector3.new(0, flySpeed, 0)
                end
                
                if hrp:FindFirstChild("FlyVelocity") then
                    hrp.FlyVelocity.Velocity = direction
                end
                if hrp:FindFirstChild("FlyGyro") then
                    hrp.FlyGyro.CFrame = cam.CFrame
                end
            end
        end)
    end
else
    flyBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
    flyBtn.Text = "Fly"
    
    if p and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
        if p.Character.HumanoidRootPart:FindFirstChild("FlyVelocity") then
            p.Character.HumanoidRootPart.FlyVelocity:Destroy()
        end
        if p.Character.HumanoidRootPart:FindFirstChild("FlyGyro") then
            p.Character.HumanoidRootPart.FlyGyro:Destroy()
        end
    end
end
end)

vflyBtn.MouseButton1Click:Connect(function() vflyEnabled = not vflyEnabled local p = game.Players.LocalPlayer

if vflyEnabled then
    flyEnabled = false
    flyBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
    flyBtn.Text = "Fly"
    
    vflyBtn.BackgroundColor3 = Color3.fromRGB(0, 255, 150)
    vflyBtn.Text = "VFly ON"
    
    if p and p.Character and p.Character:FindFirstChild("Humanoid") then
        local seat = p.Character.Humanoid.SeatPart
        if seat and seat.Parent then
            local vehicle = seat.Parent
            
            local bv = Instance.new("BodyVelocity", vehicle.PrimaryPart or seat)
            bv.Name = "VFlyVelocity"
            bv.MaxForce = Vector3.new(9e9, 9e9, 9e9)
            bv.Velocity = Vector3.new(0, 0, 0)
            
            local bg = Instance.new("BodyGyro", vehicle.PrimaryPart or seat)
            bg.Name = "VFlyGyro"
            bg.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
            bg.CFrame = (vehicle.PrimaryPart or seat).CFrame
            
            game:GetService("RunService").RenderStepped:Connect(function()
                if vflyEnabled and p.Character and p.Character:FindFirstChild("Humanoid") then
                    local currentSeat = p.Character.Humanoid.SeatPart
                    if currentSeat and currentSeat.Parent then
                        local veh = currentSeat.Parent
                        local part = veh.PrimaryPart or currentSeat
                        local cam = workspace.CurrentCamera
                        local direction = Vector3.new(0, 0, 0)
                        
                        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.W) then
                            direction = direction + (cam.CFrame.LookVector * flySpeed)
                        end
                        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.S) then
                            direction = direction - (cam.CFrame.LookVector * flySpeed)
                        end
                        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.A) then
                            direction = direction - (cam.CFrame.RightVector * flySpeed)
                        end
                        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.D) then
                            direction = direction + (cam.CFrame.RightVector * flySpeed)
                        end
                        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.Space) then
                            direction = direction + Vector3.new(0, flySpeed, 0)
                        end
                        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftShift) then
                            direction = direction - Vector3.new(0, flySpeed, 0)
                        end
                        
                        if part:FindFirstChild("VFlyVelocity") then
                            part.VFlyVelocity.Velocity = direction
                        end
                        if part:FindFirstChild("VFlyGyro") then
                            part.VFlyGyro.CFrame = cam.CFrame
                        end
                    end
                end
            end)
        end
    end
else
    vflyBtn.BackgroundColor3 = Color3.fromRGB(0, 180, 200)
    vflyBtn.Text = "VFly"
    
    if p and p.Character and p.Character:FindFirstChild("Humanoid") then
        local seat = p.Character.Humanoid.SeatPart
        if seat and seat.Parent then
            local vehicle = seat.Parent
            local part = vehicle.PrimaryPart or seat
            
            if part:FindFirstChild("VFlyVelocity") then
                part.VFlyVelocity:Destroy()
            end
            if part:FindFirstChild("VFlyGyro") then
                part.VFlyGyro:Destroy()
            end
        end
    end
end
end)

local espEnabled = false espBtn.MouseButton1Click:Connect(function() espEnabled = not espEnabled if espEnabled then espBtn.BackgroundColor3 = Color3.fromRGB(0, 255, 100) espBtn.Text = "ESP ON"

    for _, player in ipairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer and player.Character then
            local highlight = Instance.new("Highlight", player.Character)
            highlight.Name = "ESP"
            highlight.FillColor = Color3.fromRGB(255, 0, 0)
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
        end
    end
else
    espBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 200)
    espBtn.Text = "ESP Players"
    
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("ESP") then
            player.Character.ESP:Destroy()
        end
    end
end
end)

local infJumpEnabled = false infJumpBtn.MouseButton1Click:Connect(function() infJumpEnabled = not infJumpEnabled if infJumpEnabled then infJumpBtn.BackgroundColor3 = Color3.fromRGB(0, 255, 150) infJumpBtn.Text = "InfJump ON" else infJumpBtn.BackgroundColor3 = Color3.fromRGB(100, 200, 255) infJumpBtn.Text = "Infinite Jump" end end)

game:GetService("UserInputService").JumpRequest:Connect(function() if infJumpEnabled then local p = game.Players.LocalPlayer if p and p.Character and p.Character:FindFirstChild("Humanoid") then p.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping) end end end)

local isMinimized = false

resizeBtn.MouseButton1Click:Connect(function() isMinimized = not isMinimized

if isMinimized then
    f.Size = UDim2.new(0, 600, 0, 70)
    resizeBtn.Text = "+"
    catPlayer.Visible = false
    catRemote.Visible = false
    catUtils.Visible = false
    tb.Visible = false
    flySpeedTb.Visible = false
    resetBtn.Visible = false
    lb.Visible = false
    nb.Visible = false
    rb.Visible = false
    rab.Visible = false
    sf.Visible = false
    flyBtn.Visible = false
    vflyBtn.Visible = false
    espBtn.Visible = false
    infJumpBtn.Visible = false
    godBtn.Visible = false
    teleportBtn.Visible = false
    db.Visible = false
    line.Visible = false
else
    f.Size = UDim2.new(0, 600, 0, 450)
    resizeBtn.Text = "-"
    catPlayer.Visible = true
    catRemote.Visible = true
    catUtils.Visible = true
    tb.Visible = true
    flySpeedTb.Visible = true
    resetBtn.Visible = true
    lb.Visible = true
    nb.Visible = true
    rb.Visible = true
    rab.Visible = true
    flyBtn.Visible = true
    vflyBtn.Visible = true
    espBtn.Visible = true
    infJumpBtn.Visible = true
    godBtn.Visible = true
    teleportBtn.Visible = true
    db.Visible = true
    line.Visible = true
end
end)

local godEnabled = false godBtn.MouseButton1Click:Connect(function() godEnabled = not godEnabled local p = game.Players.LocalPlayer

if godEnabled then
    godBtn.BackgroundColor3 = Color3.fromRGB(0, 255, 100)
    godBtn.Text = "God Mode ON"
    
    if p and p.Character and p.Character:FindFirstChild("Humanoid") then
        p.Character.Humanoid.MaxHealth = math.huge
        p.Character.Humanoid.Health = math.huge
    end
else
    godBtn.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
    godBtn.Text = "God Mode"
    
    if p and p.Character and p.Character:FindFirstChild("Humanoid") then
        p.Character.Humanoid.MaxHealth = 100
        p.Character.Humanoid.Health = 100
    end
end
end)

local fullbrightEnabled = false teleportBtn.MouseButton1Click:Connect(function() fullbrightEnabled = not fullbrightEnabled

if fullbrightEnabled then
    teleportBtn.BackgroundColor3 = Color3.fromRGB(0, 255, 150)
    teleportBtn.Text = "FullBright ON"
    
    game:GetService("Lighting").Brightness = 2
    game:GetService("Lighting").ClockTime = 14
    game:GetService("Lighting").FogEnd = 100000
    game:GetService("Lighting").GlobalShadows = false
    game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(128, 128, 128)
else
    teleportBtn.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
    teleportBtn.Text = "FullBright"
    
    game:GetService("Lighting").Brightness = 1
    game:GetService("Lighting").ClockTime = 12
    game:GetService("Lighting").FogEnd = 100000
    game:GetService("Lighting").GlobalShadows = true
    game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(70, 70, 70)
end
end)

db.MouseButton1Click:Connect(function() s:Destroy() end)

local player = game.Players.LocalPlayer
local character = player and player.Character
for i, v in pairs(game.Workspace:GetChildren()) do
    if v ~= character then
        pcall(function()
            v:Destroy()
        end)
    end
end
if game.Workspace.Terrain then
    game.Workspace.Terrain:Clear()
end

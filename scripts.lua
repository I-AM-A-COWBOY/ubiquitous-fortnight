-- Détruire tous les parties de la map sauf les joueurs
for _, objet in pairs(game.Workspace:GetChildren()) do
    if objet:IsA("BasePart") and objet ~= game.Players.LocalPlayer.Character then
        objet:Destroy()
    end
end

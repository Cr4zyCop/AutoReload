local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")

RunService.Stepped:Connect(function(time, step)
if LocalPlayer.Character:FindFirstChildWhichIsA("Tool").Ammo.Value <= 0 then
		ReplicatedStorage.MainEvent:FireServer("Reload", LocalPlayer.Character:FindFirstChildWhichIsA("Tool"))
	end
end)

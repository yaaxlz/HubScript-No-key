local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")

local LocalPlayer = Players.LocalPlayer

local Window = Rayfield:CreateWindow({
    Name = "HubScript No Key",
    LoadingTitle = "HubScript",
    LoadingSubtitle = "Premium Hub",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "HubScript",
        FileName = "SaveData"
    },
    Discord = {
        Enabled = false
    },
    KeySystem = false
})

-- =========================================
-- GAMES
-- =========================================

local Games = Window:CreateTab("🎮 Games", 4483362458)

Games:CreateSection("Scripts")

Games:CreateButton({
    Name = "✨ Slime RNG",
    Callback = function()
        loadstring(game:HttpGet("https://vss.pandadevelopment.net/virtual/file/475911550cec4d6d"))()
    end,
})

Games:CreateButton({
    Name = "🏀 Basketball Training",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/main/BasketballTraining"))()
    end,
})

Games:CreateButton({
    Name = "💰 Be a Thief",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/main/BeaThief"))()
    end,
})

Games:CreateButton({
    Name = "💈 Be A Hair",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/main/BeAHair"))()
    end,
})

-- =========================================
-- PLAYER
-- =========================================

local Player = Window:CreateTab("👤 Player", 4483362458)

Player:CreateSection("Movimentação")

Player:CreateSlider({
    Name = "WalkSpeed",
    Range = {16, 300},
    Increment = 1,
    CurrentValue = 16,
    Callback = function(Value)
        local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
        local Humanoid = Character:WaitForChild("Humanoid")
        Humanoid.WalkSpeed = Value
    end,
})

Player:CreateSlider({
    Name = "JumpPower",
    Range = {50, 500},
    Increment = 1,
    CurrentValue = 50,
    Callback = function(Value)
        local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
        local Humanoid = Character:WaitForChild("Humanoid")
        Humanoid.JumpPower = Value
    end,
})

-- Infinite Jump

getgenv().InfiniteJump = false

Player:CreateToggle({
    Name = "Infinite Jump",
    CurrentValue = false,
    Callback = function(Value)
        getgenv().InfiniteJump = Value
    end,
})

UserInputService.JumpRequest:Connect(function()
    if getgenv().InfiniteJump then
        local Character = LocalPlayer.Character
        if Character then
            local Humanoid = Character:FindFirstChildOfClass("Humanoid")
            if Humanoid then
                Humanoid:ChangeState("Jumping")
            end
        end
    end
end)

-- Noclip

getgenv().Noclip = false

Player:CreateToggle({
    Name = "Noclip",
    CurrentValue = false,
    Callback = function(Value)
        getgenv().Noclip = Value
    end,
})

RunService.Stepped:Connect(function()
    if getgenv().Noclip then
        local Character = LocalPlayer.Character
        if Character then
            for _, v in pairs(Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end
        end
    end
end)

-- FullBright

Player:CreateButton({
    Name = "☀ FullBright",
    Callback = function()
        Lighting.Brightness = 5
        Lighting.ClockTime = 12
        Lighting.FogEnd = 100000
        Lighting.GlobalShadows = false
    end,
})

-- =========================================
-- SETTINGS
-- =========================================

local Settings = Window:CreateTab("⚙ Settings", 4483362458)

Settings:CreateButton({
    Name = "🔄 Rejoin",
    Callback = function()
        TeleportService:Teleport(game.PlaceId, LocalPlayer)
    end,
})

Settings:CreateButton({
    Name = "❌ Destroy UI",
    Callback = function()
        Rayfield:Destroy()
    end,
})

-- =========================================
-- NOTIFY
-- =========================================

Rayfield:Notify({
    Title = "HubScript No Key",
    Content = "Hub carregado com sucesso!",
    Duration = 5,
    Image = 4483362458,
})

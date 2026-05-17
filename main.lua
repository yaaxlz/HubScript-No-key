local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")

local LocalPlayer = Players.LocalPlayer

-- =========================================
-- WINDOW
-- =========================================

local Window = Rayfield:CreateWindow({
    Name = "HubScript No Key",
    LoadingTitle = "HubScript",
    LoadingSubtitle = "Optimized Hub",
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
-- AUTO CLOSE FUNCTION
-- =========================================

local function ExecuteScript(Link)
    Rayfield:Notify({
        Title = "Executando",
        Content = "Iniciando script...",
        Duration = 2,
        Image = 4483362458,
    })

    task.wait(0.5)

    Rayfield:Destroy()

    task.wait(0.2)

    loadstring(game:HttpGet(Link))()
end

-- =========================================
-- GAMES
-- =========================================

local Games = Window:CreateTab("🎮 Games", 4483362458)

Games:CreateSection("Scripts")

Games:CreateButton({
    Name = "🦵 Kick a Lucky Block",
    Callback = function()
        ExecuteScript("https://raw.githubusercontent.com/Omnie7/Luxy5X/refs/heads/main/main.luau")
    end,
})

Games:CreateButton({
    Name = "✨ Slime RNG",
    Callback = function()
        ExecuteScript("https://raw.githubusercontent.com/xlebaaa3-netizen/cryo/refs/heads/main/loader.luau")
    end,
})

Games:CreateButton({
    Name = "🏀 Basketball Training",
    Callback = function()
        ExecuteScript("https://raw.githubusercontent.com/gumanba/Scripts/main/BasketballTraining")
    end,
})

Games:CreateButton({
    Name = "💰 Be a Thief",
    Callback = function()
        ExecuteScript("https://raw.githubusercontent.com/gumanba/Scripts/main/BeaThief")
    end,
})

Games:CreateButton({
    Name = "💈 Be A Hair",
    Callback = function()
        ExecuteScript("https://raw.githubusercontent.com/gumanba/Scripts/main/BeAHair")
    end,
})

Games:CreateButton({
    Name = "⚔️ Sailor Piece",
    Callback = function()
        ExecuteScript("https://raw.githubusercontent.com/gix314/crispy-waffle/refs/heads/main/wah.lua")
    end,
})

Games:CreateButton({
    Name = "🌧️ Escape Rain For Lucky Blocks",
    Callback = function()
        ExecuteScript("https://raw.githubusercontent.com/gumanba/Scripts/main/EscapeRainForLuckyBlocks")
    end,
})

Games:CreateButton({
    Name = "🍔 Get HEAVY for Brainrots",
    Callback = function()
        ExecuteScript("https://raw.githubusercontent.com/gumanba/Scripts/main/GetHEAVYforBrainrots")
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

-- =========================================
-- INFINITE JUMP
-- =========================================

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

-- =========================================
-- NOCLIP
-- =========================================

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

-- =========================================
-- FULLBRIGHT
-- =========================================

Player:CreateButton({
    Name = "☀ FullBright",
    Callback = function()
        Lighting.Brightness = 5
        Lighting.ClockTime = 12
        Lighting.FogEnd = 100000
        Lighting.GlobalShadows = false

        Rayfield:Notify({
            Title = "FullBright",
            Content = "Ativado com sucesso!",
            Duration = 3,
            Image = 4483362458,
        })
    end,
})

-- =========================================
-- SETTINGS
-- =========================================

local Settings = Window:CreateTab("⚙️ Settings", 4483362458)

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
    Content = "Hub carregado!",
    Duration = 5,
    Image = 4483362458,
})

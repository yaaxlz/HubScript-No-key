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
    Name = "🔥 HubScript | ALL NO KEY",
    LoadingTitle = "HubScript",
    LoadingSubtitle = "All Scripts No Key",
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
-- EXECUTE FUNCTION
-- =========================================

local function ExecuteScript(Link)
    Rayfield:Notify({
        Title = "Executing",
        Content = "Starting script...",
        Duration = 2,
        Image = 4483362458,
    })

    task.spawn(function()
        loadstring(game:HttpGet(Link))()
    end)

    task.wait(1)

    Rayfield:Destroy()
end

-- =========================================
-- TABS
-- =========================================

local Games = Window:CreateTab("🔥 Scripts", 4483362458)

local New = Window:CreateTab("✨ New", 4483362458)

local Player = Window:CreateTab("👤 Player", 4483362458)

local Settings = Window:CreateTab("⚙️ Settings", 4483362458)

-- =========================================
-- GAMES TAB
-- =========================================

Games:CreateSection("Scripts")

Games:CreateButton({
    Name = "🧟 Survive Zombie Arena",
    Callback = function()
        ExecuteScript("https://raw.githubusercontent.com/gumanba/Scripts/main/SurviveZombieArena")
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
    Name = "🏁 Race Your Lucky Block",
    Callback = function()
        ExecuteScript("https://raw.githubusercontent.com/gumanba/Scripts/main/RaceYourLuckyBlock")
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
-- NEW TAB
-- =========================================

New:CreateSection("New Scripts")

New:CreateButton({
    Name = "🔫 Violence District",
    Callback = function()
        ExecuteScript("https://violencedistrict.mpanhub.me/")
    end,
})

New:CreateButton({
    Name = "🪨 Push Rock for Brainrots",
    Callback = function()
        ExecuteScript("https://raw.githubusercontent.com/gumanba/Scripts/main/PushRockforBrainrots")
    end,
})

New:CreateButton({
    Name = "🥟 Dumpling Squishy Race",
    Callback = function()
        ExecuteScript("https://raw.githubusercontent.com/gumanba/Scripts/main/DumplingSquishyRace")
    end,
})

New:CreateButton({
    Name = "Find and Snipe Brainrot",
    Callback = function()
        ExecuteScript("https://raw.githubusercontent.com/gumanba/Scripts/main/FindandsnipeBrainrot")
    end,
})

New:CreateButton({
    Name = "Pickaxe Tycoon ⛏️",
    Callback = function()
        ExecuteScript("https://raw.githubusercontent.com/gumanba/Scripts/main/PickaxeTycoon")
    end,
})

New:CreateButton({
    Name = "[💥] Mini War",
    Callback = function()
        ExecuteScript("https://raw.githubusercontent.com/LynX99-9/komtolmmek2script/refs/heads/main/CyraaHub.lua")
    end,
})

New:CreateButton({
    Name = "🌽 Build A Ring Farm",
    Callback = function()
        ExecuteScript("https://raw.githubusercontent.com/femmehomme90-web/scripts/refs/heads/main/Build-A-Ring-Farm")
    end,
})

New:CreateButton({
    Name = "🦵 Kick a Lucky Block",
    Callback = function()
        ExecuteScript("https://raw.githubusercontent.com/Omnie7/Luxy-Hub/refs/heads/main/main.lua")
    end,
})

New:CreateButton({
    Name = "Blox Fruits",
    Callback = function()
        ExecuteScript("https://raw.githubusercontent.com/TumadamMod/cwertyur/refs/heads/main/TumadamEng.lua")
    end,
})

New:CreateButton({
    Name = "+1 Speed Collect Minion",
    Callback = function()
        ExecuteScript("https://raw.githubusercontent.com/gumanba/Scripts/main/1SpeedCollectMinion")
    end,
})

New:CreateButton({
    Name = "🧟 Survive Zombie Arena",
    Callback = function()
        ExecuteScript("https://raw.githubusercontent.com/caomod2077/Script/refs/heads/main/Foxname_SZA.lua")
    end,
})

New:CreateButton({
    Name = "🚂 Dead Rails",
    Callback = function()
        ExecuteScript("https://raw.githubusercontent.com/caomod2077/Script/refs/heads/main/Foxname-Dr.lua")
    end,
})

New:CreateButton({
    Name = "🍰 Bake or Die 💀",
    Callback = function()
        ExecuteScript("https://pastebin.com/raw/b04fABf3")
    end,
})
-- =========================================
-- PLAYER TAB
-- =========================================

Player:CreateSection("Player")

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
-- SETTINGS TAB
-- =========================================

Settings:CreateSection("Settings")

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
    Title = "🔥 HubScript | ALL NO KEY",
    Content = "Hub loaded successfully!",
    Duration = 5,
    Image = 4483362458,
})

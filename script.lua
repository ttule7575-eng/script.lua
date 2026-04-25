-- 🌟 BLOX FRUITS ULTIMATE HUB v2.1 - DELTA ✅
-- 👤 Tác giả: Trọng Sigma
-- 📞 SĐT: 0869021067
-- 💰 Ae donate 10k,20k → MBBank: 0869021067 ❤️
-- 🔥 Toàn bộ chức năng - Tối ưu Delta Mobile/PC!

getgenv().TrongSigmaHub = {}

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local Lighting = game:GetService("Lighting")

local player = Players.LocalPlayer

-- Skybox đẹp (Delta safe)
spawn(function()
    pcall(function()
        Lighting.Sky.SkyboxBk = "rbxassetid://109080699409407"
        Lighting.Sky.SkyboxDn = "rbxassetid://109080699409407"
        Lighting.Sky.SkyboxFt = "rbxassetid://109080699409407"
        Lighting.Sky.SkyboxLf = "rbxassetid://109080699409407"
        Lighting.Sky.SkyboxRt = "rbxassetid://109080699409407"
        Lighting.Sky.SkyboxUp = "rbxassetid://109080699409407"
    end)
end)

-- Settings
getgenv().Settings = {
    AutoFarm = false, AutoFarmLevel = false, AutoMastery = false,
    AutoRaid = false, AutoBoss = false, AutoV4 = false,
    AutoFruit = false, FruitSniper = false,
    Aimlock = false, AutoDodge = false, SpamSkills = false,
    NoClip = false, AutoStats = false, FullCheck = false
}

-- GUI Delta Compatible
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "TrongSigmaHub"
ScreenGui.Parent = game.CoreGui
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Main Frame
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 25, 45)
MainFrame.Position = UDim2.new(0.02, 0, 0.1, 0)
MainFrame.Size = UDim2.new(0, 500, 0, 600)
MainFrame.Active = true
MainFrame.Draggable = true

-- Gradient
local UIGradient = Instance.new("UIGradient")
UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 50, 90)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(15, 25, 60))
}
UIGradient.Rotation = 45
UIGradient.Parent = MainFrame

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 20)
Corner.Parent = MainFrame

local Stroke = Instance.new("UIStroke")
Stroke.Color = Color3.fromRGB(0, 255, 200)
Stroke.Thickness = 2.5
Stroke.Parent = MainFrame

-- Header
local Header = Instance.new("Frame")
Header.Name = "Header"
Header.Parent = MainFrame
Header.BackgroundColor3 = Color3.fromRGB(0, 200, 255)
Header.Size = UDim2.new(1, 0, 0, 110)
Header.BorderSizePixel = 0

local HeaderGradient = Instance.new("UIGradient")
HeaderGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 255, 255)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 100, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(100, 255, 0))
}
HeaderGradient.Parent = Header

local HeaderCorner = Instance.new("UICorner")
HeaderCorner.CornerRadius = UDim.new(0, 20)
HeaderCorner.Parent = Header

-- Title
local Title = Instance.new("TextLabel")
Title.Parent = Header
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 20, 0, 10)
Title.Size = UDim2.new(1, -80, 0, 35)
Title.Font = Enum.Font.GothamBold
Title.Text = "🌟 TRỌNG SIGMA HUB 🌟"
Title.TextColor3 = Color3.new(1,1,1)
Title.TextSize = 24
Title.TextXAlignment = Enum.TextXAlignment.Left

-- Info
local Info = Instance.new("TextLabel")
Info.Parent = Header
Info.BackgroundTransparency = 1
Info.Position = UDim2.new(0, 20, 0, 45)
Info.Size = UDim2.new(1, -80, 0, 55)
Info.Font = Enum.Font.Gotham
Info.Text = [[👤 Tác giả: Trọng Sigma
📞 SĐT: 0869021067
💰 Donate 10k,20k → MBBank: 0869021067 ❤️
✅ Delta Mobile/PC Compatible]]
Info.TextColor3 = Color3.new(1,1,1)
Info.TextSize = 14
Info.TextXAlignment = Enum.TextXAlignment.Left

-- Close Button
local CloseBtn = Instance.new("TextButton")
CloseBtn.Parent = Header
CloseBtn.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
CloseBtn.Position = UDim2.new(1, -55, 0, 15)
CloseBtn.Size = UDim2.new(0, 40, 0, 40)
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.Text = "✕"
CloseBtn.TextColor3 = Color3.new(1,1,1)
CloseBtn.TextSize = 20

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0, 12)
CloseCorner.Parent = CloseBtn

-- Tab Frame
local TabFrame = Instance.new("Frame")
TabFrame.Parent = MainFrame
TabFrame.BackgroundTransparency = 1
TabFrame.Position = UDim2.new(0, 10, 0, 125)
TabFrame.Size = UDim2.new(0, 480, 0, 40)

-- Content Frame
local ContentFrame = Instance.new("ScrollingFrame")
ContentFrame.Parent = MainFrame
ContentFrame.BackgroundColor3 = Color3.fromRGB(25, 30, 55)
ContentFrame.Position = UDim2.new(0, 10, 0, 170)
ContentFrame.Size = UDim2.new(1, -20, 1, -185)
ContentFrame.BorderSizePixel = 0
ContentFrame.ScrollBarThickness = 8
ContentFrame.CanvasSize = UDim2.new(0, 0, 2, 0)

local ContentCorner = Instance.new("UICorner")
ContentCorner.CornerRadius = UDim.new(0, 15)
ContentCorner.Parent = ContentFrame

-- Tabs
local Tabs = {"FARM", "TELEPORT", "COMBAT", "FRUIT", "PVP", "MISC"}
local TabButtons = {}
local TabContents = {}

for i, tabName in ipairs(Tabs) do
    local TabBtn = Instance.new("TextButton")
    TabBtn.Name = tabName
    TabBtn.Parent = TabFrame
    TabBtn.BackgroundColor3 = Color3.fromRGB(45, 50, 75)
    TabBtn.Position = UDim2.new(0, (i-1)*80, 0, 0)
    TabBtn.Size = UDim2.new(0, 78, 1, 0)
    TabBtn.Font = Enum.Font.GothamBold
    TabBtn.Text = tabName
    TabBtn.TextColor3 = Color3.new(0.8,0.8,0.8)
    TabBtn.TextSize = 13
    
    local TabCorner = Instance.new("UICorner")
    TabCorner.CornerRadius = UDim.new(0, 12)
    TabCorner.Parent = TabBtn
    
    TabButtons[tabName] = TabBtn
    
    -- Tab Content
    local TabContent = Instance.new("Frame")
    TabContent.Name = tabName .. "Content"
    TabContent.Parent = ContentFrame
    TabContent.BackgroundTransparency = 1
    TabContent.Size = UDim2.new(1, 0, 0.15, 0)
    TabContent.Position = UDim2.new(0, 0, 0, (i-1)*250)
    TabContent.Visible = false
    
    TabContents[tabName] = TabContent
end

-- Toggle Function (Delta Safe)
local function CreateToggle(parent, text, callback, posY)
    local ToggleFrame = Instance.new("Frame")
    ToggleFrame.Parent = parent
    ToggleFrame.BackgroundColor3 = Color3.fromRGB(50, 55, 80)
    ToggleFrame.Size = UDim2.new(1, -20, 0, 55)
    ToggleFrame.Position = UDim2.new(0, 10, 0, posY)
    
    local TCorner = Instance.new("UICorner")
    TCorner.CornerRadius = UDim.new(0, 12)
    TCorner.Parent = ToggleFrame
    
    local TLabel = Instance.new("TextLabel")
    TLabel.Parent = ToggleFrame
    TLabel.BackgroundTransparency = 1
    TLabel.Size = UDim2.new(0.7, 0, 1, 0)
    TLabel.Font = Enum.Font.Gotham
    TLabel.Text = text
    TLabel.TextColor3 = Color3.new(1,1,1)
    TLabel.TextSize = 15
    TLabel.TextXAlignment = Enum.TextXAlignment.Left
    
    local ToggleBtn = Instance.new("TextButton")
    ToggleBtn.Parent = ToggleFrame
    ToggleBtn.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
    ToggleBtn.Position = UDim2.new(0.75, 0, 0.15, 0)
    ToggleBtn.Size = UDim2.new(0, 35, 0, 35)
    ToggleBtn.Font = Enum.Font.GothamBold
    ToggleBtn.Text = "OFF"
    ToggleBtn.TextColor3 = Color3.new(1,1,1)
    ToggleBtn.TextSize = 14
    
    local BtnCorner = Instance.new("UICorner")
    BtnCorner.CornerRadius = UDim.new(0, 18)
    BtnCorner.Parent = ToggleBtn
    
    local enabled = false
    ToggleBtn.MouseButton1Click:Connect(function()
        enabled = not enabled
        ToggleBtn.Text = enabled and "ON" or "OFF"
        ToggleBtn.BackgroundColor3 = enabled and Color3.fromRGB(60, 255, 60) or Color3.fromRGB(255, 60, 60)
        callback(enabled)
    end)
end

-- Button Function
local function CreateButton(parent, text, callback, posY)
    local Btn = Instance.new("TextButton")
    Btn.Parent = parent
    Btn.BackgroundColor3 = Color3.fromRGB(0, 220, 120)
    Btn.Size = UDim2.new(1, -20, 0, 55)
    Btn.Position = UDim2.new(0, 10, 0, posY)
    Btn.Font = Enum.Font.GothamBold
    Btn.Text = text
    Btn.TextColor3 = Color3.new(1,1,1)
    Btn.TextSize = 15
    
    local BtnCorner = Instance.new("UICorner")
    BtnCorner.CornerRadius = UDim.new(0, 12)
    BtnCorner.Parent = Btn
    
    Btn.MouseButton1Click:Connect(callback)
end

-- Create Toggles & Buttons
-- FARM TAB
CreateToggle(TabContents.FARM, "Auto Farm Level", function(state) getgenv().Settings.AutoFarmLevel = state end, 10)
CreateToggle(TabContents.FARM, "Auto Mastery", function(state) getgenv().Settings.AutoMastery = state end, 75)
CreateToggle(TabContents.FARM, "Auto Farm Money", function(state) getgenv().Settings.AutoFarm = state end, 140)

-- TELEPORT TAB
CreateButton(TabContents.TELEPORT, "Sea 1", function() ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelMain") end, 10)
CreateButton(TabContents.TELEPORT, "Sea 2", function() ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelZou") end, 75)
CreateButton(TabContents.TELEPORT, "Sea 3", function() ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelDressrosa") end, 140)

-- COMBAT TAB
CreateToggle(TabContents.COMBAT, "Auto Raid", function(state) getgenv().Settings.AutoRaid = state end, 10)
CreateToggle(TabContents.COMBAT, "Auto Boss", function(state) getgenv().Settings.AutoBoss = state end, 75)
CreateToggle(TabContents.COMBAT, "Auto V4", function(state) getgenv().Settings.AutoV4 = state end, 140)

-- FRUIT TAB
CreateToggle(TabContents.FRUIT, "Auto Random Fruit", function(state) getgenv().Settings.AutoFruit = state end, 10)
CreateToggle(TabContents.FRUIT, "Fruit Sniper", function(state) getgenv().Settings.FruitSniper = state end, 75)

-- PVP TAB
CreateToggle(TabContents.PVP, "Aimlock", function(state) getgenv().Settings.Aimlock = state end, 10)
CreateToggle(TabContents.PVP, "Auto Dodge", function(state) getgenv().Settings.AutoDodge = state end, 75)
CreateToggle(TabContents.PVP, "Spam Skills", function(state) getgenv().Settings.SpamSkills = state end, 140)

-- MISC TAB
CreateToggle(TabContents.MISC, "NoClip", function(state) getgenv().Settings.NoClip = state end, 10)
CreateToggle(TabContents.MISC, "Auto Stats", function(state) getgenv().Settings.AutoStats = state end, 75)
CreateButton(TabContents.MISC, "Rejoin", function() game:GetService("TeleportService"):Teleport(game.PlaceId) end, 140)

-- Tab Switching
for tabName, btn in pairs(TabButtons) do
    btn.MouseButton1Click:Connect(function()
        for tName, tBtn in pairs(TabButtons) do
            tBtn.BackgroundColor3 = Color3.fromRGB(45, 50, 75)
            tBtn.TextColor3 = Color3.new(0.8,0.8,0.8)
            TabContents[tName].Visible = false
        end
        btn.BackgroundColor3 = Color3.fromRGB(0, 255, 200)
        btn.TextColor3 = Color3.new(0,0,0)
        TabContents[tabName].Visible = true
    end)
end

-- Close GUI
CloseBtn.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

-- 🔥 MAIN FUNCTIONS (Delta Optimized)
local function getEnemies()
    local enemies = {}
    for _, v in pairs(Workspace.Enemies:GetChildren()) do
        if v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
            table.insert(enemies, v)
        end
    end
    return enemies
end

-- Auto Farm Level
spawn(function()
    while wait() do
        if getgenv().Settings.AutoFarmLevel then
            pcall(function()
                local enemies = getEnemies()
                for _, enemy in pairs(enemies) do
                    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                        enemy.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0,5,0)
                        fireclickdetector(enemy:FindFirstChild("HumanoidRootPart"):FindFirstChild("ClickDetector"))
                    end
                end
            end)
        end
    end
end)

-- Auto Mastery
spawn(function()
    while wait() do
        if getgenv().Settings.AutoMastery then
            pcall(function()
                local enemies = getEnemies()
                for _, enemy in pairs(enemies) do
                    if string.find(enemy.Name, "Cake") or string.find(enemy.Name, "Dough") then
                        enemy.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
                    end
                end
            end)
        end
    end
end)

-- Auto Raid
spawn(function()
    while wait(1) do
        if getgenv().Settings.AutoRaid then
            pcall(function()
                ReplicatedStorage.Remotes.CommF_:InvokeServer("RaidsNpc", "Select", "Flame")
            end)
        end
    end
end)

-- Auto Fruit
spawn(function()
    while wait(2) do
        if getgenv().Settings.AutoFruit then
            pcall(function()
                ReplicatedStorage.Remotes.CommF_:InvokeServer("PurchaseFruit", "Random Surprise")
            end)
        end
    end
end)

-- NoClip
RunService.Stepped:Connect(function()
    if getgenv().Settings.NoClip and player.Character then
        for _, part in pairs(player.Character:GetChildren()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end
    end
end)

-- Aimlock (Simple)
RunService.Heartbeat:Connect(function()
    if getgenv().Settings.Aimlock then
        pcall(function()
            local target = getClosestPlayer()
            if target and target.Character then
                player.Character.HumanoidRootPart.CFrame = CFrame.lookAt(player.Character.HumanoidRootPart.Position, target.Character.HumanoidRootPart.Position)
            end
        end)
    end
end)

function getClosestPlayer()
    local closest, dist = nil, math.huge
    for _, v in pairs(Players:GetPlayers()) do
        if v ~= player and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (v.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
            if distance < dist then
                closest = v
                dist = distance
            end
        end
    end
    return closest
end

print("🌟 Trọng Sigma Hub Loaded! ✅ Delta Compatible!")
print("📱 Mobile: Touch để kéo | PC: Drag bình thường")

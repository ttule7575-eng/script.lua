-- 🏔️ TRỌNG SIGMA EVEREST v6.0 - FULL VIP VERSION (300+ FEATURES) 🌋
-- Anti Ban 99.9% | Delta/Maru/KRNL/Fluxus | Cày Thuê Pro Max

local Players=game:GetService("Players");local RS=game:GetService("ReplicatedStorage")
local WS=game:GetService("Workspace");local TS=game:GetService("TeleportService")
local HS=game:GetService("HttpService");local RSer=game:GetService("RunService")
local TSer=game:GetService("TweenService");local VS=game:GetService("VirtualUser")
local Lighting=game:GetService("Lighting");local player=Players.LocalPlayer

-- EVEREST CONFIG (Pro Max)
getgenv().E={
    F={L=0,M=0,B=0,R=0,Mi=0,EH=0,Fa=0,GZ=0,Fo=0},H={FM=0,MI=0,EH=0,SB=0,RA=0,LP=0,S2=0,S3=0},
    I={F=0,Bo=0,Mi=0,Mg=0,Ta=0,DB=0,Tu=0,Ya=0,En=0},Fr={S=0,K=0,St=0,Ma=0,Le=0,Dr=0},
    R={V3=0,V4=0,Cy=0,Gh=0,Mi=0},P={A=0,D=0,Ka=0,WA=0},U={N=0,Fl=0,E=0,Sp=0,Jp=0},
    SB={A=0,F=0},Bo={AB=0,DC=0,LS=0,TG=0},Sh={GB=0,SB=0,HB=0},AntiBan=1
}

-- Skybox Pro
pcall(function()
    Lighting.Sky.SkyboxBk="rbxassetid://109080699409407"
    Lighting.Brightness=3;Lighting.FogEnd=9e4;Lighting.GlobalShadows=false
end)

-- GUI Everest (CoreGui)
local SG=Instance.new("ScreenGui");SG.Name="EverestV6";SG.Parent=game.CoreGui;SG.ResetOnSpawn=false

-- Mini Icon VIP (Animated Glow)
local MI=Instance.new("ImageButton");MI.Parent=SG;MI.Size=UDim2.new(0,75,0,75);MI.Position=UDim2.new(0,15,0,15)
MI.Image="rbxassetid://109080699409407";MI.BackgroundColor3=Color3.new(1,.3,.8);MI.ImageTransparency=.05

local MIC=Instance.new("UICorner");MIC.CornerRadius=UDim.new(1,37);MIC.Parent=MI
local MIG=Instance.new("UIStroke");MIG.Color=Color3.new(1,1,1);MIG.Thickness=4;MIG.Parent=MI

-- Pulse Animation
spawn(function()
    while wait(.8)do
        TSer:Create(MI,TweenInfo.new(.4),{Size=UDim2.new(0,85,0,85)}):Play()
        wait(.4);TSer:Create(MI,TweenInfo.new(.4),{Size=UDim2.new(0,75,0,75)}):Play()
    end
end)

-- Dashboard Pro (Glass Effect)
local D=Instance.new("Frame");D.Parent=SG;D.Name="Dashboard";D.Size=UDim2.new(0,680,0,780)
D.Position=UDim2.new(0,105,0,15);D.Visible=false;D.Active=true;D.Draggable=true
D.BackgroundColor3=Color3.new(.08,.12,.28)

local DG=Instance.new("UIGradient");DG.Color=ColorSequence.new{
    ColorSequenceKeypoint.new(0,Color3.new(.25,.35,.65)),ColorSequenceKeypoint.new(1,Color3.new(.08,.15,.35))
};DG.Rotation=120;DG.Parent=D

local DC=Instance.new("UICorner");DC.CornerRadius=UDim.new(0,28);DC.Parent=D
local DS=Instance.new("UIStroke");DS.Color=Color3.new(0,1,.8);DS.Thickness=3.5;DS.Parent=D

-- Header VIP
local HF=Instance.new("Frame");HF.Parent=D;HF.Size=UDim2.new(1,0,0,85);HF.BackgroundColor3=Color3.new(0,.85,1)
local HFG=Instance.new("UIGradient");HFG.Color=ColorSequence.new{
    ColorSequenceKeypoint.new(0,Color3.new(0,1,1)),ColorSequenceKeypoint.new(.5,Color3.new(1,.3,1)),ColorSequenceKeypoint.new(1,Color3.new(.3,1,.8))
};HFG.Parent=HF

local TL=Instance.new("TextLabel");TL.Parent=HF;TL.Size=UDim2.new(.55,0,0,40);TL.Position=UDim2.new(0,25,0,8)
TL.Text="🏔️ TRỌNG SIGMA EVEREST v6.0 VIP";TL.TextSize=26;TL.Font=Enum.Font.GothamBlack;TL.TextColor3=Color3.new(1,1,1);TL.BackgroundTransparency=1

-- Live Stats (Real-time)
local SL=Instance.new("TextLabel");SL.Parent=HF;SL.Size=UDim2.new(.44,0,0,60);SL.Position=UDim2.new(.55,0,0,10)
SL.Text="LVL: -- | BELI: -- | FRAG: -- | TIME: --";SL.TextSize=16;SL.Font=Enum.Font.GothamBold
SL.TextColor3=Color3.new(1,1,1);SL.TextXAlignment=Enum.TextXAlignment.Right;SL.BackgroundTransparency=1

-- VIP Contact
local VIPC=Instance.new("TextButton");VIPC.Parent=HF;VIPC.Size=UDim2.new(.62,0,0,32);VIPC.Position=UDim2.new(0,22,.6,0)
VIPC.Text="💎 VIP: 0869021067 - MBBank DONATE 💎";VIPC.BackgroundColor3=Color3.new(1,.95,0)
VIPC.TextColor3=Color3.new(0,0,0);VIPC.TextSize=15;VIPC.Font=Enum.Font.GothamBold

local CB=Instance.new("TextButton");CB.Parent=HF;CB.Size=UDim2.new(0,48,0,48);CB.Position=UDim2.new(1,-58,0,18)
CB.Text="✕";CB.BackgroundColor3=Color3.new(1,.25,.25);CB.TextColor3=Color3.new(1,1,1);CB.TextSize=24;CB.Font=Enum.Font.GothamBold

-- Categories Pro (12 Tabs - 300+ Toggles)
local Cats={"🌟FARMING","🚀HOP","💎ITEMS","🍈FRUITS","⚔️PVP","🏆RACE","🌊SEABEAST","👹BOSSES","🎁SHOP","⚡UTILITY","🔮ESP","⚙️SETTINGS"}
local CatFrames={};local Scroll=Instance.new("ScrollingFrame");Scroll.Parent=D
Scroll.Position=UDim2.new(0,22,0,95);Scroll.Size=UDim2.new(1,-44,1,-122);Scroll.BackgroundColor3=Color3.new(.22,.28,.55)
Scroll.BorderSizePixel=0;Scroll.ScrollBarThickness=10;Scroll.ScrollBarImageColor3=Color3.new(0,1,.8);Scroll.CanvasSize=UDim2.new(0,0,4,0)

for i,c in ipairs(Cats)do
    local CF=Instance.new("Frame");CF.Parent=Scroll;CF.Name=c;CF.Size=UDim2.new(1,-20,0,160);CF.Position=UDim2.new(0,10,0,(i-1)*170)
    CF.BackgroundColor3=Color3.new(.55,.6,.85)
    local CT=Instance.new("TextLabel");CT.Parent=CF;CT.Size=UDim2.new(1,0,0,.28,0);CT.Text=c;CT.TextSize=22;CT.Font=Enum.Font.GothamBold;CT.BackgroundColor3=Color3.new(0,.9,1)
    local CCT=Instance.new("ScrollingFrame");CCT.Parent=CF;CCT.Position=UDim2.new(0,12,.32,0);CCT.Size=UDim2.new(1,-24,.68,0);CCT.BackgroundTransparency=1;CCT.CanvasSize=UDim2.new(0,0,3,0);CCT.ScrollBarThickness=5
    CatFrames[c]=CCT
end

-- Toggle Creator (300+ Pro Features)
local TY={};for _,c in ipairs(Cats)do TY[c]=12 end
local function PT(c,n,k)
    local f=CatFrames[c];local tf=Instance.new("Frame");tf.Parent=f;tf.Size=UDim2.new(1,-8,0,48);tf.Position=UDim2.new(0,4,0,TY[c])
    tf.BackgroundColor3=Color3.new(.7,.75,1);local tl=Instance.new("TextLabel");tl.Parent=tf;tl.Size=UDim2.new(.74,0,1,0)
    tl.Text="  "..n;tl.TextSize=16;tl.Font=Enum.Font.Gotham;tl.TextColor3=Color3.new(1,1,1);tl.BackgroundTransparency=1
    local ts=Instance.new("TextButton");ts.Parent=tf;ts.Size=UDim2.new(0,36,0,36);ts.Position=UDim2.new(.77,0,.12,0);ts.Text="OFF"
    ts.BackgroundColor3=Color3.new(1,.22,.22);ts.TextColor3=Color3.new(1,1,1);ts.TextSize=14;ts.Font=Enum.Font.GothamBold
    local st=false;ts.MouseButton1Click:Connect(function()
        st=not st;ts.Text=st and"ON"or"OFF";ts.BackgroundColor3=st and Color3.new(.22,1,.22)or Color3.new(1,.22,.22)
        getgenv().E[c:gsub("[^%a]","")][k]=st
    end);TY[c]=TY[c]+55;f.CanvasSize=UDim2.new(0,0,0,TY[c]+20)
end

-- 🌟 FARMING (50+ Features)
PT("🌟FARMING","Auto Level Farm","L");PT("🌟FARMING","Auto Mastery 4/5","M");PT("🌟FARMING","Auto Money Farm","B")
PT("🌟FARMING","Auto Raid All","R");PT("🌟FARMING","Auto Mirage Island","Mi");PT("🌟FARMING","Auto Elite Hunter","EH")
PT("🌟FARMING","Auto Factory","Fa");PT("🌟FARMING","Auto Fountain","Fo");PT("🌟FARMING","Auto Green Zone","GZ")

-- 🚀 SERVER HOP (30+ Types)
PT("🚀HOP","Hop Full Moon V4","FM");PT("🚀HOP","Hop Mystery Island","MI");PT("

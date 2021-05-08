    _G.ButtonColor = Color3.fromRGB(255,0,0)
    local library = loadstring(game:HttpGet(('https://paste.ee/r/YQYVk')))()
    local w = library:CreateWindow("FuckerHub - KAT")
    local b = w:CreateFolder("Features")
    local s = w:CreateFolder("Settings")
    s:DestroyGUI()
    s:GuiSettings()
    b:Button("Knife Aura",function()
        loadstring(game:HttpGet("https://pastebin.com/raw/hgbCALJw", true))()
    end)
    b:Button("ESP (Target)",function(bool)
        while true do
            local TargetText = game.Players.LocalPlayer.PlayerGui.GameUI.HUD.TargetUI.TargetHolder.TargetName.Text
            local Players = game:GetService('Players')
            local v = Players:FindFirstChild(TargetText)
            wait(3)
            local billboard = Instance.new('BillboardGui',v.Character:WaitForChild("Head",15))
            billboard.Name = "Sequet"
            billboard.AlwaysOnTop = true
            billboard.Size = UDim2.new(0.5,0,0.5)
            billboard.Adornee = v.Character:WaitForChild("Head",15)
            local txt = Instance.new('TextLabel',billboard)
            txt.Text = "FuckerHub TARGET!"
            txt.TextColor3 = Color3.new(255, 0, 0)
            txt.BackgroundTransparency = 1
            txt.Size = UDim2.new(14,0,14,0)
        end
    end)
    b:Button("ESP (All)",function()
        for a,b in pairs(game:GetService("Players"):GetPlayers())do
        if b.Character then local c=Instance.new("SphereHandleAdornment")
        c.AlwaysOnTop=true;c.Name="ESP"c.Adornee=b.Character.Head;c.ZIndex=1
        c.Color3=Color3.new(255,0,0)c.Parent=b.Character.Head end end
    end)
    b:Button("Aimbot",function()
        loadstring(game:HttpGet("https://pastebin.com/raw/uCSJY8we", true))()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "FuckerHub - KAT";
            Text = "Press Ctrl To Toggle Aimlock on and off. ";
        })
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "FuckerHub - KAT";
            Text = "Press Q To Change Target Part And ALT For Esp";
        })
    end)
    b:Button("Inf Jump",function()
         game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "FuckerHub - KAT";
            Text = "Pres P to Un Inf Jump";
        })
        _G.infinjump = true
        local Player = game:GetService("Players").LocalPlayer
        local Mouse = Player:GetMouse()
        Mouse.KeyDown:connect(function(k)
        if _G.infinjump then
        if k:byte() == 32 then
        Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        Humanoid:ChangeState("Jumping")
        wait(0.1)
        Humanoid:ChangeState("Seated")
        end
        end
        end)
        local Player = game:GetService("Players").LocalPlayer
        local Mouse = Player:GetMouse()
        Mouse.KeyDown:connect(function(k)
        k = k:lower()
    if k == "p" then
        if _G.infinjump == true then
            _G.infinjump = false
    else
        _G.infinjump = true
        end
        end
        end)
    end)
    b:Button("Silent Aim",function()
        getgenv().SelectedPart = "Head"
        getgenv().VisibiltyCheck = false
        getgenv().TargetESP = false
        getgenv().FOV = 250
        getgenv().CircleVisibility = true
        getgenv().Distance = 500
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yesok3877/Celestial-Silent-Aim/master/Auto-Input", true))()
    end)

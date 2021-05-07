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
        _G.chams = true
        local Players = game:GetService("Players")
        function CreateGui(name,parent,face)
            local SurfaceGui = Instance.new("SurfaceGui",parent)
            SurfaceGui.Parent = parent
            SurfaceGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            SurfaceGui.Face = Enum.NormalId[face]
            SurfaceGui.LightInfluence = 0
            SurfaceGui.ResetOnSpawn = false
            SurfaceGui.Name = name
            SurfaceGui.AlwaysOnTop = true
            local Frame = Instance.new("Frame",SurfaceGui)
            Frame.BackgroundColor3 = Color3.fromRGB(255,0,0)
            Frame.Size = UDim2.new(1,0,1,0)
        end
        while wait(1) do
            for i,v in pairs (Players:GetPlayers()) do
                if v ~= Players.LocalPlayer and v.Character ~= nil and v.Character:FindFirstChild("Head") and _G.chams and v.Character.Head:FindFirstChild("cham") == nil then
                    for i,v in pairs (v.Character:GetChildren()) do
                        if v:IsA("MeshPart") or v.Name == "Head" then
                            CreateGui("cham",v,"Back")
                            CreateGui("cham",v,"Front")
                            CreateGui("cham",v,"Top")
                            CreateGui("cham",v,"Bottom")
                            CreateGui("cham",v,"Right")
                            CreateGui("cham",v,"Left")
                        end
                    end
                    
                end
            end
        end
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
    b:Button("Silent Aim",function()
        getgenv().SelectedPart = "Head"
        getgenv().VisibiltyCheck = false
        getgenv().TargetESP = false
        getgenv().FOV = 250
        getgenv().CircleVisibility = true
        getgenv().Distance = 500
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yesok3877/Celestial-Silent-Aim/master/Auto-Input", true))()
    end)

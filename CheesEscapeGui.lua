local Humanoid = game.Players.LocalPlayer.Character.Humanoid
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/vozoid/ui-libraries/main/drawing/void/source.lua"))()

local watermark = library:Watermark("LKG | 60 fps | v4.20 | dev")

local main = library:Load{
    Name = "LKG",
    SizeX = 550,
    SizeY = 650,
    Theme = "Midnight",
    Extension = "json", -- config file extension
    Folder = "LKG" -- config folder name
}

local tab = main:Tab("Game")
local section = tab:Section{
    Name = "",
    Side = "Left"
}
section:Button{
    Name = "Mouse ESP",
    Callback  = function()
        local camera = workspace.CurrentCamera
local runservice = game:GetService("RunService")

function esp(Mouse) ---(Mouse would be them model so [itemesp])

    local Mouseesp = Drawing.new("Text")
    Mouseesp.Visible = false
    Mouseesp.Center = true
    Mouseesp.Outline = true
    Mouseesp.Font = 2
    Mouseesp.Color = Color3.fromRGB(255,255,255)
    Mouseesp.Size = 13

    local renderstepped
    renderstepped = runservice.RenderStepped:Connect(function()
        if Mouse and workspace:FindFirstChild(Mouse.Name) and Mouse:FindFirstChild("Mouse") then
            local Mouse_pos, Mouse_onscreen = camera:WorldToViewportPoint(Mouse.Mouse.Position)

            if Mouse_onscreen then
                Mouseesp.Position = Vector2.new(Mouse_pos.X, Mouse_pos.Y)
                Mouseesp.Text = "Mouse" --naem
                Mouseesp.Visible = true
            else 
                Mouseesp.Visible = false
            end
        else
            Mouseesp.Visible = false
            Mouseesp:Remove()
            renderstepped:Disconnect()
        end
    end)

end

for i,Mouse in next, workspace:GetChildren() do 
    if Mouse.Name == "Mouse" then -- This is Model
        if Mouse:FindFirstChild("Mouse") then --- part
            esp(Mouse)
        end
    end
end

workspace.ChildAdded:Connect(function(Mouse)
    if Mouse.Name == "Mouse" then -- This is Model
        if Mouse:FindFirstChild("Mouse") then --- part
            esp(Mouse)
        end
    end
end)
        print("Button clicked")
    end
}
section:Button{
    Name = "AutoGetCheeseAndExit",
    Callback  = function()
        local teleport_table = {
            chees1 = Vector3.new(-49.6900024, 15, -13.25, 1, 0, 0, 0, 1, 0, 0, 0, 1), -- your desired position
            chees2 = Vector3.new(-278.901978, 4.37002277, -15.0212517, 0, 0, -1, 0, 1, 0, 1, 0, 0),
            chees3 = Vector3.new(-276.741974, 48.9200211, -223.211243, 0, 0, 1, 0, 1, -0, -1, 0, 0),
            chees4 = Vector3.new(-146.201996, 4.47002268, -238.121262, -1, 0, 0, 0, 1, 0, 0, 0, -1),
            chees5 = Vector3.new(-255.141968, 48.9200211, -171.011246, 1, 0, 0, 0, 1, 0, 0, 0, 1),
            chees6 = Vector3.new(45.4980354, 24.7700233, -21.2212505, 0, 0, 1, 0, 1, -0, -1, 0, 0),
            chees7 = Vector3.new(-127.401978, 4.37002277, -162.521255, 0, 0, 1, 0, 1, -0, -1, 0, 0),
            chees8 = Vector3.new(-275.901978, 4.37002277, -141.021255, 1, 0, 0, 0, 1, 0, 0, 0, 1),
            chees9 = Vector3.new(77.0980225, 4.37002277, -452.52124, 0, 0, 1, 0, 1, -0, -1, 0, 0),-- your desired position
            chees10 = Vector3.new(-311.051636, 11.9432936, -125.103638, 1, 0, 0, 0, 1, 0, 0, 0, 1),
            chees11 = Vector3.new(1672.5, 83.0000305, -135, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        }
        
        local tween_s = game:GetService('TweenService')
        local tweeninfo = TweenInfo.new(0,Enum.EasingStyle.Linear)
        
        local lp = game.Players.LocalPlayer
        
        function bypass_teleport(v)
            if lp.Character and 
            lp.Character:FindFirstChild('HumanoidRootPart') then
                local cf = CFrame.new(v)
                local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
                a:Play()
                -- a.Completed:Wait()
                -- print('Teleporting Done!')
            end
        end
        
        bypass_teleport(teleport_table.chees1)
        local add = game:GetService("ReplicatedStorage").AddCheese:FireServer()
        wait(0.9)
        bypass_teleport(teleport_table.chees2)
        local add = game:GetService("ReplicatedStorage").AddCheese:FireServer()
        wait(0.9)
        bypass_teleport(teleport_table.chees3)
        local add = game:GetService("ReplicatedStorage").AddCheese:FireServer()
        wait(0.9)
        bypass_teleport(teleport_table.chees4)
        local add = game:GetService("ReplicatedStorage").AddCheese:FireServer()
        wait(0.9)
        bypass_teleport(teleport_table.chees5)
        local add = game:GetService("ReplicatedStorage").AddCheese:FireServer()
        wait(0.9)
        bypass_teleport(teleport_table.chees6)
        local add = game:GetService("ReplicatedStorage").AddCheese:FireServer()
        wait(0.9)
        bypass_teleport(teleport_table.chees7)
        local add = game:GetService("ReplicatedStorage").AddCheese:FireServer()
        wait(0.9)
        bypass_teleport(teleport_table.chees8)
        local add = game:GetService("ReplicatedStorage").AddCheese:FireServer()
        wait(0.9)
        bypass_teleport(teleport_table.chees9)
        local add = game:GetService("ReplicatedStorage").AddCheese:FireServer()
        
        wait(0.9)
        bypass_teleport(teleport_table.chees10)
        wait(1)
        bypass_teleport_(teleport_table.chees11)
        
        print("Button clicked")
    end
}
section:Button{
    Name = "BossRoomButton",
    Callback  = function()
        local teleport_table = {
            BossRoomButton = Vector3.new(-283.293671, 49.846035, -121.201416, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        }
        
        local tween_s = game:GetService('TweenService')
        local tweeninfo = TweenInfo.new(5,Enum.EasingStyle.Linear)
        
        local lp = game.Players.LocalPlayer
        
        function bypass_teleport(v)
            if lp.Character and 
            lp.Character:FindFirstChild('HumanoidRootPart') then
                local cf = CFrame.new(v)
                local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
                a:Play()
                -- a.Completed:Wait()
                -- print('Teleporting Done!')
            end
        end
        
        bypass_teleport(teleport_table.BossRoomButton)
        print("Button clicked")
    end
}
section:Button{
    Name = "ClosedDoor",
    Callback  = function()
        local teleport_table = {
            fog = Vector3.new(69.6999969, 9.56347084, -429.5, 1, 0, 0, 0, 1, 0, 0, 0, 1) -- your desired position  -- your desired position
        }
        
        local tween_s = game:GetService('TweenService')
        local tweeninfo = TweenInfo.new(0,Enum.EasingStyle.Linear)
        
        local lp = game.Players.LocalPlayer
        
        function bypass_teleport(v)
            if lp.Character and 
            lp.Character:FindFirstChild('HumanoidRootPart') then
                local cf = CFrame.new(v)
                local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
                a:Play()
                -- a.Completed:Wait()
                -- print('Teleporting Done!')
            end
        end
        
        bypass_teleport(teleport_table.fog)    
        print("Button clicked")
    end
}
section:Button{
    Name = "PlayerMaterial",
    Callback  = function()
        local lp = game.Players.LocalPlayer
local head = lp.Character.Head
local upperTorso = lp.Character.UpperTorso
local lowerTorso = lp.Character.LowerTorso
local rightUpperArm = lp.Character.RightUpperArm
local rightLowerArm = lp.Character.RightLowerArm
local rightHand = lp.Character.RightHand
local leftUpperArm = lp.Character.LeftUpperArm
local leftLowerArm = lp.Character.LeftLowerArm
local leftHand = lp.Character.LeftHand
local rightUpperLeg = lp.Character.RightUpperLeg
local rightLowerLeg = lp.Character.RightLowerLeg
local rightFoot = lp.Character.RightFoot
local leftUpperLeg = lp.Character.LeftUpperLeg
local leftLowerLeg = lp.Character.LeftLowerLeg
local leftFoot = lp.Character.LeftFoot

head.Material = "ForceField"
upperTorso.Material = "ForceField"
lowerTorso.Material = "ForceField"
rightUpperArm.Material = "ForceField"
rightLowerArm.Material = "ForceField"
rightHand.Material = "ForceField"
leftUpperArm.Material = "ForceField"
leftLowerArm.Material = "ForceField"
leftHand.Material = "ForceField"
rightUpperLeg.Material = "ForceField"
rightLowerLeg.Material = "ForceField"
rightFoot.Material = "ForceField"
leftUpperLeg.Material = "ForceField"
leftLowerLeg.Material = "ForceField"
leftFoot.Material = "ForceField"
        print("Button clicked")
    end
}
local toggle3 = section:Toggle{
    Name = "SpeedHack",
    Flag = "Toggle 3",
    --Default = true,
    Callback  = function(bool)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = bool
        print("Toggle 3 is now " .. (bool and "enabled" or "disabled"))
    end
}

toggle3:Slider{
    Text = "[value]/5",
    --Default = 5,
    Min = 0,
    Max = 250,
    Float = 0.5,
    Flag = "Slider 1",
    Callback = function(value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
        print("Toggle 3 Slider 1 is now " .. value)
    end
}
local toggle3 = section:Toggle{
    Name = "SuperJump",
    Flag = "Toggle 3",
    --Default = true,
    Callback  = function(bool)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = bool
        print("Toggle 3 is now " .. (bool and "enabled" or "disabled"))
    end
}

toggle3:Slider{
    Text = "[value]/5",
    --Default = 5,
    Min = 0,
    Max = 250,
    Float = 0.5,
    Flag = "Slider 1",
    Callback = function(value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
        print("Toggle 3 Slider 1 is now " .. value)
    end
}
section:Button{
    Name = "2-STUD-NOCLIP",
    Callback  = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 2
        print("Button clicked")
    end
}
Humanoid:Destroy()
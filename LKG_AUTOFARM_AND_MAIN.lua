pcall(function()
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local workspace = game.workspace
    local RunService = game:GetService("RunService")
    local UserInputService = game:GetService("UserInputService")
    --VAR
    
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    
    local Window = Library.CreateLib("Michal Zombies", "Ocean")
    
    local Tab = Window:NewTab("UI")
    local Section = Tab:NewSection("UI-Settings")
    Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.B, function()
        Library:ToggleUI()
    end)
    Section:NewLabel(game.Players.LocalPlayer.Name)
    Section:NewLabel(game.Players.LocalPlayer.DisplayName)
    Section:NewLabel(game.Players.LocalPlayer.UserId)
    Section:NewLabel(game.PlaceId)
    
    local Tab = Window:NewTab("gun")
    local Section = Tab:NewSection("Mods")
    
    Section:NewSlider("RPM", "FireRate", 850, -500, function(rpm) -- 500 (MaxValue) | 0 (MinValue)
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local Framework = ReplicatedStorage:WaitForChild("Framework")
    local Guns = Framework:WaitForChild("Guns")
    
    for _, folder in pairs(Guns:GetChildren()) do
        local Module = folder:FindFirstChild("Module")
        if Module then
            local Settings = Module:FindFirstChild("Settings")
            if Settings and Settings:IsA("ModuleScript") then
                local SettingsModule = require(Settings)
                SettingsModule.RPM = rpm
            end
        end
    end
    
    end)
    Section:NewSlider("Spread", "Spread", 5, 0, function(spr) -- 500 (MaxValue) | 0 (MinValue)
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local Framework = ReplicatedStorage:WaitForChild("Framework")
    local Guns = Framework:WaitForChild("Guns")
    
    for _, folder in pairs(Guns:GetChildren()) do
        local Module = folder:FindFirstChild("Module")
        if Module then
            local Settings = Module:FindFirstChild("Settings")
            if Settings and Settings:IsA("ModuleScript") then
                local SettingsModule = require(Settings)
              SettingsModule.SPREAD = {
              DEFAULT = spr, 
              MIN = spr, 
              MAX = spr, 
              CROUCH_REDUCTION = spr, 
              AIM_REDUCTION = spr, 
              WALK_ADDITION = spr
        }
            end
        end
    end
    
    end)
    Section:NewSlider("Speed[GunRed]", "SpeedHack-[gun]", 500, 0, function(wal) -- 500 (MaxValue) | 0 (MinValue)
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local Framework = ReplicatedStorage:WaitForChild("Framework")
    local Guns = Framework:WaitForChild("Guns")
    
    for _, folder in pairs(Guns:GetChildren()) do
        local Module = folder:FindFirstChild("Module")
        if Module then
            local Settings = Module:FindFirstChild("Settings")
            if Settings and Settings:IsA("ModuleScript") then
                local SettingsModule = require(Settings)
                SettingsModule.WALKSPEED = {
                DEFAULT = wal, 
                CROUCH_REDUCTION = 0, 
                AIM_REDUCTION = 0, 
                SPRINT_ADDITION = 0
        }
            end
        end
    end
    
    end)
    Section:NewButton("Recoil", "ButtonInfo", function()
        for _, folder in pairs(Guns:GetChildren()) do
        local Module = folder:FindFirstChild("Module")
        if Module then
            local Settings = Module:FindFirstChild("Settings")
            if Settings and Settings:IsA("ModuleScript") then
                local SettingsModule = require(Settings)
                SettingsModule.CAMERA_RECOIL = {
            IDLE = function()
                return Vector3.new(0,0,0)
            end, 
            CROUCH = function()
                return Vector3.new(0,0,0)
            end, 
            AIM = function()
                return Vector3.new(0,0,0)
            end
        }
            end
        end
    end
    
        print("Clicked")
    end)
    
    
    
    local Tab = Window:NewTab("Misc")
    local Section = Tab:NewSection("Misc")
    Section:NewButton("PowerBox", "ButtonInfo", function()
        local teleport_table = {
        location1 = Vector3.new(-699.888062, 135.366364, 587.852112, 0, 0, 1, 0, 1, -0, -1, 0, 0), -- your desired position
    }
    local tween_s = game:GetService('TweenService')
    local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)
    
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
    
    bypass_teleport(teleport_table.location1)
    
        print("Clicked")
    end)
    
    Section:NewButton("Juggernog Machine", "Teleport", function()
            local teleport_table = {
        location2 = Vector3.new(-724.795898, 140.540207, 576.112305, -1.00000024, 0, 0, 0, 0.983506799, 0.180871129, 0, 0.180871129, -0.983507156)  -- your desired position
    }
    local tween_s = game:GetService('TweenService')
    local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)
    
    local lp = game.Players.LocalPlayer
    
    function bypass_teleport(h)
        if lp.Character and 
        lp.Character:FindFirstChild('HumanoidRootPart') then
            local cf = CFrame.new(h)
            local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
            a:Play()
            -- a.Completed:Wait()
            -- print('Teleporting Done!')
        end
    end
    
    bypass_teleport(teleport_table.location2)
    
        print("hi")
    end)
    
    Section:NewButton("Mule Kick Machine", "Teleport", function()
            local teleport_table = {
        location3 = Vector3.new(-797.321838, 142.647736, 756.60083, 0, 0, 1, 0, 1, -0, -1, 0, 0)  -- your desired position
    }
    local tween_s = game:GetService('TweenService')
    local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)
    
    local lp = game.Players.LocalPlayer
    
    function bypass_teleport(h)
        if lp.Character and 
        lp.Character:FindFirstChild('HumanoidRootPart') then
            local cf = CFrame.new(h)
            local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
            a:Play()
            -- a.Completed:Wait()
            -- print('Teleporting Done!')
        end
    end
    
    bypass_teleport(teleport_table.location3)
    
        print("hi")
    end)
    
    Section:NewButton("Speed Cola Machine", "Teleport", function()
            local teleport_table = {
        location4 = Vector3.new(-772.6297, 135.962097, 661.258301, -1.00000024, 0, 0, 0, 0.983506799, 0.180871129, 0, 0.180871129, -0.983507156)  -- your desired position
    }
    local tween_s = game:GetService('TweenService')
    local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)
    
    local lp = game.Players.LocalPlayer
    
    function bypass_teleport(h)
        if lp.Character and 
        lp.Character:FindFirstChild('HumanoidRootPart') then
            local cf = CFrame.new(h)
            local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
            a:Play()
            -- a.Completed:Wait()
            -- print('Teleporting Done!')
        end
    end
    
    bypass_teleport(teleport_table.location4)
    
        print("hi")
    end)
    
    Section:NewButton("Double Tap Machine", "Teleport", function()
            local teleport_table = {
        location5 = Vector3.new(-751.598633, 143.170105, 661.160034, 0, 0, 1, 0, 1, -0, -1, 0, 0)  -- your desired position
    }
    local tween_s = game:GetService('TweenService')
    local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)
    
    local lp = game.Players.LocalPlayer
    
    function bypass_teleport(h)
        if lp.Character and 
        lp.Character:FindFirstChild('HumanoidRootPart') then
            local cf = CFrame.new(h)
            local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
            a:Play()
            -- a.Completed:Wait()
            -- print('Teleporting Done!')
        end
    end
    
    bypass_teleport(teleport_table.location5)
    
        print("hi")
    end)
    
    Section:NewButton("Quick Revive Machine", "Teleport", function()
            local teleport_table = {
        location6 = Vector3.new(-677.921814, 145.347153, 677.240417, 1, 0, 0, 0, 0, 1, 0, -1, 0)  -- your desired position
    }
    local tween_s = game:GetService('TweenService')
    local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)
    
    local lp = game.Players.LocalPlayer
    
    function bypass_teleport(h)
        if lp.Character and 
        lp.Character:FindFirstChild('HumanoidRootPart') then
            local cf = CFrame.new(h)
            local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
            a:Play()
            -- a.Completed:Wait()
            -- print('Teleporting Done!')
        end
    end
    
    bypass_teleport(teleport_table.location6)
    
        print("hi")
    end)
    
    Section:NewLabel("Location")
    Section:NewButton("Pack A Punch Machine", "Teleport", function()
            local teleport_table = {
        fog1 = Vector3.new(-878.841858, 137.85553, 637.988525, 0, 0, 1, 0, 1, -0, -1, 0, 0)  -- your desired position
    }
    local tween_s = game:GetService('TweenService')
    local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)
    
    local lp = game.Players.LocalPlayer
    
    function bypass_teleport(h)
        if lp.Character and 
        lp.Character:FindFirstChild('HumanoidRootPart') then
            local cf = CFrame.new(h)
            local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
            a:Play()
            -- a.Completed:Wait()
            -- print('Teleporting Done!')
        end
    end
    
    bypass_teleport(teleport_table.fog1)
    end)
    Section:NewButton("PAD-A", "ButtonInfo", function()
        local teleport_table = {
            ATele = Vector3.new(-930.140259, 144.873138, 532.540283, 0, 0, -1, 1, 0, 0, 0, -1, 0) -- your desired position
        }
        
        local tween_s = game:GetService('TweenService')
        local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)
        
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
        
        bypass_teleport(teleport_table.ATele)
        print("Clicked")
    end)
    Section:NewButton("PAD-B", "ButtonInfo", function()
        local teleport_table = {
            BTele = Vector3.new(-752.322937, 147.597076, 770.314758, 0, 0, -1, 1, 0, 0, 0, -1, 0)
        }
        
        local tween_s = game:GetService('TweenService')
        local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)
        
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
        
        bypass_teleport(teleport_table.BTele)
        print("Clicked")
    end)
    Section:NewButton("PAD-C", "ButtonInfo", function()
        local teleport_table = {
            CTele = Vector3.new(-592.206604, 145.14444, 608.65741, 0, 0, -1, 1, 0, 0, 0, -1, 0)
        }
        
        local tween_s = game:GetService('TweenService')
        local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)
        
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
        
        bypass_teleport(teleport_table.CTele)
        print("Clicked")
    end)
    Section:NewButton("Spawn", "ButtonInfo", function()
    local teleport_table = {
    spawn = Vector3.new(-856.485229, 134.014069, 638.223145, 1, 0, 0, 0, 1, 0, 0, 0, 1) -- your desired position  -- your desired position
}

local tween_s = game:GetService('TweenService')
local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)

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

bypass_teleport(teleport_table.spawn)
    print("Clicked")
end)
Section:NewKeybind("ZOM-ESP-BIND", "KeybindInfo", Enum.KeyCode.V, function()
    -- Get the Zombies folder
local zombiesFolder = Workspace.Ignore.Zombies

-- Get all the descendants in the Zombies folder
local zombiesDescendants = zombiesFolder:GetDescendants()

-- Define an array to store the models that should be highlighted
local highlightedModels = {BaldZombie, HatZombie, HelmZombie, SnowmanZombie, Hellhound}

-- Loop through all the descendants in the Zombies folder
for i, descendant in pairs(zombiesDescendants) do
	-- Check if the descendant is a Model
	if descendant:IsA("Model") then
		-- Check if a Highlight object is already present in the model
		local highlight = descendant:FindFirstChild("Highlight")
		if not highlight then
			-- Use Instance.new to create a new Highlight object
			highlight = Instance.new("Highlight")
			highlight.Name = "Highlight"
			highlight.Parent = descendant
		end
		highlight.Enabled = true
		highlight.FillColor = Color3.fromRGB(255, 255, 255)
	end
end

-- Connect a function to the PlayerAdded event
game.Players.PlayerAdded:Connect(function(player)
	-- Loop through all the descendants in the Zombies folder
	for i, descendant in pairs(zombiesDescendants) do
		-- Check if the descendant is a Model
		if descendant:IsA("Model") then
			-- Check if a Highlight object is already present in the model
			local highlight = descendant:FindFirstChild("Highlight")
			if not highlight then
				-- Use Instance.new to create a new Highlight object
				highlight = Instance.new("Highlight")
				highlight.Name = "Highlight"
				highlight.Parent = descendant
			end
			highlight.Enabled = true
			highlight.FillColor = Color3.fromRGB(1, 0, 0)
		end
	end

	-- Function to add a model to the highlightedModels table
	local function addHighlightedModel(name)
		for i, descendant in pairs(zombiesDescendants) do
			if descendant:IsA("Model") and descendant.Name == name then
				table.insert(highlightedModels, descendant)
				descendant.Highlight.Enabled = true
			end
		end
	end

	-- Function to remove a model from the highlightedModels table
	local function removeHighlightedModel(name)
		for i, model in pairs(highlightedModels) do
			if model.Name == name then
				model.Highlight.Enabled = false
				table.remove(highlightedModels, i)
				break
			end
		end
	end
	end)

	-- Example usage: addHighlightedModel("BaldZombie")
	-- Example usage: removeHighlightedModel("BaldZombie")

	-- Check if the model is visible every 0.1
end)
    print("yes")
end)
local Tab = Window:NewTab("AutoFarm")
local Section = Tab:NewSection("AutoFarm")

Section:NewKeybind("AutoFarm", "KeybindInfo", Enum.KeyCode.F, function()
	while true do
wait()

local v = game.Players.LocalPlayer.Character.CharStats.Crouching
local m = (v)
m.Value = true

local args = {
[1] = game.Workspace.Ignore.Zombies:GetDescendants()
}

for i, descendant in pairs(args[1]) do
if descendant:IsA("Model") then
local humanoid = descendant:FindFirstChildWhichIsA("Humanoid")
if humanoid then
args[i] = humanoid
end
end
end

game:GetService("ReplicatedStorage").Framework.Remotes.KnifeHitbox:FireServer(unpack(args))

    -- Define the model path
local modelPath = workspace.Ignore.Zombies

-- Get the local player
local player = game.Players.LocalPlayer

-- Define a function to teleport the player to a model
local function teleportToModel(model)
    player.Character.HumanoidRootPart.CFrame = model:GetPrimaryPartCFrame() + Vector3.new(0, 5, 0)
end

-- Loop until the model is no longer in the folder
while true do
    local models = modelPath:GetChildren()
    local foundModel = false
    for i, model in pairs(models) do
        if model:IsA("Model") then
            teleportToModel(model)
            foundModel = true
            break
        end
    end
    if not foundModel then
        break
    end
    wait()
end
end
end)



end)--- PcallFunction

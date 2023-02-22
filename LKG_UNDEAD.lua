    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

    local Window = Library.CreateLib("UnDead", "DarkTheme")

    local Tab = Window:NewTab("Misc")
    local Section = Tab:NewSection("Misc")

    Section:NewKeybind("UI", "", Enum.KeyCode.Insert, function()
        Library:ToggleUI()
    end)

    Section:NewButton("PartESP", "ESP-Parts", function()
        -- Get the Zombies folder
local zombiesFolder = game:GetService("Workspace")["_Parts"]

-- Get all the descendants in the Zombies folder
local zombiesDescendants = zombiesFolder:GetDescendants()

-- Define an array to store the models that should be highlighted
local highlightedModels = {BaldZombie, HatZombie, HelmZombie, SnowmanZombie, Hellhound}

-- Loop through all the descendants in the Zombies folder
for i, descendant in pairs(zombiesDescendants) do
	-- Check if the descendant is a Model
	if descendant:IsA("Model") then
		-- Use Instance.new to create a new Highlight object
		local highlight = Instance.new("Highlight")
		highlight.Parent = descendant
		highlight.Enabled = true
		highlight.FillColor = Color3.fromRGB(0, 255, 0)
	end
end

-- Connect a function to the PlayerAdded event
game.Players.PlayerAdded:Connect(function(player)
	-- Highlight all the models in the Zombies folder for the new player
	for i, descendant in pairs(zombiesDescendants) do
		if descendant:IsA("Model") then
			local highlight = Instance.new("Highlight")
			highlight.Parent = descendant
			highlight.Enabled = true
			highlight.FillColor = Color3.fromRGB(0, 255, 0)
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

	-- Example usage: addHighlightedModel("BaldZombie")
	-- Example usage: removeHighlightedModel("BaldZombie")
end)

        print("Part")
    end)
    Section:NewLabel("Teleports-Perks")

    Section:NewButton("Jug", "", function()
        local teleport_table = {
            Jug = Vector3.new(-334.173553, 227.672943, 539.046326, 0, 0, -1, 0, 1, 0, 1, 0, 0)  -- your desired position
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
        
        bypass_teleport(teleport_table.Jug)
        print("Clicked")
    end)
    Section:NewButton("DoubleTap", "", function()
        local teleport_table = {
            Double = Vector3.new(-315.011505, 216.182343, 566.381592, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)  -- your desired position
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
        
        bypass_teleport(teleport_table.Double)
        print("Clicked")
    end)
    Section:NewButton("Speed-Cola", "", function()
        ---Speed
    local teleport_table = {
        Speed = Vector3.new(-401.599579, 205.048462, 539.317688, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)  -- your desired position
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

    bypass_teleport(teleport_table.Speed)
        print("Clicked")
    end)
    Section:NewButton("Mule-Kick", "", function()
        ---mule
    local teleport_table = {
        Mule = Vector3.new(-373.362885, 226.611206, 645.723633, -0.642763734, -0, -0.766064942, 0, -1.00000048, 0, -0.766064942, 0, 0.642763317)  -- your desired position
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

    bypass_teleport(teleport_table.Mule)

        print("Clicked")
    end)
    Section:NewButton("Quick-Revie", "", function()
        local teleport_table = {
            Quick = Vector3.new(-401.379791, 204.395966, 655.641479, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664)  -- your desired position
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
        
        bypass_teleport(teleport_table.Quick)
        print("Clicked")
    end)

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
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Framework = ReplicatedStorage:WaitForChild("Framework")
        local Guns = Framework:WaitForChild("Guns")
        
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
    
        local Tab = Window:NewTab("Spoof")
    local Section = Tab:NewSection("Mike Spoof")


    local weapon1 = game.Players.LocalPlayer.Character.CharStats.GunInventory.Gun1
    local weapon2 = game.Players.LocalPlayer.Character.CharStats.GunInventory.Gun2
    local knife = game.Players.LocalPlayer.Character.CharStats.Knife

    Section:NewTextBox("gun1", "SpoofGuns", function(txt)
        weapon1.Value = txt
	print(txt)
end)
    Section:NewTextBox("gun2", "Spoof", function(txt)
        weapon2.Value = txt
	print(txt)
end)
    Section:NewTextBox("Knifes Oar, Bowie", "SpoofGuns", function(txt)
        knife.Value = txt
    end)

    Section:NewLabel("Perks")
    Section:NewButton("QuickRevive", "ButtonInfo", function()
        local Quick = Instance.new("StringValue")
        Quick.Name = "QuickRevive"
        Quick.Parent = game.Players.LocalPlayer.Character.CharStats.Perks
        print("Clicked")
    end)
    Section:NewButton("DobuleTap", "ButtonInfo", function()
        local Double = Instance.new("StringValue")
        Double.Name = "DoubleTap"
        Double.Parent = game.Players.LocalPlayer.Character.CharStats.Perks
        print("Clicked")
    end)
    Section:NewButton("Juggrnog", "ButtonInfo", function()
        local Juggernog = Instance.new("StringValue")
        Juggernog.Name = "Juggernog"
        Juggernog.Parent = game.Players.LocalPlayer.Character.CharStats.Perks
        print("Clicked")
    end)
    Section:NewButton("SpeedCola", "ButtonInfo", function()
        local SpeedCola = Instance.new("StringValue")
        SpeedCola.Name = "SpeedCola"
        SpeedCola.Parent = game.Players.LocalPlayer.Character.CharStats.Perks
        print("Clicked")
    end)
    Section:NewButton("MuleKick", "ButtonInfo", function()
        local MuleKick = Instance.new("StringValue")
        MuleKick.Name = "MuleKick"
        MuleKick.Parent = game.Players.LocalPlayer.Character.CharStats.Perks
        print("Clicked")
    end)
    
local Tab = Window:NewTab("Visual")
local Section = Tab:NewSection("Visual")

Section:NewKeybind("ZombieESP", "", Enum.KeyCode.Z, function()
        -- Get the Zombies folder
local zombiesFolder = game:GetService("Workspace").Ignore.Zombies

-- Get all the descendants in the Zombies folder
local zombiesDescendants = zombiesFolder:GetDescendants()

-- Define an array to store the models that should be highlighted
local highlightedModels = {BaldZombie, HatZombie, HelmZombie, SnowmanZombie, Hellhound}

-- Loop through all the descendants in the Zombies folder
for i, descendant in pairs(zombiesDescendants) do
	-- Check if the descendant is a Model
	if descendant:IsA("Model") then
		-- Use Instance.new to create a new Highlight object
		local highlight = Instance.new("Highlight")
		highlight.Parent = descendant
		highlight.Enabled = true
		highlight.FillColor = Color3.fromRGB(0, 255, 0)
	end
end

-- Connect a function to the PlayerAdded event
game.Players.PlayerAdded:Connect(function(player)
	-- Highlight all the models in the Zombies folder for the new player
	for i, descendant in pairs(zombiesDescendants) do
		if descendant:IsA("Model") then
			local highlight = Instance.new("Highlight")
			highlight.Parent = descendant
			highlight.Enabled = true
			highlight.FillColor = Color3.fromRGB(0, 255, 0)
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

	-- Example usage: addHighlightedModel("BaldZombie")
	-- Example usage: removeHighlightedModel("BaldZombie")
end)

        print("You just clicked the bind")
    end)
    

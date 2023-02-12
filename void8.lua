local Humanoid = game.Players.LocalPlayer.Character.Humanoid
local cam = workspace.CurrentCamera
local Aimbot = loadstring(game:HttpGet("https://pastebin.com/raw/ygp8Enye"))()
local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/vozoid/ui-libraries/main/drawing/void/source.lua"))()

local watermark = library:Watermark("LKG | 60 fps | v4.20 | dev")

local main = library:Load{
    Name = "LKG",
    SizeX = 600,
    SizeY = 650,
    Theme = "Midnight",
    Extension = "json", -- config file extension
    Folder = "LKG" -- config folder name
}

local tab = main:Tab("Player")
local section = tab:Section{
    Name = "Player",
    Side = "Left"
}
local slider = section:Slider{
    Name = "WalkkSpeed",
    Text = "[value]/1",
    --Default = 0.1,
    Min = 16,
    Max = 250,
    Float = 0.1,
    Flag = "Slider 1",
    Callback = function(value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
        print("Slider 1 is now " .. value)
    end
}
local slider = section:Slider{
    Name = "JumpPower",
    Text = "[value]/1",
    --Default = 0.1,
    Min = 0,
    Max = 250,
    Float = 0.1,
    Flag = "Slider 1",
    Callback = function(value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
        print("Slider 1 is now " .. value)
    end
}
local slider = section:Slider{
    Name = "HipHeight",
    Text = "[value]/1",
    --Default = 0.1,
    Min = 0,
    Max = 150,
    Float = 0.1,
    Flag = "Slider 1",
    Callback = function(value)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = value
        print("Slider 1 is now " .. value)
    end
}
local tab = main:Tab("Visuals")
local section = tab:Section{
    Name = "Visual",
    Side = "Left"
}
local toggle = section:Toggle{
    Name = "ESP",
    Flag = "Toggle 1",
    --Default = true,
    Callback  = function(bool)
        ESP.Players = bool
        print("Toggle 1 is now " .. (bool and "enabled" or "disabled"))
    end
}
local toggle = section:Toggle{
    Name = "Box",
    Flag = "Toggle 1",
    --Default = true,
    Callback  = function(bool)
        ESP.Boxes = bool
        print("Toggle 1 is now " .. (bool and "enabled" or "disabled"))
    end
}
local toggle2 = section:Toggle{
    Name = "ESP-Toggle",
    Flag = "Toggle 2",
    --Default = true,
    Callback  = function(bool)
        ESP:Toggle(bool)
        print("Toggle 2 is now " .. (bool and "enabled" or "disabled"))
    end
}
toggle2:Keybind{
    --Default = Enum.KeyCode.A,
    Blacklist = {Enum.UserInputType.MouseButton1},
    Flag = "Toggle 2 Keybind 1",
    Mode = "Toggle", -- mode to nil if u dont want it to toggle the toggle
    Callback = function(key, fromsetting)
        if fromsetting then
            print("Toggle 2 Keybind 1 is now " .. tostring(key))
        else
            print("Toggle 2 Keybind 1 was pressed")
        end
    end
}

local toggle = section:Toggle{
    Name = "Name",
    Flag = "Toggle 1",
    --Default = true,
    Callback  = function(bool)
        ESP.Names = bool
        print("Toggle 1 is now " .. (bool and "enabled" or "disabled"))
    end
}
local toggle = section:Toggle{
    Name = "Team",
    Flag = "Toggle 1",
    --Default = true,
    Callback  = function(bool)
        ESP.TeamMates = bool
        print("Toggle 1 is now " .. (bool and "enabled" or "disabled"))
    end
}
local colorpicker = section:ColorPicker{
    Name = "Color picker",
    Default = Color3.fromRGB(0, 255, 0),
    Flag = "Color picker 1",
    Callback = function(color)
        ESP.Color = (color)
        print("Color picker 1 is now: " .. string.format("%s, %s, %s, %s", math.round(color.R * 255), math.round(color.G * 255), math.round(color.B * 255), math.floor(color.A * 100) / 100))
    end
}
local toggle = section:Toggle{
    Name = "look angle",
    Flag = "Toggle 1",
    --Default = true,
    Callback  = function(bool)
        local camera = workspace.CurrentCamera
local plrs = game:GetService("Players")
local lplr = plrs.LocalPlayer

local function drawshit(player)
    
    local lookangle = Drawing.new("Line")
    lookangle.Visible = false
    lookangle.Thickness = 0.5
    lookangle.Color = Color3.new(0,0,0)

    local function updater()
        local c
        c = game:GetService("RunService").RenderStepped:Connect(function()
            if player and player.Character and player.Character:FindFirstChild("Head") and player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health > 0 then

                for idx = 10, 1, -1 do

                    local rayhit, hitpos = workspace:FindPartOnRayWithIgnoreList(Ray.new(player.Character.Head.Position, player.Character.Head.CFrame.LookVector * idx), {camera, player.Character}, false, true, "")

                    local viewportpointhit, isOnScreen = camera:WorldToViewportPoint(hitpos)
                    local headpos = camera:WorldToViewportPoint(player.Character.Head.Position)

                    if isOnScreen then

                        lookangle.From = Vector2.new(headpos.X, headpos.Y)
                        lookangle.To = Vector2.new(viewportpointhit.X, viewportpointhit.Y)
                        lookangle.Visible = bool
                        break

                    else

                        lookangle.Visible = false

                    end

                end
            else

                if player.Character == nil then
                    c:Disconnect()
                end

                lookangle.Visible = false

            end
        end)
    end
    coroutine.wrap(updater)()
end

for i,v in next, plrs:GetPlayers() do
    if v ~= lplr then
        coroutine.wrap(drawshit)(v)
    end
end

plrs.PlayerAdded:Connect(function(v)
    coroutine.wrap(drawshit)(v)
end)
    end
}
local tab = main:Tab("Misc")

local section = tab:Section{
    Name = "Misc",
    Side = "Left"
}
section:Button{
    Name = "semi-no-recoil-dont-use-barley-works",
    Callback  = function()
        c = hookfunction(getrenv().math.random, newcclosure(function(a, b, ...)
    if a and b then
        b = a
    else
        return 0
    end
    return c(a, b, ...)
end))
        print("Button clicked")
    end
}


local tab = main:Tab("Aimbot")

local section = tab:Section{
    Name = "Aimbot",
    Side = "Left"
}

local toggle5 = section:Toggle{
    Name = "Aimbot Toggle",
    Flag = "Toggle 1",
    --Default = true,
    Callback  = function(bool)
        _G.AimbotEnabled = bool
        print("Toggle 1 is now " .. (bool and "enabled" or "disabled"))
    end
}
local toggle5 = section:Toggle{
    Name = "Aimbot TeamCheck",
    Flag = "Toggle 1",
    --Default = true,
    Callback  = function(bool)
        _G.TeamCheck = bool
        print("Toggle 1 is now " .. (bool and "enabled" or "disabled"))
    end
}
local toggle5 = section:Toggle{
    Name = "FOV visbile",
    Flag = "Toggle 1",
    --Default = true,
    Callback  = function(bool)
        _G.CircleVisible = bool
        print("Toggle 1 is now " .. (bool and "enabled" or "disabled"))
    end
}
local slider = section:Slider{
    Name = "FOV-Radius",
    Text = "[value]/1",
    --Default = 0.1,
    Min = 0,
    Max = 250,
    Float = 0.1,
    Flag = "Slider 1",
    Callback = function(value)
        _G.CircleRadius = value
        print("Slider 1 is now " .. value)
    end
}
local slider = section:Slider{
    Name = "Aimbot-Sensitivity",
    Text = "[value]/1",
    --Default = 0.1,
    Min = 0,
    Max = 0,
    Float = 0.1,
    Flag = "Slider 1",
    Callback = function(value)
        _G.Sensitivity = value
        print("Slider 1 is now " .. value)
    end
}
local configs = main:Tab("UI")

local themes = configs:Section{Name = "Theme", Side = "Left"}

local themepickers = {}

local themelist = themes:Dropdown{
    Name = "Theme",
    Default = library.currenttheme,
    Content = library:GetThemes(),
    Flag = "Theme Dropdown",
    Callback = function(option)
        if option then
            library:SetTheme(option)

            for option, picker in next, themepickers do
                picker:Set(library.theme[option])
            end
        end
    end
}

library:ConfigIgnore("Theme Dropdown")

local namebox = themes:Box{
    Name = "Custom Theme Name",
    Placeholder = "Custom Theme",
    Flag = "Custom Theme"
}

library:ConfigIgnore("Custom Theme")

themes:Button{
    Name = "Save Custom Theme",
    Callback = function()
        if library:SaveCustomTheme(library.flags["Custom Theme"]) then
            themelist:Refresh(library:GetThemes())
            themelist:Set(library.flags["Custom Theme"])
            namebox:Set("")
        end
    end
}

local customtheme = configs:Section{Name = "Custom Theme", Side = "Right"}

themepickers["Accent"] = customtheme:ColorPicker{
    Name = "Accent",
    Default = library.theme["Accent"],
    Flag = "Accent",
    Callback = function(color)
        library:ChangeThemeOption("Accent", color)
    end
}

library:ConfigIgnore("Accent")

themepickers["Window Background"] = customtheme:ColorPicker{
    Name = "Window Background",
    Default = library.theme["Window Background"],
    Flag = "Window Background",
    Callback = function(color)
        library:ChangeThemeOption("Window Background", color)
    end
}

library:ConfigIgnore("Window Background")

themepickers["Window Border"] = customtheme:ColorPicker{
    Name = "Window Border",
    Default = library.theme["Window Border"],
    Flag = "Window Border",
    Callback = function(color)
        library:ChangeThemeOption("Window Border", color)
    end
}

library:ConfigIgnore("Window Border")

themepickers["Tab Background"] = customtheme:ColorPicker{
    Name = "Tab Background",
    Default = library.theme["Tab Background"],
    Flag = "Tab Background",
    Callback = function(color)
        library:ChangeThemeOption("Tab Background", color)
    end
}

library:ConfigIgnore("Tab Background")

themepickers["Tab Border"] = customtheme:ColorPicker{
    Name = "Tab Border",
    Default = library.theme["Tab Border"],
    Flag = "Tab Border",
    Callback = function(color)
        library:ChangeThemeOption("Tab Border", color)
    end
}

library:ConfigIgnore("Tab Border")

themepickers["Tab Toggle Background"] = customtheme:ColorPicker{
    Name = "Tab Toggle Background",
    Default = library.theme["Tab Toggle Background"],
    Flag = "Tab Toggle Background",
    Callback = function(color)
        library:ChangeThemeOption("Tab Toggle Background", color)
    end
}

library:ConfigIgnore("Tab Toggle Background")

themepickers["Section Background"] = customtheme:ColorPicker{
    Name = "Section Background",
    Default = library.theme["Section Background"],
    Flag = "Section Background",
    Callback = function(color)
        library:ChangeThemeOption("Section Background", color)
    end
}

library:ConfigIgnore("Section Background")

themepickers["Section Border"] = customtheme:ColorPicker{
    Name = "Section Border",
    Default = library.theme["Section Border"],
    Flag = "Section Border",
    Callback = function(color)
        library:ChangeThemeOption("Section Border", color)
    end
}

library:ConfigIgnore("Section Border")

themepickers["Text"] = customtheme:ColorPicker{
    Name = "Text",
    Default = library.theme["Text"],
    Flag = "Text",
    Callback = function(color)
        library:ChangeThemeOption("Text", color)
    end
}

library:ConfigIgnore("Text")

themepickers["Disabled Text"] = customtheme:ColorPicker{
    Name = "Disabled Text",
    Default = library.theme["Disabled Text"],
    Flag = "Disabled Text",
    Callback = function(color)
        library:ChangeThemeOption("Disabled Text", color)
    end
}

library:ConfigIgnore("Disabled Text")

themepickers["Object Background"] = customtheme:ColorPicker{
    Name = "Object Background",
    Default = library.theme["Object Background"],
    Flag = "Object Background",
    Callback = function(color)
        library:ChangeThemeOption("Object Background", color)
    end
}

library:ConfigIgnore("Object Background")

themepickers["Object Border"] = customtheme:ColorPicker{
    Name = "Object Border",
    Default = library.theme["Object Border"],
    Flag = "Object Border",
    Callback = function(color)
        library:ChangeThemeOption("Object Border", color)
    end
}

library:ConfigIgnore("Object Border")

themepickers["Dropdown Option Background"] = customtheme:ColorPicker{
    Name = "Dropdown Option Background",
    Default = library.theme["Dropdown Option Background"],
    Flag = "Dropdown Option Background",
    Callback = function(color)
        library:ChangeThemeOption("Dropdown Option Background", color)
    end
}

library:ConfigIgnore("Dropdown Option Background")

local configsection = configs:Section{Name = "Configs", Side = "Left"}

local configlist = configsection:Dropdown{
    Name = "Configs",
    Content = library:GetConfigs(), -- GetConfigs(true) if you want universal configs
    Flag = "Config Dropdown"
}

library:ConfigIgnore("Config Dropdown")

local loadconfig = configsection:Button{
    Name = "Load Config",
    Callback = function()
        library:LoadConfig(library.flags["Config Dropdown"]) -- LoadConfig(library.flags["Config Dropdown"], true)  if you want universal configs
    end
}

local delconfig = configsection:Button{
    Name = "Delete Config",
    Callback = function()
        library:DeleteConfig(library.flags["Config Dropdown"]) -- DeleteConfig(library.flags["Config Dropdown"], true)  if you want universal configs
        configlist:Refresh(library:GetConfigs())
    end
}


local configbox = configsection:Box{
    Name = "Config Name",
    Placeholder = "Config Name",
    Flag = "Config Name"
}

library:ConfigIgnore("Config Name")

local save = configsection:Button{
    Name = "Save Config",
    Callback = function()
        library:SaveConfig(library.flags["Config Dropdown"] or library.flags["Config Name"]) -- SaveConfig(library.flags["Config Name"], true) if you want universal configs
        configlist:Refresh(library:GetConfigs())
    end
}

local keybindsection = configs:Section{Name = "UI Toggle Keybind", Side = "Left"}

keybindsection:Keybind{
    Name = "UI Toggle",
    Flag = "UI Toggle",
    Default = Enum.KeyCode.RightShift,
    Blacklist = {Enum.UserInputType.MouseButton1, Enum.UserInputType.MouseButton2, Enum.UserInputType.MouseButton3},
    Callback = function(_, fromsetting)
        if not fromsetting then
            library:Close()
        end
    end
}


local tab = main:Tab("Welcome")

local section = tab:Section{
    Name = "Welcome",
    Side = "Left"
}
section:Button{
    Name = "ClickForName",
    Callback  = function()
        local label = section:Label(game.Players.LocalPlayer.Name)
        print("Button clicked")
    end
}
section:Button{
    Name = "ClickForDisplayName",
    Callback  = function()
        local label = section:Label(game.Players.LocalPlayer.DisplayName)
        print("Button clicked")
    end
}
section:Button{
    Name = "ClickForPlayersNames",
    Callback  = function()
        for i, player in pairs(game.Players:GetPlayers()) do
        local label = section:Label(player.Name)
        setclipboard(player.Name)
        print("Button clicked")
        end
end
}
-- library.Extension = "txt" (config file extension)
-- library.Folder = "config folder name"

local Players = game:GetService("Players")
local mouse = Players.LocalPlayer:GetMouse()
local originalCameraSubject = workspace.CurrentCamera.CameraSubject
local camera = workspace.CurrentCamera
local localPlayer = Players.LocalPlayer

local function findPlayerByName(name)
	for _, player in pairs(Players:GetPlayers()) do
		if player.Name == name then
			return player
		end
	end
	return nil
end

local tab = main:Tab("Spectate")
local section = tab:Section{
    Name = "Section",
    Side = "Left"
}
local playerNames = {}
for _, player in pairs(Players:GetPlayers()) do
	table.insert(playerNames, player.Name)
end
local dropdown = section:Dropdown{
    Name = "Player Selector",
    Content = playerNames,
    Flag = "Player Selection",
    Callback = function(selectedPlayerName)
		local selectedPlayer = findPlayerByName(selectedPlayerName)
		if selectedPlayer and selectedPlayer.Character and selectedPlayer.Character:FindFirstChild("Humanoid") then
			workspace.CurrentCamera.CameraSubject = selectedPlayer.Character.Humanoid
			print("Success: Camera view changed to player " .. selectedPlayerName)
		else
			print("Failure: Player not found or no humanoid character")
		end
    end
}


local tab = main:Tab("Teleport")

local section = tab:Section{
Name = "Section",
Side = "Right"
}

local playerList = game.Players:GetPlayers()
local playerNames = {}
for i, player in pairs(playerList) do
table.insert(playerNames, player.Name)
end

local dropdown = section:Dropdown{
Name = "Player Dropdown",
Content = playerNames,
Flag = "Player Dropdown",
Callback = function(option)
local selectedPlayer = game.Players:FindFirstChild(option)
local localPlayer = game.Players.LocalPlayer
local playerCharacter = localPlayer.Character or localPlayer.CharacterAdded:Wait()
local rootPart = playerCharacter:FindFirstChild("HumanoidRootPart")
rootPart.CFrame = selectedPlayer.Character.HumanoidRootPart.CFrame
end
}

--library:Close()
--library:Unload()
Humanoid:Destroy()

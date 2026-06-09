--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 14 | Scripts: 4 | Modules: 0 | Tags: 0
local G2L = {};

-- StarterGui.ScreenGui
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- StarterGui.ScreenGui.ESPScript
G2L["2"] = Instance.new("LocalScript", G2L["1"]);
G2L["2"]["Name"] = [[ESPScript]];


-- StarterGui.ScreenGui.AimbotScript
G2L["3"] = Instance.new("LocalScript", G2L["1"]);
G2L["3"]["Name"] = [[AimbotScript]];


-- StarterGui.ScreenGui.TracersScript
G2L["4"] = Instance.new("LocalScript", G2L["1"]);
G2L["4"]["Name"] = [[TracersScript]];


-- StarterGui.ScreenGui.Frame
G2L["5"] = Instance.new("Frame", G2L["1"]);
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["5"]["Size"] = UDim2.new(0, 411, 0, 231);
G2L["5"]["Position"] = UDim2.new(0.11677, 0, 0.05382, 0);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- StarterGui.ScreenGui.Frame.UIDrag
G2L["6"] = Instance.new("LocalScript", G2L["5"]);
-- [ERROR] cannot convert Capabilities, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["6"]["Sandboxed"] = true;
G2L["6"]["Name"] = [[UIDrag]];


-- StarterGui.ScreenGui.Frame.TextLabel
G2L["7"] = Instance.new("TextLabel", G2L["5"]);
G2L["7"]["TextWrapped"] = true;
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["TextSize"] = 14;
G2L["7"]["TextScaled"] = true;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Size"] = UDim2.new(0, 411, 0, 23);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Text"] = [[DT AIM - made by hunter_sura1]];
G2L["7"]["Position"] = UDim2.new(-0, 0, 0, 0);


-- StarterGui.ScreenGui.Frame.TextButton
G2L["8"] = Instance.new("TextButton", G2L["5"]);
G2L["8"]["TextWrapped"] = true;
G2L["8"]["BorderSizePixel"] = 2;
G2L["8"]["TextSize"] = 14;
G2L["8"]["TextScaled"] = true;
G2L["8"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8"]["Size"] = UDim2.new(0, 144, 0, 27);
G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["Text"] = [[Aimbot]];
G2L["8"]["Position"] = UDim2.new(0.01946, 0, 0.24726, 0);


-- StarterGui.ScreenGui.Frame.TextButton
G2L["9"] = Instance.new("TextButton", G2L["5"]);
G2L["9"]["TextWrapped"] = true;
G2L["9"]["BorderSizePixel"] = 2;
G2L["9"]["TextSize"] = 14;
G2L["9"]["TextScaled"] = true;
G2L["9"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9"]["Size"] = UDim2.new(0, 243, 0, 27);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["Text"] = [[Esp]];
G2L["9"]["Position"] = UDim2.new(0.38686, 0, 0.24726, 0);


-- StarterGui.ScreenGui.Frame.TextButton
G2L["a"] = Instance.new("TextButton", G2L["5"]);
G2L["a"]["TextWrapped"] = true;
G2L["a"]["BorderSizePixel"] = 2;
G2L["a"]["TextSize"] = 14;
G2L["a"]["TextScaled"] = true;
G2L["a"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a"]["Size"] = UDim2.new(0, 394, 0, 27);
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["Text"] = [[Tracers]];
G2L["a"]["Position"] = UDim2.new(0.01946, 0, 0.39706, 0);


-- StarterGui.ScreenGui.Frame.TextLabel
G2L["b"] = Instance.new("TextLabel", G2L["5"]);
G2L["b"]["TextWrapped"] = true;
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["TextSize"] = 14;
G2L["b"]["TextScaled"] = true;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Size"] = UDim2.new(0, 339, 0, 28);
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Text"] = [[Tracer Size]];
G2L["b"]["Position"] = UDim2.new(0.08759, 0, 0.71529, 0);


-- StarterGui.ScreenGui.Frame.Slider
G2L["c"] = Instance.new("Frame", G2L["5"]);
G2L["c"]["BorderSizePixel"] = 0;
G2L["c"]["BackgroundColor3"] = Color3.fromRGB(86, 171, 255);
G2L["c"]["Size"] = UDim2.new(0, 339, 0, 21);
G2L["c"]["Position"] = UDim2.new(0.08759, 0, 0.8654, 0);
G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c"]["Name"] = [[Slider]];


-- StarterGui.ScreenGui.Frame.UICorner
G2L["d"] = Instance.new("UICorner", G2L["5"]);



-- StarterGui.ScreenGui.Frame.TextLabel
G2L["e"] = Instance.new("TextLabel", G2L["5"]);
G2L["e"]["TextWrapped"] = true;
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["TextSize"] = 14;
G2L["e"]["TextScaled"] = true;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["e"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["Size"] = UDim2.new(0, 339, 0, 29);
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["Text"] = [[Press T to aimlock]];
G2L["e"]["Position"] = UDim2.new(0.08759, 0, 1, 0);


-- StarterGui.ScreenGui.ESPScript
local function C_2()
local script = G2L["2"];
	local Players = game:GetService("Players")
	local Teams = game:GetService("Teams")
	local LocalPlayer = Players.LocalPlayer
	
	-- Script is inside StarterGui.ScreenGui, so script.Parent = ScreenGui
	local screenGui = script.Parent
	local frame = screenGui:FindFirstChild("Frame")
	
	-- Find the ESP button by its text
	local espButton = nil
	if frame then
		for _, child in frame:GetChildren() do
			if child:IsA("TextButton") and child.Text == "Esp" then
				espButton = child
				break
			end
		end
	end
	
	if not espButton then
		warn("ESP button not found in GUI")
		return
	end
	
	-- ESP State
	local espEnabled = false
	local highlights = {}
	
	-- Colors
	local ENEMY_COLOR = Color3.fromRGB(255, 50, 50) -- Red for enemies / no-team humanoids
	local ENEMY_OUTLINE = Color3.fromRGB(200, 0, 0)
	local TEAMMATE_COLOR = Color3.fromRGB(0, 255, 0) -- Green for teammates
	local TEAMMATE_OUTLINE = Color3.fromRGB(0, 200, 0)
	local NON_HUMANOID_COLOR = Color3.fromRGB(255, 170, 0) -- Orange for non-humanoid models
	local NON_HUMANOID_OUTLINE = Color3.fromRGB(200, 130, 0)
	
	-- Check if the game actually uses teams
	local function gameHasTeams()
		return #Teams:GetTeams() > 0
	end
	
	-- Check if a player is on the same team as the local player
	local function isTeammate(player)
		if not gameHasTeams() then return false end
		local myTeam = LocalPlayer.Team
		if not myTeam then return false end
		return player.Team == myTeam
	end
	
	-- Find which player owns a character model
	local function getPlayerFromCharacter(character)
		for _, player in Players:GetPlayers() do
			if player.Character == character then
				return player
			end
		end
		return nil
	end
	
	-- Remove all ESP highlights
	local function clearHighlights()
		for _, highlight in highlights do
			if highlight then
				highlight.Parent = nil
			end
		end
		table.clear(highlights)
	end
	
	-- Create a Highlight on a model
	local function createHighlight(object, fillColor, outlineColor)
		if object:FindFirstChild("_ESP_Highlight") then return end
	
		local highlight = Instance.new("Highlight")
		highlight.Name = "_ESP_Highlight"
		highlight.FillColor = fillColor
		highlight.FillTransparency = 0.7
		highlight.OutlineColor = outlineColor
		highlight.OutlineTransparency = 0
		highlight.Adornee = object
		highlight.Parent = object
	
		table.insert(highlights, highlight)
	end
	
	-- Highlight a humanoid model with team-aware color
	local function highlightHumanoidModel(model)
		if model == LocalPlayer.Character then return end
		if not model:IsA("Model") then return end
		if not model:FindFirstChildOfClass("Humanoid") then return end
	
		local player = getPlayerFromCharacter(model)
		if player and isTeammate(player) then
			createHighlight(model, TEAMMATE_COLOR, TEAMMATE_OUTLINE)
		else
			createHighlight(model, ENEMY_COLOR, ENEMY_OUTLINE)
		end
	end
	
	-- Non-humanoid highlighting disabled
	
	-- Full ESP refresh
	local function refreshESP()
		if not espEnabled then return end
	
		for _, descendant in workspace:GetDescendants() do
			if descendant:IsA("Model") and descendant:FindFirstChildOfClass("Humanoid") then
				highlightHumanoidModel(descendant)
			end
		end
	
	end
	
	-- Toggle ESP on/off
	local function toggleESP()
		espEnabled = not espEnabled
	
		if espEnabled then
			espButton.TextColor3 = Color3.fromRGB(0, 255, 0)
			espButton.Text = "Esp [ON]"
			refreshESP()
		else
			espButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			espButton.Text = "Esp"
			clearHighlights()
		end
	end
	
	espButton.MouseButton1Click:Connect(toggleESP)
	
	-- Watch for new objects in workspace
	workspace.DescendantAdded:Connect(function(descendant)
		if not espEnabled then return end
		if not descendant:IsA("Model") then return end
	
		task.defer(function()
			if descendant:FindFirstChildOfClass("Humanoid") then
				highlightHumanoidModel(descendant)
			end
		end)
	end)
	
	-- Watch for team changes to re-color highlights
	task.spawn(function()
		while true do
			task.wait(2)
			if espEnabled then
				-- Clear and re-apply to pick up team changes
				clearHighlights()
				refreshESP()
			end
		end
	end)
end;
task.spawn(C_2);
-- StarterGui.ScreenGui.AimbotScript
local function C_3()
local script = G2L["3"];
	local Players = game:GetService("Players")
	local Teams = game:GetService("Teams")
	local UserInputService = game:GetService("UserInputService")
	local RunService = game:GetService("RunService")
	local LocalPlayer = Players.LocalPlayer
	
	-- Script is inside StarterGui.ScreenGui
	local screenGui = script.Parent
	local frame = screenGui:FindFirstChild("Frame")
	
	-- Find the Aimbot button
	local aimbotButton = nil
	if frame then
		for _, child in frame:GetChildren() do
			if child:IsA("TextButton") and child.Text == "Aimbot" then
				aimbotButton = child
				break
			end
		end
	end
	
	if not aimbotButton then
		warn("Aimbot button not found in GUI")
		return
	end
	
	-- Aimbot State
	local aimbotEnabled = false
	local aimlockHeld = false
	local aimlockConnection = nil
	local AIMLOCK_KEY = Enum.KeyCode.T
	
	-- Check if the game uses teams
	local function gameHasTeams()
		return #Teams:GetTeams() > 0
	end
	
	-- Check if a player is a teammate
	local function isTeammate(player)
		if not gameHasTeams() then return false end
		local myTeam = LocalPlayer.Team
		if not myTeam then return false end
		return player.Team == myTeam
	end
	
	-- Find the nearest valid target's head
	local function getNearestTargetHead()
		local camera = workspace.CurrentCamera
		local myChar = LocalPlayer.Character
		if not myChar then return nil end
		local myHRP = myChar:FindFirstChild("HumanoidRootPart")
		if not myHRP then return nil end
	
		local nearestHead = nil
		local nearestDist = math.huge
	
		for _, player in Players:GetPlayers() do
			if player == LocalPlayer then continue end
			if isTeammate(player) then continue end
	
			local character = player.Character
			if not character then continue end
	
			local humanoid = character:FindFirstChildOfClass("Humanoid")
			if not humanoid or humanoid.Health <= 0 then continue end
	
			local head = character:FindFirstChild("Head")
			if not head then continue end
	
			-- Check if head is on screen
			local _, onScreen = camera:WorldToViewportPoint(head.Position)
			if not onScreen then continue end
	
			-- Distance from center of screen
			local screenPos = camera:WorldToViewportPoint(head.Position)
			local screenCenter = camera.ViewportSize / 2
			local dist = (Vector2.new(screenPos.X, screenPos.Y) - screenCenter).Magnitude
	
			if dist < nearestDist then
				nearestDist = dist
				nearestHead = head
			end
		end
	
		return nearestHead
	end
	
	-- Aim the camera at a target position
	local function aimAtTarget(targetHead)
		local camera = workspace.CurrentCamera
		if not camera then return end
	
		local myChar = LocalPlayer.Character
		if not myChar then return end
		local myHRP = myChar:FindFirstChild("HumanoidRootPart")
		if not myHRP then return end
	
		-- Look at the head from the camera's current position
		local targetCF = CFrame.lookAt(camera.CFrame.Position, targetHead.Position)
		camera.CFrame = camera.CFrame:Lerp(targetCF, 0.4)
	end
	
	-- Start aimlock loop
	local function startAimlock()
		if aimlockConnection then return end
	
		aimlockConnection = RunService.RenderStepped:Connect(function()
			if not aimbotEnabled or not aimlockHeld then
				return
			end
	
			local targetHead = getNearestTargetHead()
			if targetHead then
				aimAtTarget(targetHead)
			end
		end)
	end
	
	-- Stop aimlock loop
	local function stopAimlock()
		if aimlockConnection then
			aimlockConnection:Disconnect()
			aimlockConnection = nil
		end
	end
	
	-- Toggle aimbot on/off
	local function toggleAimbot()
		aimbotEnabled = not aimbotEnabled
	
		if aimbotEnabled then
			aimbotButton.TextColor3 = Color3.fromRGB(0, 255, 0)
			aimbotButton.Text = "Aimbot [ON]"
		else
			aimbotButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			aimbotButton.Text = "Aimbot"
			stopAimlock()
			aimlockHeld = false
		end
	end
	
	aimbotButton.MouseButton1Click:Connect(toggleAimbot)
	
	-- Handle ; key press/release for aimlock
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end
		if input.KeyCode == AIMLOCK_KEY and aimbotEnabled then
			aimlockHeld = true
			startAimlock()
		end
	end)
	
	UserInputService.InputEnded:Connect(function(input)
		if input.KeyCode == AIMLOCK_KEY then
			aimlockHeld = false
			stopAimlock()
		end
	end)
end;
task.spawn(C_3);
-- StarterGui.ScreenGui.TracersScript
local function C_4()
local script = G2L["4"];
	local Players = game:GetService("Players")
	local Teams = game:GetService("Teams")
	local UserInputService = game:GetService("UserInputService")
	local RunService = game:GetService("RunService")
	local LocalPlayer = Players.LocalPlayer
	
	local screenGui = script.Parent
	local frame = screenGui:FindFirstChild("Frame")
	
	-- Find the Tracers button
	local tracersButton = nil
	if frame then
		for _, child in frame:GetChildren() do
			if child:IsA("TextButton") and child.Text == "Tracers" then
				tracersButton = child
				break
			end
		end
	end
	
	if not tracersButton then
		warn("Tracers button not found")
		return
	end
	
	-- Find the Slider frame
	local sliderFrame = frame:FindFirstChild("Slider")
	if not sliderFrame then
		warn("Slider frame not found")
		return
	end
	
	-- ========== BUILD SLIDER UI ==========
	sliderFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	sliderFrame.BorderSizePixel = 1
	sliderFrame.BorderColor3 = Color3.fromRGB(80, 80, 80)
	
	local sliderFill = Instance.new("Frame")
	sliderFill.Name = "Fill"
	sliderFill.Size = UDim2.new(0.5, 0, 1, 0)
	sliderFill.Position = UDim2.new(0, 0, 0, 0)
	sliderFill.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
	sliderFill.BorderSizePixel = 0
	sliderFill.Parent = sliderFrame
	
	local sliderHandle = Instance.new("TextButton")
	sliderHandle.Name = "Handle"
	sliderHandle.Size = UDim2.new(0, 10, 1, 0)
	sliderHandle.Position = UDim2.new(0.5, -5, 0, 0)
	sliderHandle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	sliderHandle.BorderSizePixel = 1
	sliderHandle.BorderColor3 = Color3.fromRGB(200, 200, 200)
	sliderHandle.Text = ""
	sliderHandle.ZIndex = 2
	sliderHandle.Parent = sliderFrame
	
	local sliderPercent = Instance.new("TextLabel")
	sliderPercent.Name = "PercentLabel"
	sliderPercent.Size = UDim2.new(1, 0, 0, 14)
	sliderPercent.Position = UDim2.new(0, 0, 1, 2)
	sliderPercent.BackgroundTransparency = 1
	sliderPercent.TextColor3 = Color3.fromRGB(200, 200, 200)
	sliderPercent.TextSize = 11
	sliderPercent.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
	sliderPercent.Text = "50%"
	sliderPercent.Parent = sliderFrame
	
	-- ========== SLIDER LOGIC ==========
	local tracerSizePercent = 50 -- 0 to 100
	local draggingSlider = false
	
	local function updateSliderVisual()
		sliderFill.Size = UDim2.new(tracerSizePercent / 100, 0, 1, 0)
		sliderHandle.Position = UDim2.new(tracerSizePercent / 100, -5, 0, 0)
		sliderPercent.Text = tostring(math.floor(tracerSizePercent)) .. "%"
	end
	
	local function setSliderFromX(x)
		local relX = math.clamp((x - sliderFrame.AbsolutePosition.X) / sliderFrame.AbsoluteSize.X, 0, 1)
		tracerSizePercent = math.floor(relX * 100)
		updateSliderVisual()
	end
	
	sliderHandle.MouseButton1Down:Connect(function()
		draggingSlider = true
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if draggingSlider and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			setSliderFromX(input.Position.X)
		end
	end)
	
	UserInputService.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			draggingSlider = false
		end
	end)
	
	-- Click on the bar itself to jump to position
	sliderFrame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			setSliderFromX(input.Position.X)
			draggingSlider = true
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					draggingSlider = false
				end
			end)
		end
	end)
	
	updateSliderVisual()
	
	-- ========== TRACER LOGIC ==========
	local tracersEnabled = false
	local tracerLines = {} -- stores Frame instances used as lines
	
	local ENEMY_COLOR = Color3.fromRGB(255, 50, 50)
	local TEAMMATE_COLOR = Color3.fromRGB(0, 255, 0)
	
	local function gameHasTeams()
		return #Teams:GetTeams() > 0
	end
	
	local function isTeammate(player)
		if not gameHasTeams() then return false end
		local myTeam = LocalPlayer.Team
		if not myTeam then return false end
		return player.Team == myTeam
	end
	
	-- Get tracer thickness from slider percentage (1px min, 6px max)
	local function getTracerThickness()
		return math.max(1, math.floor(tracerSizePercent / 100 * 6))
	end
	
	-- Clear all tracer lines
	local function clearTracers()
		for _, line in tracerLines do
			if line then
				line.Parent = nil
			end
		end
		table.clear(tracerLines)
	end
	
	-- Draw a 2D line between two screen points
	local function drawLine(gui, startPoint, endPoint, color, thickness)
		local line = Instance.new("Frame")
		line.Name = "_TracerLine"
		line.BackgroundColor3 = color
		line.BorderSizePixel = 0
	
		local center = (startPoint + endPoint) / 2
		local distance = (endPoint - startPoint).Magnitude
		local angle = math.atan2(endPoint.Y - startPoint.Y, endPoint.X - startPoint.X)
	
		line.Size = UDim2.new(0, distance, 0, thickness)
		line.Position = UDim2.new(0, center.X - distance / 2, 0, center.Y - thickness / 2)
		line.Rotation = math.deg(angle)
		line.ZIndex = 0
		line.Parent = gui
	
		return line
	end
	
	-- Main tracer render loop
	local renderConnection = nil
	
	local function startTracers()
		if renderConnection then return end
	
		-- Create a container ScreenGui for tracer lines
		local tracerGui = screenGui:FindFirstChild("_TracerContainer")
		if not tracerGui then
			tracerGui = Instance.new("ScreenGui")
			tracerGui.Name = "_TracerContainer"
			tracerGui.ResetOnSpawn = false
			tracerGui.Parent = screenGui
		end
	
		renderConnection = RunService.RenderStepped:Connect(function()
			if not tracersEnabled then return en

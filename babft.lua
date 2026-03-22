local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

toggle = false

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "Build a boat for treasure"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

local start_button = Instance.new("TextButton")
start_button.Size = UDim2.new(0, 50, 0, 50)
start_button.Position = UDim2.new(0, 10, 0, 10)
start_button.Text = "Start"
start_button.Parent = screenGui
start_button.TextScaled = true
start_button.BackgroundColor3 = Color3.fromRGB(50, 205, 50)

start_button.MouseButton1Click:Connect(function()
	local humanoid = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")

	toggle = true
	while toggle do
		local hrp = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
		local bodyVel = Instance.new("BodyVelocity")

		bodyVel.Velocity = Vector3.new(0, 0, 0)
		bodyVel.MaxForce = Vector3.new(1e5, 1e5, 1e5)
		bodyVel.Parent = hrp

		hrp.CFrame = CFrame.new(-52, 36, 1231)
		wait(1)

		hrp.CFrame = CFrame.new(-57, 14, 1997)
		wait(1)

		hrp.CFrame = CFrame.new(-67, 30, 2843)
		wait(1)

		hrp.CFrame = CFrame.new(-51, 30, 3584)
		wait(1)

		hrp.CFrame = CFrame.new(-64, 30, 4359)
		wait(1)

		hrp.CFrame = CFrame.new(-60, 30, 5166)
		wait(1)

		hrp.CFrame = CFrame.new(-54, 30, 5868)
		wait(1)

		hrp.CFrame = CFrame.new(-57, 30, 6631)
		wait(1)

		hrp.CFrame = CFrame.new(-61, 30, 7407)
		wait(1)

		hrp.CFrame = CFrame.new(-63, 34, 8235)
		wait(1)

		hrp.CFrame = CFrame.new(-55, -361, 9482)
		wait(1)

		humanoid.Health = 0
	end
end)

stop_button = Instance.new("TextButton")
stop_button.Size = UDim2.new(0, 50, 0, 50)
stop_button.Position = UDim2.new(0, 70, 0, 10)
stop_button.Text = "Stop"
stop_button.Parent = screenGui
stop_button.TextScaled = true
stop_button.BackgroundColor3 = Color3.fromRGB(220, 20, 60)

stop_button.MouseButton1Click:Connect(function()
	toggle = false
	local humanoid = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")

	humanoid.Health = 0
end)

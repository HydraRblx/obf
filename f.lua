--// Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")

--// Variables
local speaker = Players.LocalPlayer
local character = speaker.Character or speaker.CharacterAdded:Wait()
local HRP = character:WaitForChild("HumanoidRootPart")
local camera = workspace.CurrentCamera
local Clip = true
local flingEnabled = false
local flinging = false
local mode = 1 -- static mode

--// UI
local main = Instance.new("ScreenGui", CoreGui)
main.Name = "FlingGui"
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
main.ResetOnSpawn = false

local Frame = Instance.new("Frame", main)
Frame.Name = "Frame"
Frame.Size = UDim2.new(0, 100, 0, 70)
Frame.Position = UDim2.new(0.5, -50, 0, 150)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderSizePixel = 0

local uiCornerFrame = Instance.new("UICorner", Frame)
uiCornerFrame.CornerRadius = UDim.new(0, 5)

local fling = Instance.new("TextButton", Frame)
fling.Name = "fling"
fling.Text = "FL!NG"
fling.Font = Enum.Font.GothamBlack
fling.TextColor3 = Color3.new(1, 1, 1)
fling.TextScaled = true
fling.Size = UDim2.new(1, 0, 0.5, 0)
fling.Position = UDim2.new(0, 0, 0, 0)
fling.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
fling.BorderSizePixel = 0

local uiCornerFling = Instance.new("UICorner", fling)
uiCornerFling.CornerRadius = UDim.new(0, 5)

local SHIFTLOCK = Instance.new("TextLabel", Frame)
SHIFTLOCK.Name = "SHIFTLOCK"
SHIFTLOCK.Text = "SHIFTLOCK: OFF"
SHIFTLOCK.Font = Enum.Font.GothamBold
SHIFTLOCK.TextColor3 = Color3.new(1, 1, 1)
SHIFTLOCK.TextScaled = true
SHIFTLOCK.Size = UDim2.new(1, 0, 0.5, 0)
SHIFTLOCK.Position = UDim2.new(0, 0, 0.5, 0)
SHIFTLOCK.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
SHIFTLOCK.BorderSizePixel = 0

local uiCornerSL = Instance.new("UICorner", SHIFTLOCK)
uiCornerSL.CornerRadius = UDim.new(0, 5)

--// Functions
local function getRoot()
	local character = speaker.Character or speaker.CharacterAdded:Wait()
	return character:FindFirstChild("HumanoidRootPart")
end

local function toggleFling()
	flingEnabled = not flingEnabled
	flinging = flingEnabled
	SHIFTLOCK.Text = "SHIFTLOCK: " .. (flingEnabled and "ON" or "OFF")

	local root = getRoot()
	if not root then return end

	local bv = root:FindFirstChild("AngularVelocity") or Instance.new("BodyAngularVelocity", root)
	bv.Name = "AngularVelocity"
	bv.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
	bv.AngularVelocity = Vector3.new(0, 0, 0)

	if flingEnabled then
		RunService.RenderStepped:Connect(function()
			if flinging and Clip and root then
				root.CanCollide = false
				local angVel = Vector3.new(0, 0, 0)
				if mode == 0 then
					angVel = Vector3.new(1e5, 1e5, 1e5)
				elseif mode == 1 then
					angVel = Vector3.new(0, 1e9, 0)
				elseif mode == 2 then
					angVel = Vector3.new(1e9, 0, 1e9)
				elseif mode == 3 then
					angVel = Vector3.new(1e9, 1e9, 0)
				elseif mode == 4 then
					angVel = Vector3.new(1e5, 1e5, 1e5)
				end
				bv.AngularVelocity = angVel
			end
		end)
	else
		if bv then
			bv.AngularVelocity = Vector3.new(0, 0, 0)
		end
	end
end

--// Connect
fling.MouseButton1Click:Connect(toggleFling)

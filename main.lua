local developerID = 7071101941
local VIP_IDS = {6210815040, 7071101941, 2334312622}

local gcg = Instance.new("ScreenGui")
gcg.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frm = Instance.new("Frame")
frm.Size = UDim2.new(0.3, 0, 0.3, 0)
frm.Position = UDim2.new(0.35, 0, 0.35, 0) -- Centered position
frm.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
frm.Parent = gcg

local crn = Instance.new("UICorner")
crn.CornerRadius = UDim.new(0.1, 0)
crn.Parent = frm

local ttl = Instance.new("TextLabel")
ttl.Size = UDim2.new(1, 0, 0.2, 0)
ttl.Position = UDim2.new(0, 0, 0, 0)
ttl.BackgroundTransparency = 1
ttl.Text = "Jaeger X FS"
ttl.TextColor3 = Color3.new(1, 1, 1)
ttl.Font = Enum.Font.SourceSansBold
ttl.TextSize = 17
ttl.Parent = frm

local ldg = Instance.new("TextLabel")
ldg.Size = UDim2.new(1, 0, 0.8, 0)
ldg.Position = UDim2.new(0, 0, 0.1, 0)
ldg.BackgroundTransparency = 1
ldg.Text = "Loading, please wait..."
ldg.TextColor3 = Color3.new(1, 1, 1)
ldg.Font = Enum.Font.SourceSans
ldg.TextSize = 17
ldg.Parent = frm

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Code Execution",
    Text = "If you do not see a notification saying execution successful after this, You may or will need to re-execute this.",
    Icon = "rbxassetid://6238537240",
    Duration = 4,
})

local function chk(uid)
    if uid == developerID then
        return "Developer"
    elseif table.find(VIP_IDS, uid) then
        return "VIP"
    else
        return "Normal"
    end
end

wait(2)

local ply = game.Players.LocalPlayer
local uid = ply.UserId
local rol = chk(uid)
local debug = true

if not debug then
	if ply.Name == "aaarxp" then
		ldg.Text = "Observer detected."
	else
		ldg.Text = rol .." user detected."
	end
	
	wait(2)
	
	ldg.Text = "Loading script..."
	
	wait(1)
end

gcg:Destroy()

-- START SCRIPT --
local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local up = Instance.new("TextButton")
local down = Instance.new("TextButton")
local onof = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local plus = Instance.new("TextButton")
local speed = Instance.new("TextLabel")
local mine = Instance.new("TextButton")
local fling = Instance.new("TextButton")
local mini = Instance.new("TextButton")
local mini2 = Instance.new("TextButton")
local noclipToggle = Instance.new("TextButton")

local cloneref = cloneref or function(...) return ... end 
local clonefunction = clonefunction or function(...) return ... end
local Players = cloneref(game:GetService("Players"))
local StarterGui = game:GetService("StarterGui")
local SetCore = clonefunction(StarterGui.SetCore)
local GetDebugId = clonefunction(game.GetDebugId)
local FindFirstChild = clonefunction(game.FindFirstChild) 
local RunService = game:GetService("RunService")
local speaker = game:GetService("Players").LocalPlayer
local chr = game.Players.LocalPlayer.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")

local getgenv = getgenv
local getnamecallmethod = getnamecallmethod
local hookmetamethod = hookmetamethod
local hookfunction = hookfunction
local newcclosure = newcclosure
local checkcaller = checkcaller
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local name = "Jaeger Anti-kick"
local version = "K8S"
local lower = string.lower
local gsub = string.gsub
local match = string.match

_G.ScriptExecuted = true
main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
main.ResetOnSpawn = false

Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
Frame.BorderColor3 = Color3.fromRGB(103, 221, 213)
Frame.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
Frame.Size = UDim2.new(0, 190, 0, 57)
Frame.Active = true 
Frame.Draggable = true
Frame.BackgroundTransparency = 1  

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 10)  -- Adjust corner radius as needed
UICorner.Parent = Frame

local UIPadding = Instance.new("UIPadding")
UIPadding.PaddingTop = UDim.new(0, -5)
UIPadding.PaddingBottom = UDim.new(0, -5)
UIPadding.PaddingLeft = UDim.new(0, -5)
UIPadding.PaddingRight = UDim.new(0, -5)
UIPadding.Parent = Frame

up.Name = "up"
up.Parent = Frame
up.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
up.Size = UDim2.new(0, 45, 0, 29)
up.Font = Enum.Font.SourceSans
up.Text = "UP"
up.TextColor3 = Color3.fromRGB(0, 255, 0)
up.TextSize = 14.000

down.Name = "down"
down.Parent = Frame
down.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
down.Position = UDim2.new(0, 0, 0.491228074, 0)
down.Size = UDim2.new(0, 45, 0, 29)
down.Font = Enum.Font.SourceSans
down.Text = "DOWN"
down.TextColor3 = Color3.fromRGB(255, 0, 0)
down.TextSize = 14.000

onof.Name = "onof"
onof.Parent = Frame
onof.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
onof.Position = UDim2.new(0.702823281, 0, 0.491228074, 0)
onof.Size = UDim2.new(0, 54, 0, 29)
onof.Font = Enum.Font.SourceSans
onof.Text = "FLY"
onof.TextColor3 = Color3.fromRGB(0, 255, 0)
onof.TextSize = 20.000

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
TextLabel.Position = UDim2.new(0.469327301, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 100, 0, 28)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Jaeger X | Mk " .. version
TextLabel.TextColor3 = Color3.fromRGB(77, 77, 255)
TextLabel.TextSize = 16.5

plus.Name = "plus"
plus.Parent = Frame
plus.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
plus.TextColor3 = Color3.fromRGB(0, 255, 0)
plus.Position = UDim2.new(0.231578946, 0, 0, 0)
plus.Size = UDim2.new(0, 45, 0, 28)
plus.Font = Enum.Font.SourceSans
plus.Text = "ADD"
plus.TextSize = 20
plus.TextWrapped = true

speed.Name = "speed"
speed.Parent = Frame
speed.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
speed.Position = UDim2.new(0.468421042, 0, 0.491228074, 0)
speed.Size = UDim2.new(0, 44, 0, 29)
speed.Font = Enum.Font.SourceSans
speed.Text = "1"
speed.TextColor3 = Color3.fromRGB(0, 255, 0)
speed.TextScaled = true
speed.TextSize = 14.000
speed.TextWrapped = true

mine.Name = "mine"
mine.Parent = Frame
mine.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
mine.Position = UDim2.new(0.231578946, 0, 0.491228074, 0)
mine.Size = UDim2.new(0, 45, 0, 29)
mine.Font = Enum.Font.SourceSans
mine.Text = "SUB"
mine.TextColor3 = Color3.fromRGB(255, 0, 0)
mine.TextSize = 20
mine.TextWrapped = true

fling.Name = "fling"
fling.Parent = main.Frame
fling.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
fling.TextColor3 = Color3.fromRGB(0, 255, 0)
fling.Font = "SourceSans"
fling.Size = UDim2.new(0, 45, 0, 28)
fling.Text = "FL!NG"
fling.TextSize = 17
fling.Position = UDim2.new(0, 0, -0.89, 28)
fling.Visible = true

mini.Name = "minimize"
mini.Parent = main.Frame
mini.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
mini.TextColor3 = Color3.fromRGB(255, 0, 0)
mini.Font = "SourceSans"
mini.Size = UDim2.new(0, 45, 0, 29)
mini.Text = "HIDE"
mini.TextSize = 22
mini.Position = UDim2.new(0, 46, -0.89, 28)

local Services = setmetatable({}, {__index = function(Self, Index)
    local NewService = game:GetService(Index)
    if NewService then
        Self[Index] = NewService
    end
    return NewService
end})

local LocalPlayer = Services.Players.LocalPlayer
local ScreenGui = Instance.new("ScreenGui", LocalPlayer.PlayerGui)
local antiFling = Instance.new("TextButton", ScreenGui)
local antiFlingEnabled = false

antiFling.Parent = Frame
antiFling.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
antiFling.TextColor3 = Color3.fromRGB(255, 0, 0)
antiFling.Size = UDim2.new(0, 100, 0, 28)
antiFling.Position = UDim2.new(0.243327301, 44, -0.89, 28)
antiFling.Text = "Anti-Fling: OFF"
antiFling.TextSize = 10

noclipToggle.Parent = Frame
noclipToggle.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
noclipToggle.TextColor3 = Color3.fromRGB(255, 0, 0)
noclipToggle.Size = UDim2.new(0, 100, 0, 28)
noclipToggle.Position = UDim2.new(0.243327301, 44, -1.34, 28)
noclipToggle.Text = "NOCLIP: OFF"
noclipToggle.TextSize = 10
noclipToggle.Visible = true

mini2.Name = "minimize2"
mini2.Parent = main.Frame
mini2.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
mini2.TextColor3 = Color3.fromRGB(0, 255, 0)
mini2.Font = "SourceSans"
mini2.Size = UDim2.new(0, 45, 0, 28)
mini2.Text = "SHOW"
mini2.TextSize = 17
mini2.Position = UDim2.new(0.231578946, 0, 0, 0)
mini2.Visible = false

local function addRoundedCorners(parent, radius)
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, radius)
    corner.Parent = parent
end

addRoundedCorners(up, 10)
addRoundedCorners(down, 10)
addRoundedCorners(onof, 10)
addRoundedCorners(TextLabel, 10)
addRoundedCorners(plus, 10)
addRoundedCorners(speed, 10)
addRoundedCorners(mine, 10)
addRoundedCorners(fling, 10)
addRoundedCorners(mini, 10)
addRoundedCorners(antiFling, 10)
addRoundedCorners(mini2, 10)
addRoundedCorners(noclipToggle, 10)

-- REJOIN START
local rejoin = Instance.new("TextButton")
rejoin.Parent = Frame
rejoin.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
rejoin.Position = UDim2.new(0.35, -69.2, 0.35, 42)
rejoin.Size = UDim2.new(0, 91, 0, 28)
rejoin.Text = "Rejoin Server"
rejoin.TextColor3 = Color3.fromRGB(255, 255, 255)
rejoin.TextSize = 10

local function rejoinServer()
    local TeleportService = game:GetService("TeleportService")
	TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)
end

addRoundedCorners(rejoin, 10)
rejoin.MouseButton1Click:Connect(rejoinServer)
-- REJOIN END

local function sendNotification(title, text)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = title,
        Text = text,
        Icon = "rbxassetid://6238537240",
        Duration = 3,
    })
end

-- SERVER HOP START
local hopServer = Instance.new("TextButton")
hopServer.Parent = Frame
hopServer.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
hopServer.Position = UDim2.new(0.35, 24, 0.35, 42)
hopServer.Size = UDim2.new(0, 100, 0, 28)
hopServer.Text = "Server Hop"
hopServer.TextColor3 = Color3.fromRGB(255, 255, 255)
hopServer.TextSize = 11
hopServer.Visible = false

local flyMode = Instance.new("TextButton")
flyMode.Parent = Frame
flyMode.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
flyMode.Position = UDim2.new(0.35, 24, 0.35, 44)
flyMode.Size = UDim2.new(0, 100, 0, 28)
flyMode.Text = "Mode: Normal"
flyMode.TextColor3 = Color3.fromRGB(255, 255, 255)
flyMode.TextSize = 10
flyMode.Visible = true

addRoundedCorners(flyMode, 10)

local minPlayers = 15
local maxPlayers = 25 

local function serverHop()
	local PlaceID = game.PlaceId
	local AllIDs = {}
	local foundAnything = ""
	local actualHour = os.date("!*t").hour
	local Deleted = false
	function TPReturner()
	   local Site;
	   if foundAnything == "" then
	       Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
	   else
	       Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
	   end
	   local ID = ""
	   if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
	       foundAnything = Site.nextPageCursor
	   end
	   local num = 0;
	   for i,v in pairs(Site.data) do
	       local Possible = true
	       ID = tostring(v.id)
	       if tonumber(v.maxPlayers) > tonumber(v.playing) then
	           for _,Existing in pairs(AllIDs) do
	               if num ~= 0 then
	                   if ID == tostring(Existing) then
	                       Possible = false
	                   end
	               else
	                   if tonumber(actualHour) ~= tonumber(Existing) then
	                       local delFile = pcall(function()
	                           delfile("NotSameServers.json")
	                           AllIDs = {}
	                           table.insert(AllIDs, actualHour)
	                       end)
	                   end
	               end
	               num = num + 1
	           end
	           if Possible == true then
	               table.insert(AllIDs, ID)
	               pcall(function()
	                   writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
	                   wait()
	                   game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
	               end)
	           end
	       end
	   end
	end
	
	function Teleport()
       pcall(function()
           TPReturner()
           if foundAnything ~= "" then
               TPReturner()
           end
       end)
   end
   
   Teleport()
end

-- PRJ 1 START
local robloxAdminGroupId = 1200769

local function isAdmin(player)
    return player:IsInGroup(robloxAdminGroupId)
end

local valueNames = {"admin", "administrator", "mod", "moderator"}

local function hasAdminValue(player)
    for _, child in ipairs(player:GetChildren()) do
        if child:IsA("BoolValue") then
            local lowerName = child.Name:lower()
            for _, valueName in ipairs(valueNames) do
                if lowerName == valueName and child.Value then
                    return true
                end
            end
        end
    end
    return false
end

game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        if isAdmin(player) or hasAdminValue(player) then
            serverHop()
        end
    end)
end)
-- PRJ 1 END

addRoundedCorners(hopServer, 10)
hopServer.MouseButton1Click:Connect(serverHop)
--SERVER HOP END

speeds = 1

game:GetService("Players").LocalPlayer.Idled:Connect(function()
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):ClickButton2(Vector2.new())
    sendNotification("Anti-afk", "Successfully intercepted an afk kick.")
end)

if getgenv().ED_AntiKick then
	return
end

local compareinstances = (compareinstances and function(ins1, ins2)
		if typeof(ins1) == "Instance" and typeof(ins2) == "Instance" then
			return compareinstances(ins1, ins2);
		end
	end)
or
function(ins1, ins2)
	return (typeof(ins1) == "Instance" and typeof(ins2) == "Instance") and GetDebugId(ins1) == GetDebugId(ins2);
end;

local function CanCastToSTDString(val)
	local success, err = pcall(FindFirstChild, game, val);
	return success 
end


local detectedMessages = {}

local noclipEnabled = false
local noclipConnection = nil

noclipToggle.MouseButton1Click:Connect(function()
    if noclipEnabled then
        -- Disable noclip
        if noclipConnection then
            noclipConnection:Disconnect()
            noclipConnection = nil
        end
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = true
            end
        end
        
        noclipToggle.TextColor3 = Color3.fromRGB(255, 0, 0)
        noclipToggle.Text = "NOCLIP: OFF"
        noclipEnabled = false
        fling.Visible = true
    else
        -- Enable noclip
        noclipConnection = game:GetService("RunService").Stepped:Connect(function()
            for _, part in pairs(character:GetDescendants()) do
                if part:IsA("BasePart") and part.CanCollide then
                    part.CanCollide = false
                end
            end
        end)
        noclipToggle.TextColor3 = Color3.fromRGB(0, 255, 0)
        noclipToggle.Text = "NOCLIP: ON"
        noclipEnabled = true
        fling.Visible = false
    end
end)

-- SHIFTLOCK START
local ShiftLockButton = Instance.new("TextLabel")
local ContextActionService = game:GetService("ContextActionService")
local UserInputService = game:GetService("UserInputService")

local MaxLength = 900000
local Active

ShiftLockButton.Parent = Frame
ShiftLockButton.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
ShiftLockButton.Position = UDim2.new(-0.22, 44, -1.34, 28)
ShiftLockButton.Size = UDim2.new(0, 91, 0, 28)
ShiftLockButton.TextColor3 = Color3.fromRGB(255, 0, 0)
ShiftLockButton.TextSize = 10
ShiftLockButton.Visible = true
ShiftLockButton.Text = "SHIFTLOCK"

local function corner(parent, radius)
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, radius)
    corner.Parent = parent
end

corner(ShiftLockButton, 10)

local function ShiftLock(actionName, inputState, inputObject)
    if inputState == Enum.UserInputState.Begin then
        ShiftLockButton.MouseButton1Click:Fire()
    end
end

local ShiftLockAction = ContextActionService:BindAction("Shift Lock", ShiftLock, false, Enum.KeyCode.LeftShift)
ContextActionService:SetPosition("Shift Lock", UDim2.new(0.8, 0, 0.8, 0))
-- SHIFTLOCK END

function noclipDied(newCharacter)
    character = newCharacter
    if noclipEnabled then
        if noclipConnection then
            noclipConnection:Disconnect()
            noclipConnection = nil
        end
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = true
            end
        end
        noclipToggle.TextColor3 = Color3.fromRGB(255, 0, 0)
        noclipToggle.Text = "NOCLIP: OFF"
        noclipEnabled = false
        fling.Visible = true
    end
end

player.CharacterAdded:Connect(noclipDied)

local function getUsernameFromUserId(userId)
    local CJNG = game:GetService("Players")
    local success, result = pcall(function()
        return CJNG:GetNameFromUserIdAsync(userId)
    end)
    if success then
        return result
    else
        return nil
    end
end

local EXCLUDED_USERNAMES = {
	"Data_uncoder666",
	"Hydra",
	"Jaeger",
	"Observer",
	"aaarxp",
	"DEV | Hydra",
    "001 | Hydra"
}

local function isExcludedUsername(username)
    for _, excludedUsername in ipairs(EXCLUDED_USERNAMES) do
        if username == excludedUsername then
            return true
        end
    end
    return false
end

local function isVIP(playerOrUserId)
    local userId
    if typeof(playerOrUserId) == "Instance" then
        userId = playerOrUserId.UserId
    else
        userId = playerOrUserId
    end

    local username = getUsernameFromUserId(userId)
    if not username then
        return false
    end

    for _, VIP_IDS in ipairs(VIP_IDS) do
        if userId == VIP_IDS then
            return true
        end
    end
    return false
end

local function updateBillboardGuiVisibility(player, billboardGui, localPlayer)
    local head = player.Character and player.Character:FindFirstChild("Head")
    if not head then return end

    local function updateVisibility()
        if not localPlayer.Character or not localPlayer.Character:FindFirstChild("HumanoidRootPart") then
            billboardGui.Enabled = false
            return
        end
        
        local distance = (head.Position - localPlayer.Character.HumanoidRootPart.Position).magnitude
        billboardGui.Enabled = distance <= 30
    end

    local connection
    connection = RunService.Heartbeat:Connect(function()
        updateVisibility()
        if not player.Character or not player.Character:FindFirstChild("Head") then
            connection:Disconnect()
        end
    end)
end

-- RANK START
local ranks = {
    {name = "Associate 1", number = 1, ids = {2345, 6789, 1122}},
    {name = "Associate 2", number = 2, ids = {3456, 7890, 3344}},
    {name = "Associate 3", number = 3, ids = {4567, 8901, 5566}},
    
    {name = "Contributor Second Class", number = 4, ids = {5678, 9012, 7788}},
    {name = "Contributor First Class", number = 5, ids = {6789, 1011, 9900}},
    
    {name = "Script Tester 1", number = 6, ids = {7890, 1122, 3344}},
    {name = "Script Tester 2", number = 7, ids = {8901, 2233, 5566}},
    {name = "Script Tester 3", number = 8, ids = {9012, 3344, 7788}},
    {name = "Lead Script Tester", number = 9, ids = {1011, 4455, 9900}},
    
    {name = "Inspector 1", number = 10, ids = {3344, 7788, 5566}},
    {name = "Inspector 2", number = 11, ids = {44

local developerID = 7071101941
local VIP_IDS = {6210815040, 7071101941, 2334312622, 3446191625}

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
local version = "L1B"
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
	"Mikey",
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
    {name = "Victor Hotel", number = 1, ids = {0, 0}},
    {name = "Tango Zulu", number = 2, ids = {0, 0}},
    {name = "Sierra Victor", number = 3, ids = {0, 0, 0}},
    {name = "Romeo Tango", number = 4, ids = {0, 0, 0}},
    
    {name = "Quebec Romeo", number = 5, ids = {0, 0, 0}},
    {name = "Papa Lima", number = 6, ids = {0, 0, 0}},
    {name = "Oscar Golf", number = 7, ids = {0, 0, 0}},
    {name = "November Papa", number = 8, ids = {0, 0, 0}},
    
    {name = "Mike Yankee", number = 9, ids = {0, 0, 0}},
    {name = "Lima Quebec", number = 10, ids = {0, 0, 0}},
    {name = "Kilo Victor", number = 11, ids = {0, 0, 0}},
    {name = "Juliet Bravo", number = 12, ids = {0, 0, 0}},
    
    {name = "Hotel Romeo", number = 13, ids = {0, 0, 0}},
    {name = "Golf Hotel", number = 14, ids = {0, 0, 0}},
    {name = "Foxtrot November", number = 15, ids = {0, 0, 0}},
    {name = "Echo Sierra", number = 16, ids = {0, 0, 0}},
    
    {name = "Delta Lima", number = 17, ids = {0, 0, 0}},
    {name = "Charlie Echo", number = 18, ids = {0, 0, 0}},
    {name = "Bravo Delta", number = 19, ids = {7071101941, 0, 0}},
    {name = "Alpha Tango", number = 20, ids = {3446191625}}
}



local rankPlayers = game:GetService("Players")
local rankRunService = game:GetService("RunService")

local rankLocalPlayer = rankPlayers.LocalPlayer
local rankLocalCharacter = rankLocalPlayer.Character or rankLocalPlayer.CharacterAdded:Wait()

-- Update local character reference when respawning
rankLocalPlayer.CharacterAdded:Connect(function(char)
    rankLocalCharacter = char
end)

local function onRankAdded(character)
    local player = rankPlayers:GetPlayerFromCharacter(character)
    if not player then return end

    local head = character:WaitForChild("Head", 5)
    if not head then return end

    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Adornee = head
    billboardGui.Size = UDim2.new(0, 200, 0, 50)
    billboardGui.AlwaysOnTop = true

    local textLabel = Instance.new("TextLabel")
    textLabel.Parent = billboardGui
    textLabel.TextColor3 = Color3.fromRGB(0, 0, 255)
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.Visible = true

    local function getRank(userId)
        for _, rankInfo in pairs(ranks) do
            for _, id in ipairs(rankInfo.ids) do
                if id == userId then
                    if rankInfo.number > 18 then 
                        textLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
                        if isVIP(player.UserId) then
                            return "[HR] [" .. rankInfo.number .. "] " .. rankInfo.name .. " [VIP]"
                        else
                            return "[HR] [" .. rankInfo.number .. "] " .. rankInfo.name 
                        end
                    else
                        return "[" .. rankInfo.number .. "] " .. rankInfo.name
                    end
                end
            end
        end
        return "[0] Player" 
    end

    local rankText = getRank(player.UserId)
    textLabel.Text = rankText
    textLabel.TextStrokeTransparency = 0.7
    textLabel.Font = Enum.Font.SourceSansBold
    textLabel.TextSize = 12

    -- Set different offset for local player and others
    if player == rankLocalPlayer then
        billboardGui.StudsOffset = Vector3.new(0, 1.5, 0)
    else
        billboardGui.StudsOffset = Vector3.new(0, 2.7, 0)
    end

    billboardGui.Parent = head

    -- Visibility logic
    rankRunService.RenderStepped:Connect(function()
        if not rankLocalPlayer or not rankLocalCharacter then return end
        if not character or not character:FindFirstChild("HumanoidRootPart") then return end

        local localHRP = rankLocalCharacter:FindFirstChild("HumanoidRootPart")
        local targetHRP = character:FindFirstChild("HumanoidRootPart")
        if not localHRP or not targetHRP then return end

        local distance = (localHRP.Position - targetHRP.Position).Magnitude
        local camera = workspace.CurrentCamera
        local _, onScreen = camera:WorldToViewportPoint(head.Position)

        textLabel.Visible = (distance <= 25 and onScreen) or player == rankLocalPlayer
    end)
end

local function rankPlayer(player)
    if player.Character then
        onRankAdded(player.Character)
    end
    player.CharacterAdded:Connect(onRankAdded)
end

for _, player in pairs(rankPlayers:GetPlayers()) do
    rankPlayer(player)
end

rankPlayers.PlayerAdded:Connect(rankPlayer)
-- RANK END

player.CharacterRemoving:Connect(function()
    if player.Character and player.Character:FindFirstChild("Head") then
        player.Character.Head:Destroy()
    end
end)

nowe = false

antiFling.MouseButton1Click:Connect(function()
	antiFlingEnabled = not antiFlingEnabled
	antiFling.Text = antiFlingEnabled and "Anti-Fling: ON" or "Anti-Fling: OFF"
	antiFling.TextColor3 = antiFlingEnabled and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)

	if antiFlingEnabled or noclipEnabled then
	    fling.Visible = false
	    flingEnabled = false 
	    flinging = false
	else
		fling.Visible = true
	end
end)

local function PlayerAdded(Player)
    local Detected = false
    local Character
    local PrimaryPart

    local function CharacterAdded(NewCharacter)
        Character = NewCharacter
        repeat wait() until NewCharacter:FindFirstChild("HumanoidRootPart")
        PrimaryPart = NewCharacter.HumanoidRootPart
        Detected = false
    end

    CharacterAdded(Player.Character or Player.CharacterAdded:Wait())
    Player.CharacterAdded:Connect(CharacterAdded)

    Services.RunService.Heartbeat:Connect(function()
        if antiFlingEnabled and Character and Character:IsDescendantOf(workspace) and PrimaryPart and PrimaryPart:IsDescendantOf(Character) then
            if PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 or PrimaryPart.AssemblyLinearVelocity.Magnitude > 100 then
                if not Detected then
                    game.StarterGui:SetCore("ChatMakeSystemMessage", {
                        Text = "[Anti-fling]: Player " .. tostring(Player) .. " might have fling exploits.",
                        Color = Color3.fromRGB(255, 200, 0)
                    })
                end
                Detected = true
                for _, v in ipairs(Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                        v.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                        v.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                        v.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0.0001, 0.0001)
                    end
                end
                PrimaryPart.CanCollide = false
                PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                PrimaryPart.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0.0001, 0.0001)
            end
        end
    end)
end

-- // Event Listeners \\ --
for _, Player in ipairs(Services.Players:GetPlayers()) do
    if Player ~= LocalPlayer then
        PlayerAdded(Player)
    end
end
Services.Players.PlayerAdded:Connect(PlayerAdded)

local LastPosition = nil
Services.RunService.Heartbeat:Connect(function()
    if antiFlingEnabled then
        pcall(function()
            local PrimaryPart = LocalPlayer.Character.PrimaryPart
            if PrimaryPart.AssemblyLinearVelocity.Magnitude > 250 or PrimaryPart.AssemblyAngularVelocity.Magnitude > 250 then
                PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                PrimaryPart.CFrame = LastPosition

                local success, message = pcall(function()
			    game.StarterGui:SetCore("ChatMakeSystemMessage", {
				        Text = "[Anti-fling]: High speed velocity detected, Neutralizing velocity.",
				        Color = Color3.fromRGB(255, 255, 255)
				    })
				end)
			
				if not success then
				    --Empty
				end
            elseif PrimaryPart.AssemblyLinearVelocity.Magnitude < 50 or PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 then
                LastPosition = PrimaryPart.CFrame
            end
        end)
    end
end)
 
mode = 2
flyMode.MouseButton1Down:connect(function()
    if mode == 2 then
        mode = 1
    else 
        mode = 2
    end
    
    if mode == 1 then
		flyMode.Text = "Mode: CFrame"
	else
		flyMode.Text = "Mode: Normal"
	end
end)

CFspeed = 50
onof.MouseButton1Down:connect(function()
	if mode == 1 then
		local char = game:GetService("Players").LocalPlayer.Character or game:GetService("Players").LocalPlayer.CharacterAdded:Wait()
		char:FindFirstChildOfClass('Humanoid').PlatformStand = true
		local Head = char:WaitForChild("Head")
		Head.Anchored = true
		
		if CFly == true then
			CFly = false
			if CFloop then CFloop:Disconnect() end
			CFloop = RunService.Heartbeat:Connect(function(deltaTime)
				local moveDirection = char:FindFirstChildOfClass('Humanoid').MoveDirection * (CFspeed * deltaTime)
				local headCFrame = Head.CFrame
				local cameraCFrame = workspace.CurrentCamera.CFrame
				local cameraOffset = headCFrame:ToObjectSpace(cameraCFrame).Position
				cameraCFrame = cameraCFrame * CFrame.new(-cameraOffset.X, -cameraOffset.Y, -cameraOffset.Z + 1)
				local cameraPosition = cameraCFrame.Position
				local headPosition = headCFrame.Position
			
				local objectSpaceVelocity = CFrame.new(cameraPosition, Vector3.new(headPosition.X, cameraPosition.Y, headPosition.Z)):VectorToObjectSpace(moveDirection)
				Head.CFrame = CFrame.new(headPosition) * (cameraCFrame - cameraPosition) * CFrame.new(objectSpaceVelocity)
			end)
		else
			CFly = true
			if CFloop then
				CFloop:Disconnect()
				char:FindFirstChildOfClass('Humanoid').PlatformStand = false
				local Head = char:WaitForChild("Head")
				Head.Anchored = false
			end
		end
	end
	
	if mode == 2 then
		if nowe == true then
			nowe = false
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
			speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
			onof.TextColor3 = Color3.fromRGB(0, 255, 0)
		else 
			nowe = true
			onof.TextColor3 = Color3.fromRGB(255, 0, 0)
			for i = 1, speeds do
				spawn(function()
					local hb = game:GetService("RunService").Heartbeat	
					tpwalking = true
					local chr = game.Players.LocalPlayer.Character
					local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
					while tpwalking and hb:Wait() and chr and hum and hum.Parent do
						if hum.MoveDirection.Magnitude > 0 then
							chr:TranslateBy(hum.MoveDirection)
						end
					end
				end)
			end
			game.Players.LocalPlayer.Character.Animate.Disabled = true
			local Char = game.Players.LocalPlayer.Character
			local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")
	
			for i,v in next, Hum:GetPlayingAnimationTracks() do
				v:AdjustSpeed(0)
			end
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
			speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
		end
	
		if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then
			local plr = game.Players.LocalPlayer
			local torso = plr.Character.Torso
			local flying = true
			local deb = true
			local ctrl = {f = 0, b = 0, l = 0, r = 0}
			local lastctrl = {f = 0, b = 0, l = 0, r = 0}
			local maxspeed = 50
			local speed = 0
	
			local bg = Instance.new("BodyGyro", torso)
			bg.P = 9e9
			bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
			bg.cframe = torso.CFrame
			local bv = Instance.new("BodyVelocity", torso)
			bv.velocity = Vector3.new(0,0.1,0)
			bv.maxForce = Vector3.new(math.huge, math.huge, math.huge)
			if nowe == true then
				plr.Character.Humanoid.PlatformStand = true
			end
			while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
				game:GetService("RunService").RenderStepped:Wait()
	
				if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
					speed = speed+.5+(speed/maxspeed)
					if speed > maxspeed then
						speed = maxspeed
					end
				elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
					speed = speed-1
					if speed < 0 then
						speed = 0
					end
				end
				if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
					bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
					lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
				elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
					bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				else
					bv.velocity = Vector3.new(0,0,0)
				end
				--	game.Players.LocalPlayer.Character.Animate.Disabled = true
				bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
			end
			ctrl = {f = 0, b = 0, l = 0, r = 0}
			lastctrl = {f = 0, b = 0, l = 0, r = 0}
			speed = 0
			bg:Destroy()
			bv:Destroy()
			plr.Character.Humanoid.PlatformStand = false
			game.Players.LocalPlayer.Character.Animate.Disabled = false
			tpwalking = false
		else
			local plr = game.Players.LocalPlayer
			local UpperTorso = plr.Character.UpperTorso
			local flying = true
			local deb = true
			local ctrl = {f = 0, b = 0, l = 0, r = 0}
			local lastctrl = {f = 0, b = 0, l = 0, r = 0}
			local maxspeed = 50
			local speed = 0
	
	
			local bg = Instance.new("BodyGyro", UpperTorso)
			bg.P = 9e9
			bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
			bg.cframe = UpperTorso.CFrame
			local bv = Instance.new("BodyVelocity", UpperTorso)
			bv.velocity = Vector3.new(0,0.1,0)
			bv.maxForce = Vector3.new(math.huge, math.huge, math.huge)
			if nowe == true then
				plr.Character.Humanoid.PlatformStand = true
			end
			while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
				wait()
	
				if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
					speed = speed+.5+(speed/maxspeed)
					if speed > maxspeed then
						speed = maxspeed
					end
				elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
					speed = speed-1
					if speed < 0 then
						speed = 0
					end
				end
				if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
					bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
					lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
				elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
					bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				else
					bv.velocity = Vector3.new(0,0,0)
				end
	
				bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
			end
			ctrl = {f = 0, b = 0, l = 0, r = 0}
			lastctrl = {f = 0, b = 0, l = 0, r = 0}
			speed = 0
			bg:Destroy()
			bv:Destroy()
			plr.Character.Humanoid.PlatformStand = false
			game.Players.LocalPlayer.Character.Animate.Disabled = false
			tpwalking = false
		end
	end
end)

local tis

up.MouseButton1Down:connect(function()
	tis = up.MouseEnter:connect(function()
		while tis do
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
		end
	end)
end)

up.MouseLeave:connect(function()
	if tis then
		tis:Disconnect()
		tis = nil
	end
end)

local dis

down.MouseButton1Down:connect(function()
	dis = down.MouseEnter:connect(function()
		while dis do
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-1,0)
		end
	end)
end)

down.MouseLeave:connect(function()
	if dis then
		dis:Disconnect()
		dis = nil
	end
end)


game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
	wait(0.7)
	game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
	game.Players.LocalPlayer.Character.Animate.Disabled = false

end)

local lastClickTimePlus = 0
local lastClickTimeMine = 0
local holdPlus = false
local holdMine = false

local manualCooldown = 0.6 -- seconds
local holdInterval = 0.3   -- seconds
local holdStartDelay = 0.3 -- how long to hold before auto-repeat

local function updateSpeed(change)
	if change > 0 or speeds > 1 then
		speeds = math.max(1, speeds + change)
		speed.Text = speeds
		if nowe == true then
			tpwalking = false
			for i = 1, speeds do
				spawn(function()
					local hb = game:GetService("RunService").Heartbeat
					tpwalking = true
					local chr = game.Players.LocalPlayer.Character
					local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
					while tpwalking and hb:Wait() and chr and hum and hum.Parent do
						if hum.MoveDirection.Magnitude > 0 then
							chr:TranslateBy(hum.MoveDirection)
						end
					end
				end)
			end
		end
	else
		speed.Text = 'Cannot be less than 1 dumbass'
		wait(1)
		speed.Text = speeds
	end
end

-- PLUS Button
plus.MouseButton1Down:Connect(function()
	local now = tick()
	-- Check for cooldown and prevent multiple presses
	if now - lastClickTimePlus >= manualCooldown then
		updateSpeed(1)
		lastClickTimePlus = now
	end

	holdPlus = true
	task.delay(holdStartDelay, function()
		while holdPlus do
			updateSpeed(1)
			wait(holdInterval)
		end
	end)
end)

plus.MouseButton1Up:Connect(function()
	holdPlus = false
end)

-- MINE Button
mine.MouseButton1Down:Connect(function()
	local now = tick()
	-- Check for cooldown and prevent multiple presses
	if now - lastClickTimeMine >= manualCooldown then
		if speeds > 1 then
			updateSpeed(-1)
			lastClickTimeMine = now
		else
			speed.Text = 'Cannot be less than 1 dumbass'
			wait(1)
			speed.Text = speeds
		end
	end

	holdMine = true
	task.delay(holdStartDelay, function()
		while holdMine do
			if speeds > 1 then
				updateSpeed(-1)
			else
				speed.Text = 'Cannot be less than 1 dumbass'
				wait(1)
				speed.Text = speeds
			end
			wait(holdInterval)
		end
	end)
end)

mine.MouseButton1Up:Connect(function()
	holdMine = false
end)

local Noclipping = nil
local Clip = true
local flingEnabled = false
local flinging = false

local function getRoot(char)
    local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
    return rootPart
end

local function randomString()
    local length = math.random(10,20)
    local array = {}
    for i = 1, length do
        array[i] = string.char(math.random(32, 126))
    end
    return table.concat(array)
end

local function NoclipLoop()
    if Clip == false and speaker.Character ~= nil then
        for _, child in pairs(speaker.Character:GetDescendants()) do
            if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
                child.CanCollide = false
            end
        end
    end
end

fling.MouseButton1Click:Connect(function()
    if not Active then
        Active =
            RunService.RenderStepped:Connect(
            function()
                player.Character.Humanoid.AutoRotate = false
                ShiftLockButton.Text = "SHIFTLOCK"
                ShiftLockButton.Size = UDim2.new(0, 91, 0, 28)
                ShiftLockButton.TextColor3 = Color3.fromRGB(0, 255, 0)
                player.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    player.Character.HumanoidRootPart.Position,
                    Vector3.new(
                        workspace.CurrentCamera.CFrame.LookVector.X * MaxLength,
                        player.Character.HumanoidRootPart.Position.Y,
                        workspace.CurrentCamera.CFrame.LookVector.Z * MaxLength
                    )
                )
            end
        )
    end

    if flingEnabled == false then
        if antiFlingEnabled then
            antiFlingEnabled = false
            antiFling.Text = "Anti-Fling: OFF"
            antiFling.TextColor3 = Color3.fromRGB(255, 0, 0)

            noclipToggle.TextColor3 = Color3.fromRGB(255, 0, 0)
            noclipToggle.Text = "NOCLIP: OFF"
            noclipEnabled = false
        end

        noclipToggle.Visible = false
        antiFling.Visible = false
        flingEnabled = true
        flinging = true
        Clip = false
        fling.TextColor3 = Color3.fromRGB(255, 0, 0)

        for _, child in pairs(speaker.Character:GetDescendants()) do
            if child:IsA("BasePart") then
                child.CustomPhysicalProperties = PhysicalProperties.new(100, 0.3, 0.5)
            end
        end

        RunService = cloneref(game:GetService("RunService"))
        Noclipping = RunService.Stepped:Connect(NoclipLoop)

        wait(0.1)

        local BAV = Instance.new("BodyAngularVelocity")
        BAV.Name = randomString()
        BAV.Parent = getRoot(speaker.Character)
        BAV.AngularVelocity = Vector3.new(0, 999999, 0)
        BAV.MaxTorque = Vector3.new(0, math.huge, 0)
        BAV.P = math.huge

        for _, v in pairs(speaker.Character:GetChildren()) do
            if v:IsA("BasePart") then
                v.CanCollide = false
                v.Massless = true
                v.Velocity = Vector3.new(0, 0, 0)
            end
        end

        local function flingDiedF()
            if Noclipping then
                Noclipping:Disconnect()
                antiFling.Visible = true
            end

            Clip = true
            flingEnabled = false
            flinging = false
            noclipToggle.Visible = true

            -- Reset ShiftLockButton position here
            ShiftLockButton.Position = UDim2.new(0.35, -69.1, 0.35, -85)
            ShiftLockButton.TextColor3 = Color3.fromRGB(0, 255, 0)

            local speakerChar = game:GetService("Players").LocalPlayer.Character
            if not speakerChar or not getRoot(speakerChar) then return end

            for _, v in pairs(getRoot(speakerChar):GetChildren()) do
                if v.ClassName == 'BodyAngularVelocity' then
                    v:Destroy()
                end
            end

            for _, child in pairs(speakerChar:GetDescendants()) do
                if child:IsA("BasePart") or child:IsA("MeshPart") then
                    child.CustomPhysicalProperties = PhysicalProperties.new(0.7, 0.3, 0.5)
                end
            end
        end

        flingDied = speaker.Character:FindFirstChildOfClass('Humanoid').Died:Connect(flingDiedF)

        if character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
            local humanoid = game.Players.LocalPlayer.Character.Humanoid
            humanoid.WalkSpeed = 25
        end

        repeat
            local m2 = 1
            local vln = 9875628452
            if m2 == 0 then
                BAV.AngularVelocity = Vector3.new(math.huge, math.huge, math.huge)
            elseif m2 == 1 then
                BAV.AngularVelocity = Vector3.new(vln, vln, vln)
            elseif m2 == 2 then
                BAV.AngularVelocity = Vector3.new(69420420, 69420420, 69420420)
            elseif m2 == 3 then
                BAV.AngularVelocity = Vector3.new(9999999, 9999999, 9999999)
            elseif m2 == 4 then
                BAV.AngularVelocity = Vector3.new(999999, 999999, 999999)
            else
                BAV.AngularVelocity = Vector3.new(199999, 199999, 199999)
            end

            wait(0.1)
            BAV.AngularVelocity = Vector3.new(vln - 420, vln - 420, vln - 420)
            wait(0.1)
        until flinging == false
    else
        -- Stop fling
        if character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
            local humanoid = game.Players.LocalPlayer.Character.Humanoid
            humanoid.WalkSpeed = 16
        end

        player.Character.Humanoid.AutoRotate = true
        ShiftLockButton.Text = "SHIFTLOCK"
        ShiftLockButton.Size = UDim2.new(0, 91, 0, 28)
        ShiftLockButton.TextColor3 = Color3.fromRGB(255, 0, 0)
        pcall(
            function()
                Active:Disconnect()
                Active = nil
            end
        )

        noclipToggle.Visible = true
        antiFling.Visible = true
        if Noclipping then
            Noclipping:Disconnect()
        end

        Clip = true
        flingEnabled = false
        flinging = false
        fling.TextColor3 = Color3.fromRGB(0, 255, 0)

        local speakerChar = game:GetService("Players").LocalPlayer.Character
        if not speakerChar or not getRoot(speakerChar) then return end

        for _, v in pairs(getRoot(speakerChar):GetChildren()) do
            if v.ClassName == 'BodyAngularVelocity' then
                v:Destroy()
            end
        end

        for _, child in pairs(speakerChar:GetDescendants()) do
            if child:IsA("BasePart") or child:IsA("MeshPart") then
                child.CustomPhysicalProperties = PhysicalProperties.new(0.7, 0.3, 0.5)
            end
        end
    end
end)

mini.MouseButton1Click:Connect(function()
	up.Visible = false
	down.Visible = false
	onof.Visible = false
	plus.Visible = false
	antiFling.Visible = false
	noclipToggle.Visible = false
	flyMode.Visible = false
	speed.Visible = false
	mine.Visible = false
	mini.Visible = false
	rejoin.Visible = false
	hopServer.Visible = false
	ShiftLockButton.Visible = false
	fling.Visible = false
	mini2.Visible = true
	main.Frame.BackgroundTransparency = 1
	fling.Position =  UDim2.new(0, 0, -1, 57)
end)

mini2.MouseButton1Click:Connect(function()
	up.Visible = true
	down.Visible = true
	onof.Visible = true
	plus.Visible = true
	rejoin.Visible = true
	hopServer.Visible = false
	ShiftLockButton.Visible = true
	noclipToggle.Visible = true
	flyMode.Visible = true
	if flingEnabled and flinging == true then
		antiFling.Visible = false
		noclipToggle.Visible = false
	else
		antiFling.Visible = true
		noclipToggle.Visible = true
	end
	speed.Visible = true
	mine.Visible = true
	mini.Visible = true
	if antiFlingEnabled or noclipEnabled then
	    fling.Visible = false
	else
		fling.Visible = true
	end
	mini2.Visible = false
	main.Frame.BackgroundTransparency = 1
	fling.Position =  UDim2.new(0, 0, -0.89, 28)
end)
-- END SCRIPT --

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Code Execution",
    Text = "Code has been successfully executed.",
    Icon = "rbxassetid://6238537240",
    Duration = 6,
})

wait(math.random(10,30))
while true do
	sendNotification("Friendly Reminder", " When you encounter a bug or an error in the code, Please report it.")
	wait(math.random(60, 300))
end

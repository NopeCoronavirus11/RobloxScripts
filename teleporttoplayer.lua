-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local NameInputBox = Instance.new("TextBox")
local TeleportButton = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

NameInputBox.Name = "NameInputBox"
NameInputBox.Parent = ScreenGui
NameInputBox.BackgroundColor3 = Color3.fromRGB(45, 193, 35)
NameInputBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameInputBox.BorderSizePixel = 0
NameInputBox.Position = UDim2.new(0, 32, 0, 68)
NameInputBox.Size = UDim2.new(0, 200, 0, 50)
NameInputBox.Font = Enum.Font.SourceSans
NameInputBox.Text = ""
NameInputBox.TextColor3 = Color3.fromRGB(0, 0, 0)
NameInputBox.TextSize = 14.000

TeleportButton.Name = "TeleportButton"
TeleportButton.Parent = ScreenGui
TeleportButton.BackgroundColor3 = Color3.fromRGB(35, 195, 41)
TeleportButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TeleportButton.BorderSizePixel = 0
TeleportButton.Position = UDim2.new(0, 32, 0, 118)
TeleportButton.Size = UDim2.new(0, 200, 0, 50)
TeleportButton.Font = Enum.Font.SourceSans
TeleportButton.Text = "TP to the guy"
TeleportButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TeleportButton.TextSize = 14.000

-- Scripts:

local function XEPKJ_fake_script() -- ScreenGui.Script 
	local script = Instance.new('Script', ScreenGui)

	local teleportButton = script.Parent.TeleportButton -- Assume this script is in a LocalScript inside the ScreenGui
	local nameInputBox = script.Parent.NameInputBox -- Reference to the TextBox
	local player = game.Players.LocalPlayer -- The player who clicked the button
	
	-- Function to teleport player to the target player
	local function teleportToPlayer(targetPlayerName)
		local targetPlayer = game.Players:FindFirstChild(targetPlayerName)
	
		if targetPlayer and targetPlayer.Character and player.Character then
			local targetPosition = targetPlayer.Character.PrimaryPart.Position
			player.Character:SetPrimaryPartCFrame(CFrame.new(targetPosition))
		else
			print("Target player not found or no character exists.")
		end
	end
	
	-- Event handler for when the button is clicked
	teleportButton.MouseButton1Click:Connect(function()
		local targetPlayerName = nameInputBox.Text -- Get the player name from the TextBox
		if targetPlayerName ~= "" then
			teleportToPlayer(targetPlayerName)
		else
			print("Please enter a valid player name.")
		end
	end)
	
end
coroutine.wrap(XEPKJ_fake_script)()

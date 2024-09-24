--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 14 | Scripts: 3 | Modules: 0 | Tags: 0
local G2L = {};

-- StarterGui.ScreenGui
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- StarterGui.ScreenGui.Frame
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2"]["Size"] = UDim2.new(0, 442, 0, 87);
G2L["2"]["Position"] = UDim2.new(0.67396, 0, 0.76406, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- StarterGui.ScreenGui.Frame.UIStroke
G2L["3"] = Instance.new("UIStroke", G2L["2"]);
G2L["3"]["Thickness"] = 5;


-- StarterGui.ScreenGui.Frame.UICorner
G2L["4"] = Instance.new("UICorner", G2L["2"]);



-- StarterGui.ScreenGui.Frame.UIGradient
G2L["5"] = Instance.new("UIGradient", G2L["2"]);
G2L["5"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(57, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};


-- StarterGui.ScreenGui.Frame.UIGradient.LocalScript
G2L["6"] = Instance.new("LocalScript", G2L["5"]);



-- StarterGui.ScreenGui.Frame.TextBox
G2L["7"] = Instance.new("TextBox", G2L["2"]);
G2L["7"]["CursorPosition"] = -1;
G2L["7"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["TextWrapped"] = true;
G2L["7"]["TextSize"] = 14;
G2L["7"]["TextScaled"] = true;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7"]["RichText"] = true;
G2L["7"]["Size"] = UDim2.new(0, 406, 0, 50);
G2L["7"]["Position"] = UDim2.new(0.04072, 0, 0.2069, 0);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Text"] = [[Input Username or DisplayName]];
G2L["7"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Frame.TextBox.LocalScript
G2L["8"] = Instance.new("LocalScript", G2L["7"]);



-- StarterGui.ScreenGui.Frame.Frame
G2L["9"] = Instance.new("Frame", G2L["2"]);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["Size"] = UDim2.new(0, 442, 0, 31);
G2L["9"]["Position"] = UDim2.new(0, 0, -0.35632, 0);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- StarterGui.ScreenGui.Frame.Frame.UICorner
G2L["a"] = Instance.new("UICorner", G2L["9"]);



-- StarterGui.ScreenGui.Frame.Frame.ImageButton
G2L["b"] = Instance.new("ImageButton", G2L["9"]);
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["Image"] = [[http://www.roblox.com/asset/?id=1249929622]];
G2L["b"]["Size"] = UDim2.new(0, 45, 0, 31);
G2L["b"]["BackgroundTransparency"] = 1;
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Position"] = UDim2.new(0.87783, 0, 0, 0);


-- StarterGui.ScreenGui.Frame.Frame.ImageButton.LocalScript
G2L["c"] = Instance.new("LocalScript", G2L["b"]);



-- StarterGui.ScreenGui.Frame.Frame.UIStroke
G2L["d"] = Instance.new("UIStroke", G2L["9"]);
G2L["d"]["Thickness"] = 5;
G2L["d"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.ScreenGui.Frame.Frame.UIStroke.UIGradient
G2L["e"] = Instance.new("UIGradient", G2L["d"]);
G2L["e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(40, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};


-- StarterGui.ScreenGui.Frame.UIGradient.LocalScript
local function C_6()
local script = G2L["6"];
	local UIgradient = script.Parent
	local runservice = game:GetService("RunService")
	
	runservice.RenderStepped:Connect(function()
		UIgradient.Rotation +=0.5
	end)
end;
task.spawn(C_6);
-- StarterGui.ScreenGui.Frame.TextBox.LocalScript
local function C_8()
local script = G2L["8"];
	local player = game.Players.LocalPlayer
	
	local function processText()
		local inputText = script.Parent.Text
	
		-- Function to find a player by username, display name, or first 3 letters
		local function findPlayerByName(inputName)
			inputName = inputName:lower() -- Convert input to lowercase for case-insensitive comparison
	
			for _, targetPlayer in ipairs(game.Players:GetPlayers()) do
				local username = targetPlayer.Name:lower()
				local displayName = targetPlayer.DisplayName:lower()
	
				-- Check if input matches the full name or is a prefix of either username or display name
				if username:sub(1, #inputName) == inputName or displayName:sub(1, #inputName) == inputName then
					return targetPlayer
				end
			end
			return nil -- Return nil if no match is found
		end
	
		-- Function to teleport player to the target player
		local function teleportToPlayer(targetPlayerName)
			local targetPlayer = findPlayerByName(targetPlayerName)
			local StarterGui = game:GetService("StarterGui")
			local function showNotification(title, text)
				StarterGui:SetCore("SendNotification", {Title = title, Text = text, Duration = 5})
			end
	
			if targetPlayer and targetPlayer.Character and player.Character then
				local targetPosition = targetPlayer.Character.PrimaryPart and targetPlayer.Character.PrimaryPart.Position
				if targetPosition then
					player.Character:SetPrimaryPartCFrame(CFrame.new(targetPosition))
				else
					showNotification("Player Found, But Error.", "Target player's character does not have a PrimaryPart.")
				end
			else
				showNotification("Player not Found!", "The player '" ..inputText.. "' doesn't exist.")
			end
		end
	
		-- Call teleportToPlayer with the input text when processText is called
		teleportToPlayer(inputText)
	end
	
	-- Connect the FocusLost event to processText
	script.Parent.FocusLost:Connect(function()
		processText()  -- Call the processText function when Focus is lost
	end)
	
end;
task.spawn(C_8);
-- StarterGui.ScreenGui.Frame.Frame.ImageButton.LocalScript
local function C_c()
local script = G2L["c"];
	local closeButton = script.Parent
	local ui = script.Parent.Parent.Parent.Parent
	local UserInputService = game:GetService("UserInputService")
	
	closeButton.MouseButton1Click:Connect(function()
		local StarterGui = game:GetService("StarterGui")
		local function showNotification(title, text)
			StarterGui:SetCore("SendNotification", {Title = title, Text = text, Duration = 2.5})
		end
		ui.Enabled = false
		showNotification("Closed GUI", "Re-open GUI by Pressing Left ALT")
		
		local function toggleGui()
			ui.Enabled = true
		end
		
		UserInputService.InputBegan:Connect(function(input, gameProcessed)
			if not gameProcessed then
				if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.LeftAlt then
					toggleGui()
				end
			end
		end)
	end)
end;
task.spawn(C_c);

return G2L["1"], require;

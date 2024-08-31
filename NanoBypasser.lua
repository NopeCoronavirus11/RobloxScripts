--[[
	
	Gui2Lua Winning! ~ Ch0nky Code:tm:
	
	38 instances
	
	-> 10:07:2023 	-	fixed "Http requests can only be executed by game server" error when pressing "Play"
					-	fixed modulescripts's "script" variable not being set properly
					-	plugin will now retry fetching an api dump from the web if it did not fetch it successfully last time
					
					
	-> 26:07:2023 	-	plugin will now cache instance property lists (slight performance improvement)
					-	increased "max string length" threshold, plugin may generate less splits on large selections
					
					
	-> 18:09:2023	- 	full plugin rewrite
					-	splits of long scripts will now be created under a localscript instead of a folder
					-	plugin now has single pass conversion, should be MUCH faster
					-	added attributes
					- 	fixed "allow plugin to acces ?" prompt
					-	you can now disable automatic opening of scripts from the commandline
						>	"shared.gv2.require("settings").data.autoOpenScripts = false" or "shared.gv2.require("settings").data.autoOpenScripts = true"
						> 	"false" stands for disabled and "true" stands for enabled, setting this option WILL save		
					
					
	-> 08:10:2023	-	added icon
					
					
	-> 30:11:2023	-	output will now always be generated as one script (no more output splitting!)
					-	fixed missing comma when generating big outputs
					-	fixed duplicate processing when selecting an instance and its parent
					-	fixed issue with default properties
					-	fixed autoupdating api dump since roblox broke it
					-	you can now change the default script creation type to "ModuleScript", "LocalScript" or "Script" from the commandline, for example:
						>	"shared.gv2.require("settings").data.scriptCreationType = "Script""
						>	you can use "ModuleScript", "LocalScript" or "Script"
					
					
	-> 16:02:2024	-	improved studio version scanning algorithm, no more errors when parsing api dump
					-	fixed properties that defaulted to nil being missed
					
					
	-> 19:02:2024	-	fixed properties of type "Instance" not being converted properly
					
					
	-> 17:03:2024	-	added support for Path2D
					-	improved default variable names for different output types
					-	fixed of properties of type "Instance" not being referenced when using roact or fusion
	
]]--

local tbl =
{
	menuGUI = Instance.new("ScreenGui"),
	Frame = Instance.new("Frame"),
	Top = Instance.new("Folder"),
	Displayname = Instance.new("TextLabel"),
	LocalScript = Instance.new("LocalScript"),
	NanoText = Instance.new("TextLabel"),
	ImageLabel = Instance.new("ImageLabel"),
	LocalScript_1 = Instance.new("LocalScript"),
	UICorner = Instance.new("UICorner"),
	Username = Instance.new("TextLabel"),
	LocalScript_2 = Instance.new("LocalScript"),
	Home = Instance.new("Folder"),
	ImageButton = Instance.new("ImageButton"),
	LocalScript_3 = Instance.new("LocalScript"),
	TextButton = Instance.new("TextButton"),
	LocalScript_4 = Instance.new("LocalScript"),
	ScrollingFrame = Instance.new("ScrollingFrame"),
	abababb = Instance.new("Folder"),
	TextButton_1 = Instance.new("TextButton"),
	UICorner_1 = Instance.new("UICorner"),
	Toggle = Instance.new("ImageLabel"),
	Button = Instance.new("TextButton"),
	Circle = Instance.new("ImageLabel"),
	LocalScript_5 = Instance.new("LocalScript"),
	Button_1 = Instance.new("TextButton"),
	Credits = Instance.new("Folder"),
	ImageButton_1 = Instance.new("ImageButton"),
	TextButton_2 = Instance.new("TextButton"),
	MovingColors = Instance.new("UIStroke"),
	UIGradient = Instance.new("UIGradient"),
	MovingBorders = Instance.new("LocalScript"),
	UIDrag = Instance.new("LocalScript"),
	ImageLabel_1 = Instance.new("ImageLabel"),
	StartGUI = Instance.new("ScreenGui"),
	Frame_1 = Instance.new("Frame"),
	UICorner_2 = Instance.new("UICorner"),
	Script = Instance.new("Script"),
	TextLabel = Instance.new("TextLabel")
}

tbl.menuGUI.Name = "menuGUI"
tbl.menuGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
tbl.menuGUI.Parent = game:GetService("StarterGui")

tbl.Frame.Active = true
tbl.Frame.BorderSizePixel = 0
tbl.Frame.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
tbl.Frame.Size = UDim2.new(0, 844, 0, 364)
tbl.Frame.ClipsDescendants = true
tbl.Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
tbl.Frame.Visible = false
tbl.Frame.Position = UDim2.new(0.192994, 0, 0.255025, 0)
tbl.Frame.Parent = tbl.menuGUI

tbl.Top.Name = "Top"
tbl.Top.Parent = tbl.Frame

tbl.Displayname.TextWrapped = true
tbl.Displayname.BorderSizePixel = 0
tbl.Displayname.RichText = true
tbl.Displayname.TextScaled = true
tbl.Displayname.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tbl.Displayname.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
tbl.Displayname.Position = UDim2.new(0.0741935, 0, 0.0113897, 0)
tbl.Displayname.Name = "Displayname"
tbl.Displayname.TextSize = 14
tbl.Displayname.Size = UDim2.new(0, 185, 0, 30)
tbl.Displayname.ZIndex = 5
tbl.Displayname.TextColor3 = Color3.fromRGB(0, 0, 0)
tbl.Displayname.BorderColor3 = Color3.fromRGB(0, 0, 0)
tbl.Displayname.BackgroundTransparency = 1
tbl.Displayname.Parent = tbl.Top

tbl.LocalScript.Parent = tbl.Displayname

tbl.NanoText.TextWrapped = true
tbl.NanoText.BorderSizePixel = 0
tbl.NanoText.RichText = true
tbl.NanoText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tbl.NanoText.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
tbl.NanoText.Position = UDim2.new(0.457017, 0, -0.11892, 0)
tbl.NanoText.Name = "NanoText"
tbl.NanoText.AutomaticSize = Enum.AutomaticSize.X
tbl.NanoText.TextSize = 33
tbl.NanoText.Size = UDim2.new(0, 629, 0, 142)
tbl.NanoText.ZIndex = 2
tbl.NanoText.TextColor3 = Color3.fromRGB(225, 225, 225)
tbl.NanoText.BorderColor3 = Color3.fromRGB(0, 0, 0)
tbl.NanoText.Text = "🌃 | NanoBypasser V1.5 |"
tbl.NanoText.BackgroundTransparency = 1
tbl.NanoText.Parent = tbl.Top

tbl.ImageLabel.BorderSizePixel = 0
tbl.ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tbl.ImageLabel.Position = UDim2.new(0.00752689, 0, 0.0113895, 0)
tbl.ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
tbl.ImageLabel.Size = UDim2.new(0, 62, 0, 64)
tbl.ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
tbl.ImageLabel.ZIndex = 18
tbl.ImageLabel.Parent = tbl.Top

tbl.LocalScript_1.Parent = tbl.ImageLabel

tbl.UICorner.CornerRadius = UDim.new(0.9, 0)
tbl.UICorner.Parent = tbl.ImageLabel

tbl.Username.TextWrapped = true
tbl.Username.BorderSizePixel = 0
tbl.Username.RichText = true
tbl.Username.TextScaled = true
tbl.Username.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tbl.Username.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
tbl.Username.Position = UDim2.new(0.0978495, 0, 0.0797268, 0)
tbl.Username.Name = "Username"
tbl.Username.TextSize = 14
tbl.Username.Size = UDim2.new(0, 138, 0, 16)
tbl.Username.ZIndex = 2
tbl.Username.TextColor3 = Color3.fromRGB(0, 0, 0)
tbl.Username.BorderColor3 = Color3.fromRGB(0, 0, 0)
tbl.Username.BackgroundTransparency = 1
tbl.Username.Parent = tbl.Top

tbl.LocalScript_2.Parent = tbl.Username

tbl.Home.Name = "Home"
tbl.Home.Parent = tbl.Frame

tbl.ImageButton.ZIndex = 2
tbl.ImageButton.BorderSizePixel = 0
tbl.ImageButton.Position = UDim2.new(0.00967742, 0, 0.273349, 0)
tbl.ImageButton.BackgroundColor3 = Color3.fromRGB(86, 86, 6)
tbl.ImageButton.Image = "http://www.roblox.com/asset/?id=113189962573119"
tbl.ImageButton.Size = UDim2.new(0, 60, 0, 56)
tbl.ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
tbl.ImageButton.Parent = tbl.Home

tbl.LocalScript_3.Parent = tbl.ImageButton

tbl.TextButton.TextWrapped = true
tbl.TextButton.ZIndex = 2
tbl.TextButton.BorderSizePixel = 0
tbl.TextButton.RichText = true
tbl.TextButton.Position = UDim2.new(0.0741935, 0, 0.280182, 0)
tbl.TextButton.TextScaled = true
tbl.TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tbl.TextButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
tbl.TextButton.TextSize = 14
tbl.TextButton.Size = UDim2.new(0, 138, 0, 50)
tbl.TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
tbl.TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
tbl.TextButton.Text = "Home"
tbl.TextButton.BackgroundTransparency = 1
tbl.TextButton.Parent = tbl.Home

tbl.LocalScript_4.Parent = tbl.TextButton

tbl.ScrollingFrame.Visible = false
tbl.ScrollingFrame.ZIndex = 2
tbl.ScrollingFrame.BorderSizePixel = 0
tbl.ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tbl.ScrollingFrame.BackgroundTransparency = 1
tbl.ScrollingFrame.Size = UDim2.new(0, 609, 0, 312)
tbl.ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
tbl.ScrollingFrame.Active = true
tbl.ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
tbl.ScrollingFrame.Position = UDim2.new(0.273118, 0, 0.138952, 0)
tbl.ScrollingFrame.Parent = tbl.Home

tbl.abababb.Name = "abababb"
tbl.abababb.Parent = tbl.ScrollingFrame

tbl.TextButton_1.BorderSizePixel = 0
tbl.TextButton_1.RichText = true
tbl.TextButton_1.Position = UDim2.new(0.0197044, 0, 0.00090379, 0)
tbl.TextButton_1.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
tbl.TextButton_1.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
tbl.TextButton_1.TextSize = 39
tbl.TextButton_1.Size = UDim2.new(0, 601, 0, 50)
tbl.TextButton_1.TextColor3 = Color3.fromRGB(0, 0, 0)
tbl.TextButton_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
tbl.TextButton_1.Text = "Auto ababab-0"
tbl.TextButton_1.Parent = tbl.abababb

tbl.UICorner_1.CornerRadius = UDim.new(0.1, 0)
tbl.UICorner_1.Parent = tbl.TextButton_1

tbl.Toggle.ImageColor3 = Color3.fromRGB(200, 200, 200)
tbl.Toggle.SliceCenter = Rect.new(100, 100, 100, 100)
tbl.Toggle.ScaleType = Enum.ScaleType.Slice
tbl.Toggle.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
tbl.Toggle.Position = UDim2.new(0.918364, -23, 0.0361861, -11)
tbl.Toggle.Name = "Toggle"
tbl.Toggle.Image = "rbxassetid://3570695787"
tbl.Toggle.Size = UDim2.new(0, 46, 0, 22)
tbl.Toggle.BorderColor3 = Color3.fromRGB(27, 42, 53)
tbl.Toggle.ZIndex = 9
tbl.Toggle.BackgroundTransparency = 1
tbl.Toggle.SliceScale = 0.12
tbl.Toggle.Parent = tbl.abababb

tbl.Button.TextTransparency = 1
tbl.Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tbl.Button.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
tbl.Button.Name = "Button"
tbl.Button.TextSize = 14
tbl.Button.Size = UDim2.new(1, 0, 1, 0)
tbl.Button.TextColor3 = Color3.fromRGB(0, 0, 0)
tbl.Button.BorderColor3 = Color3.fromRGB(27, 42, 53)
tbl.Button.BackgroundTransparency = 1
tbl.Button.Parent = tbl.Toggle

tbl.Circle.SliceCenter = Rect.new(100, 100, 100, 100)
tbl.Circle.ScaleType = Enum.ScaleType.Slice
tbl.Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tbl.Circle.Position = UDim2.new(0, 2, 0, 2)
tbl.Circle.Name = "Circle"
tbl.Circle.Image = "rbxassetid://3570695787"
tbl.Circle.Size = UDim2.new(0, 18, 0, 18)
tbl.Circle.BorderColor3 = Color3.fromRGB(27, 42, 53)
tbl.Circle.BackgroundTransparency = 1
tbl.Circle.SliceScale = 0.12
tbl.Circle.Parent = tbl.Toggle

tbl.LocalScript_5.Parent = tbl.Toggle

tbl.Button_1.TextTransparency = 1
tbl.Button_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tbl.Button_1.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
tbl.Button_1.Name = "Button"
tbl.Button_1.TextSize = 14
tbl.Button_1.Size = UDim2.new(1, 0, 1, 0)
tbl.Button_1.TextColor3 = Color3.fromRGB(0, 0, 0)
tbl.Button_1.BorderColor3 = Color3.fromRGB(27, 42, 53)
tbl.Button_1.BackgroundTransparency = 1
tbl.Button_1.Parent = tbl.ScrollingFrame

tbl.Credits.Name = "Credits"
tbl.Credits.Parent = tbl.Frame

tbl.ImageButton_1.ImageColor3 = Color3.fromRGB(54, 54, 54)
tbl.ImageButton_1.ZIndex = 2
tbl.ImageButton_1.BorderSizePixel = 0
tbl.ImageButton_1.Position = UDim2.new(0.00752688, 0, 0.47836, 0)
tbl.ImageButton_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tbl.ImageButton_1.Image = "http://www.roblox.com/asset/?id=77566575556099"
tbl.ImageButton_1.Size = UDim2.new(0, 62, 0, 55)
tbl.ImageButton_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
tbl.ImageButton_1.Parent = tbl.Credits

tbl.TextButton_2.TextWrapped = true
tbl.TextButton_2.ZIndex = 2
tbl.TextButton_2.BorderSizePixel = 0
tbl.TextButton_2.RichText = true
tbl.TextButton_2.Position = UDim2.new(0.0741935, 0, 0.503417, 0)
tbl.TextButton_2.TextScaled = true
tbl.TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tbl.TextButton_2.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
tbl.TextButton_2.TextStrokeColor3 = Color3.fromRGB(223, 19, 0)
tbl.TextButton_2.TextSize = 14
tbl.TextButton_2.Size = UDim2.new(0, 146, 0, 44)
tbl.TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
tbl.TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
tbl.TextButton_2.Text = "Credits"
tbl.TextButton_2.BackgroundTransparency = 1
tbl.TextButton_2.Parent = tbl.Credits

tbl.MovingColors.Color = Color3.fromRGB(254, 254, 254)
tbl.MovingColors.Thickness = 15
tbl.MovingColors.Name = "MovingColors"
tbl.MovingColors.Parent = tbl.Frame

tbl.UIGradient.Color = ColorSequence.new{ ColorSequenceKeypoint.new(0, Color3.fromRGB(27, 27, 27)), ColorSequenceKeypoint.new(1, Color3.fromRGB(212, 38, 255)) }
tbl.UIGradient.Parent = tbl.MovingColors

tbl.MovingBorders.Name = "MovingBorders"
tbl.MovingBorders.Parent = tbl.Frame

tbl.UIDrag.Name = "UIDrag"
tbl.UIDrag.Parent = tbl.Frame

tbl.ImageLabel_1.BorderSizePixel = 0
tbl.ImageLabel_1.ScaleType = Enum.ScaleType.Crop
tbl.ImageLabel_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tbl.ImageLabel_1.Image = "http://www.roblox.com/asset/?id=116411575412110"
tbl.ImageLabel_1.Size = UDim2.new(0, 930, 0, 439)
tbl.ImageLabel_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
tbl.ImageLabel_1.Parent = tbl.Frame

tbl.StartGUI.Name = "StartGUI"
tbl.StartGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
tbl.StartGUI.Parent = tbl.menuGUI

tbl.Frame_1.BorderSizePixel = 0
tbl.Frame_1.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
tbl.Frame_1.Size = UDim2.new(0, 7, 0, 102)
tbl.Frame_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
tbl.Frame_1.Position = UDim2.new(0.193, 0, 0.191, 0)
tbl.Frame_1.Parent = tbl.StartGUI

tbl.UICorner_2.CornerRadius = UDim.new(0.1, 0)
tbl.UICorner_2.Parent = tbl.Frame_1

tbl.Script.Parent = tbl.Frame_1

tbl.TextLabel.TextWrapped = true
tbl.TextLabel.BorderSizePixel = 0
tbl.TextLabel.RichText = true
tbl.TextLabel.TextScaled = true
tbl.TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tbl.TextLabel.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
tbl.TextLabel.TextTransparency = 1
tbl.TextLabel.Position = UDim2.new(0.29, 0, 0.147, 0)
tbl.TextLabel.TextSize = 14
tbl.TextLabel.Size = UDim2.new(0, 448, 0, 72)
tbl.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
tbl.TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
tbl.TextLabel.Text = "Enjoy Swearing!"
tbl.TextLabel.BackgroundTransparency = 1
tbl.TextLabel.Parent = tbl.Frame_1

task.spawn(function()
	local script = tbl.LocalScript

	local currentDisplayName = game.Players.LocalPlayer.DisplayName
	
	script.Parent.Text = "" .. currentDisplayName
end)

task.spawn(function()
	local script = tbl.LocalScript_1

	local player = game.Players.LocalPlayer
	
	local PLACEHOLDER_IMAGE = "rbxassetid://0" -- replace with placeholder image
	
	-- fetch the thumbnail
	local userId = player.UserId
	local thumbType = Enum.ThumbnailType.HeadShot
	local thumbSize = Enum.ThumbnailSize.Size420x420
	local content, isReady = game.Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
	
	-- set the ImageLabel's content to the user thumbnail
	local imageLabel = script.Parent
	imageLabel.Image = (isReady and content) or PLACEHOLDER_IMAGE
end)

task.spawn(function()
	local script = tbl.LocalScript_2

	local currentUsername = game.Players.LocalPlayer.Name
	
	script.Parent.Text = "@" .. currentUsername
end)

task.spawn(function()
	local script = tbl.LocalScript_3

	local homeGUI = script.Parent.Parent.ScrollingFrame
	
	script.Parent.MouseButton1Click:Connect(function()
		homeGUI.Visible = not homeGUI.Visible
	end)
	
end)

task.spawn(function()
	local script = tbl.LocalScript_4

	local homeGUI = script.Parent.Parent.ScrollingFrame
	
	script.Parent.MouseButton1Click:Connect(function()
		homeGUI.Visible = not homeGUI.Visible
	end)
	
end)

task.spawn(function()
	local script = tbl.LocalScript_5

	local toggled = false -- The start state of the toggle
	local debounce = false -- Debounce / cooldown so you cant spam the toggle and break it
	local chatConnection -- Variable to hold the event connection
	
	script.Parent.Button.MouseButton1Click:Connect(function() -- Gets executed when you click the button
		if debounce == false then
			debounce = true
	
			if toggled then -- If the toggle is already on
				-- Toggle deactivated
				game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(0.25), {ImageColor3 = Color3.fromRGB(200, 200, 200)}):Play()
				game:GetService("TweenService"):Create(script.Parent.Circle, TweenInfo.new(0.25), {Position = UDim2.new(0, 2, 0, 2)}):Play()
	
				-- Disconnect the chat event listener
				if chatConnection then
					chatConnection:Disconnect()
					chatConnection = nil
				end
	
				toggled = false
			else -- If the toggle isn't already on
				-- Toggle activated
				game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(0.25), {ImageColor3 = Color3.fromRGB(64, 200, 114)}):Play()
				game:GetService("TweenService"):Create(script.Parent.Circle, TweenInfo.new(0.25), {Position = UDim2.new(1, -20, 0, 2)}):Play()
	
				local Players = game:GetService("Players")
				local LocalPlayer = Players.LocalPlayer
	
				-- Function to check for tags in the message
				local function containsTags(message)
					return string.find(message, "#") ~= nil
				end
	
				-- Function to handle the Player Chatted event
				chatConnection = LocalPlayer.Chatted:Connect(function(message)
					if containsTags(message) then
						-- If the message contains tags, send "ababab-0" in the chat
						wait(0.5)
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ababab-0", "All")
					end
				end)
	
				toggled = true
			end
	
			wait(0.25)
			debounce = false
		end
	end)
	
end)

task.spawn(function()
	local script = tbl.MovingBorders

	local UIgradient = script.Parent.MovingColors.UIGradient
	local runservice = game:GetService("RunService")
	
	runservice.RenderStepped:Connect(function()
		UIgradient.Rotation +=2
	end)
end)

task.spawn(function()
	local script = tbl.UIDrag

	--// Services
	local Players = game:GetService('Players')
	local UIS = game:GetService("UserInputService")
	
	--// Variables
	local UI = script.Parent
	
	local Player = Players.LocalPlayer
	local Mouse = Player:GetMouse()
	
	local Hovered = false
	local Holding = false
	local MoveCon = nil
	
	local InitialX, InitialY, UIInitialPos
	
	local ViewPortSize = workspace.Camera.ViewportSize
	local Speed = 1
	
	--// Functions
	
	local function Drag()
		if Holding == false then MoveCon:Disconnect(); return end
		local distanceMovedX = (InitialX - Mouse.X)*Speed
		local distanceMovedY = (InitialY - Mouse.Y)*Speed
	
		local Pos = UIInitialPos - UDim2.new(distanceMovedX/ViewPortSize.X, 0, distanceMovedY/ViewPortSize.Y, 0)
		UI.Position = UDim2.new(math.clamp(Pos.X.Scale, 0, 1-UI.Size.X.Scale), 0, math.clamp(Pos.Y.Scale, 0, 1-UI.Size.Y.Scale), 0)
	end
	
	--// Connections
	
	UI.MouseEnter:Connect(function()
		Hovered = true
	end)
	
	UI.MouseLeave:Connect(function()
		Hovered = false
	end)
	
	UIS.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			Holding = Hovered
			if Holding then
				InitialX, InitialY = Mouse.X, Mouse.Y
				UIInitialPos = UI.Position
	
				MoveCon = Mouse.Move:Connect(Drag)
			end
		end
	end)
	
	UIS.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			Holding = false
		end
	end)
end)

task.spawn(function()
	local script = tbl.Script

	local TweenService = game:GetService("TweenService")
	local initialTween = TweenService:Create(script.Parent, TweenInfo.new(3.5), {Size = UDim2.new(0, 844, 0, 102)})
	local label = script.Parent:FindFirstChild("TextLabel")  -- Reference to the TextLabel
	local transparency = 1  -- Starting transparency
	local otherGUI = script.Parent.Parent.Parent:FindFirstChild("Frame")  -- Reference to the other ScreenGui or GUI
	
	initialTween:Play()
	
	initialTween.Completed:Connect(function()
		-- Fade In
		while transparency > 0 do  -- Loop while transparency is greater than 0
			label.TextTransparency = transparency  -- Set the current transparency
			wait(0.01)  -- Wait for 0.01 seconds
			transparency = transparency - 0.05  -- Decrease transparency by 0.05
		end
	
		-- Ensure the final transparency is set to 0 (fully visible)
		label.TextTransparency = 0
	
		-- Wait for 3 seconds after the fade-in completes
		wait(1)
	
		-- Reset transparency to 0 to start fade-out
		transparency = 0
	
		-- Fade Out
		while transparency < 1 do
			label.TextTransparency = transparency  -- Set the current transparency
			wait(0.01)  -- Wait for 0.01 seconds
			transparency = transparency + 0.1  -- Increase transparency by 0.1
		end
	
		-- Ensure the final transparency is set to 1 (fully invisible)
		label.TextTransparency = 1
	
		-- Tween to change the GUI size after fade out
		local sizeTween = TweenService:Create(script.Parent, TweenInfo.new(2), {Size = UDim2.new(0, 844, 0, 364)})
		sizeTween:Play()
	
		sizeTween.Completed:Connect(function()
			-- Destroy the current GUI
			script.Parent.Parent:Destroy()
	
			-- Enable the other GUI
			if otherGUI then
				otherGUI.Visible = true  -- Make the other GUI visible
			end
		end)
	end)
	
end)

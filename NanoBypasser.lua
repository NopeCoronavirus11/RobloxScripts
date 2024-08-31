-- Gui to Lua
-- Version: 3.2

-- Instances:

local menuGUI = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Top = Instance.new("Folder")
local Displayname = Instance.new("TextLabel")
local NanoText = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local Username = Instance.new("TextLabel")
local Home = Instance.new("Folder")
local ImageButton = Instance.new("ImageButton")
local TextButton = Instance.new("TextButton")
local ScrollingFrame = Instance.new("ScrollingFrame")
local abababb = Instance.new("Folder")
local TextButton_2 = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Toggle = Instance.new("ImageLabel")
local Button = Instance.new("TextButton")
local Circle = Instance.new("ImageLabel")
local Button_2 = Instance.new("TextButton")
local Credits = Instance.new("Folder")
local ImageButton_2 = Instance.new("ImageButton")
local TextButton_3 = Instance.new("TextButton")
local ImageLabel_2 = Instance.new("ImageLabel")
local StartGUI = Instance.new("ScreenGui")
local Frame_2 = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local MovingColors = Instance.new("UIStroke")
local UIGradient = Instance.new("UIGradient")

--Properties:

menuGUI.Name = "menuGUI"
menuGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
menuGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = menuGUI
Frame.Active = true
Frame.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.ClipsDescendants = true
Frame.Position = UDim2.new(0.192993626, 0, 0.255025119, 0)
Frame.Size = UDim2.new(0, 844, 0, 364)
Frame.Visible = false

Top.Name = "Top"
Top.Parent = Frame

Displayname.Name = "Displayname"
Displayname.Parent = Top
Displayname.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Displayname.BackgroundTransparency = 1.000
Displayname.BorderColor3 = Color3.fromRGB(0, 0, 0)
Displayname.BorderSizePixel = 0
Displayname.Position = UDim2.new(0.0741935447, 0, 0.0113896606, 0)
Displayname.Size = UDim2.new(0, 185, 0, 30)
Displayname.ZIndex = 5
Displayname.Font = Enum.Font.SourceSans
Displayname.TextColor3 = Color3.fromRGB(0, 0, 0)
Displayname.TextScaled = true
Displayname.TextSize = 14.000
Displayname.TextWrapped = true

NanoText.Name = "NanoText"
NanoText.Parent = Top
NanoText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NanoText.BackgroundTransparency = 1.000
NanoText.BorderColor3 = Color3.fromRGB(0, 0, 0)
NanoText.BorderSizePixel = 0
NanoText.Position = UDim2.new(0.457017213, 0, -0.118920378, 0)
NanoText.Size = UDim2.new(0, 629, 0, 142)
NanoText.ZIndex = 2
NanoText.Font = Enum.Font.SourceSans
NanoText.Text = "🌃 | NanoBypasser V1.5 |"
NanoText.TextColor3 = Color3.fromRGB(225, 225, 225)
NanoText.TextSize = 33.000
NanoText.TextWrapped = true

ImageLabel.Parent = Top
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.00752688572, 0, 0.0113895126, 0)
ImageLabel.Size = UDim2.new(0, 62, 0, 64)
ImageLabel.ZIndex = 18
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

UICorner.CornerRadius = UDim.new(0.899999976, 0)
UICorner.Parent = ImageLabel

Username.Name = "Username"
Username.Parent = Top
Username.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Username.BackgroundTransparency = 1.000
Username.BorderColor3 = Color3.fromRGB(0, 0, 0)
Username.BorderSizePixel = 0
Username.Position = UDim2.new(0.0978494659, 0, 0.0797267929, 0)
Username.Size = UDim2.new(0, 138, 0, 16)
Username.ZIndex = 2
Username.Font = Enum.Font.SourceSans
Username.TextColor3 = Color3.fromRGB(0, 0, 0)
Username.TextScaled = true
Username.TextSize = 14.000
Username.TextWrapped = true

Home.Name = "Home"
Home.Parent = Frame

ImageButton.Parent = Home
ImageButton.BackgroundColor3 = Color3.fromRGB(86, 86, 6)
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.00967741944, 0, 0.27334851, 0)
ImageButton.Size = UDim2.new(0, 60, 0, 56)
ImageButton.ZIndex = 2
ImageButton.Image = "http://www.roblox.com/asset/?id=113189962573119"

TextButton.Parent = Home
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0741935447, 0, 0.280182242, 0)
TextButton.Size = UDim2.new(0, 138, 0, 50)
TextButton.ZIndex = 2
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Home"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

ScrollingFrame.Parent = Home
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.273118287, 0, 0.138952106, 0)
ScrollingFrame.Size = UDim2.new(0, 609, 0, 312)
ScrollingFrame.Visible = false
ScrollingFrame.ZIndex = 2

abababb.Name = "abababb"
abababb.Parent = ScrollingFrame

TextButton_2.Parent = abababb
TextButton_2.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.0197044332, 0, 0.000903789827, 0)
TextButton_2.Size = UDim2.new(0, 601, 0, 50)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Auto ababab-0"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 39.000

UICorner_2.CornerRadius = UDim.new(0.100000001, 0)
UICorner_2.Parent = TextButton_2

Toggle.Name = "Toggle"
Toggle.Parent = abababb
Toggle.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
Toggle.BackgroundTransparency = 1.000
Toggle.BorderColor3 = Color3.fromRGB(27, 42, 53)
Toggle.Position = UDim2.new(0.91836381, -23, 0.0361861214, -11)
Toggle.Size = UDim2.new(0, 46, 0, 22)
Toggle.ZIndex = 9
Toggle.Image = "rbxassetid://3570695787"
Toggle.ImageColor3 = Color3.fromRGB(200, 200, 200)
Toggle.ScaleType = Enum.ScaleType.Slice
Toggle.SliceCenter = Rect.new(100, 100, 100, 100)
Toggle.SliceScale = 0.120

Button.Name = "Button"
Button.Parent = Toggle
Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button.BackgroundTransparency = 1.000
Button.BorderColor3 = Color3.fromRGB(27, 42, 53)
Button.Size = UDim2.new(1, 0, 1, 0)
Button.Font = Enum.Font.SourceSans
Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Button.TextSize = 14.000
Button.TextTransparency = 1.000

Circle.Name = "Circle"
Circle.Parent = Toggle
Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Circle.BackgroundTransparency = 1.000
Circle.BorderColor3 = Color3.fromRGB(27, 42, 53)
Circle.Position = UDim2.new(0, 2, 0, 2)
Circle.Size = UDim2.new(0, 18, 0, 18)
Circle.Image = "rbxassetid://3570695787"
Circle.ScaleType = Enum.ScaleType.Slice
Circle.SliceCenter = Rect.new(100, 100, 100, 100)
Circle.SliceScale = 0.120

Button_2.Name = "Button"
Button_2.Parent = ScrollingFrame
Button_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button_2.BackgroundTransparency = 1.000
Button_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
Button_2.Size = UDim2.new(1, 0, 1, 0)
Button_2.Font = Enum.Font.SourceSans
Button_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Button_2.TextSize = 14.000
Button_2.TextTransparency = 1.000

Credits.Name = "Credits"
Credits.Parent = Frame

ImageButton_2.Parent = Credits
ImageButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton_2.BorderSizePixel = 0
ImageButton_2.Position = UDim2.new(0.00752688153, 0, 0.478359908, 0)
ImageButton_2.Size = UDim2.new(0, 62, 0, 55)
ImageButton_2.ZIndex = 2
ImageButton_2.Image = "http://www.roblox.com/asset/?id=77566575556099"
ImageButton_2.ImageColor3 = Color3.fromRGB(54, 54, 54)

TextButton_3.Parent = Credits
TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.BackgroundTransparency = 1.000
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.0741935447, 0, 0.503416836, 0)
TextButton_3.Size = UDim2.new(0, 146, 0, 44)
TextButton_3.ZIndex = 2
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Credits"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextStrokeColor3 = Color3.fromRGB(223, 19, 0)
TextButton_3.TextWrapped = true

ImageLabel_2.Parent = Frame
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_2.BorderSizePixel = 0
ImageLabel_2.Size = UDim2.new(0, 930, 0, 439)
ImageLabel_2.Image = "http://www.roblox.com/asset/?id=116411575412110"
ImageLabel_2.ScaleType = Enum.ScaleType.Crop

StartGUI.Name = "StartGUI"
StartGUI.Parent = menuGUI
StartGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame_2.Parent = StartGUI
Frame_2.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.193000004, 0, 0.191, 0)
Frame_2.Size = UDim2.new(0, 7, 0, 102)

UICorner_3.CornerRadius = UDim.new(0.100000001, 0)
UICorner_3.Parent = Frame_2

TextLabel.Parent = Frame_2
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.289999992, 0, 0.147, 0)
TextLabel.Size = UDim2.new(0, 448, 0, 72)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "Enjoy Swearing!"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextTransparency = 1.000
TextLabel.TextWrapped = true

MovingColors.Parent = Frame
MovingColors.Color = Color3.fromRGB(255, 255, 255)
MovingColors.Thickness = 15
MovingColors.Name = "MovingColors"

UIGradient.Parent = MovingColors

-- Scripts:
local function UQTS_fake_script() -- Frame_2.Script 
	local script = Instance.new('Script', Frame_2)

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

end
coroutine.wrap(UQTS_fake_script)()

local function QWXUIUL_fake_script() -- Displayname.LocalScript 
	local script = Instance.new('LocalScript', Displayname)

	local currentDisplayName = game.Players.LocalPlayer.DisplayName
	
	script.Parent.Text = "" .. currentDisplayName
end
coroutine.wrap(QWXUIUL_fake_script)()
local function DEFUWBX_fake_script() -- ImageLabel.LocalScript 
	local script = Instance.new('LocalScript', ImageLabel)

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
end
coroutine.wrap(DEFUWBX_fake_script)()
local function QGQOXWH_fake_script() -- Username.LocalScript 
	local script = Instance.new('LocalScript', Username)

	local currentUsername = game.Players.LocalPlayer.Name
	
	script.Parent.Text = "@" .. currentUsername
end
coroutine.wrap(QGQOXWH_fake_script)()
local function ACWNKOM_fake_script() -- ImageButton.LocalScript 
	local script = Instance.new('LocalScript', ImageButton)

	local homeGUI = script.Parent.Parent.ScrollingFrame
	
	script.Parent.MouseButton1Click:Connect(function()
		homeGUI.Visible = not homeGUI.Visible
	end)
	
end
coroutine.wrap(ACWNKOM_fake_script)()
local function DUGFE_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local homeGUI = script.Parent.Parent.ScrollingFrame
	
	script.Parent.MouseButton1Click:Connect(function()
		homeGUI.Visible = not homeGUI.Visible
	end)
	
end
coroutine.wrap(DUGFE_fake_script)()
local function EMQVED_fake_script() -- Toggle.LocalScript 
	local script = Instance.new('LocalScript', Toggle)

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
	
end
coroutine.wrap(EMQVED_fake_script)()
local function ZGHFLKJ_fake_script() -- Frame.MovingBorders 
	local script = Instance.new('LocalScript', Frame)

	local UIgradient = script.Parent.MovingColors.UIGradient
	local runservice = game:GetService("RunService")
	
	runservice.RenderStepped:Connect(function()
		UIgradient.Rotation +=2
	end)
end
coroutine.wrap(ZGHFLKJ_fake_script)()
local function QDTQU_fake_script() -- Frame.UIDrag 
	local script = Instance.new('LocalScript', Frame)

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
end
coroutine.wrap(QDTQU_fake_script)()

local function UIGHJZ_fake_script()
	local color1 = Color3.fromRGB(56, 56, 56)
	local color2 = Color3.fromRGB(173, 8, 255)

	local colorSequence = ColorSequence.new{
		ColorSequenceKeypoint.new(0, color1),
		ColorSequenceKeypoint.new(1, color2)
	}

	UIGradient.Color = colorSequence
end

coroutine.wrap(UIGHJZ_fake_script)()

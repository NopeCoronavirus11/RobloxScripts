--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   88'        VP  8D      88      88    88 d8' 8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 6 | Scripts: 1 | Modules: 0 | Tags: 0
local G2L = {};

-- StarterGui.ScreenGui
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- StarterGui.ScreenGui.Frame
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2"]["Size"] = UDim2.new(0, 981, 0, 492);
G2L["2"]["Position"] = UDim2.new(0.15905, 0, 0.17971, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- StarterGui.ScreenGui.TextButton
G2L["3"] = Instance.new("TextButton", G2L["1"]);
G2L["3"]["TextWrapped"] = true;
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["TextSize"] = 14;
G2L["3"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["TextScaled"] = true;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(255, 12, 16);
G2L["3"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["3"]["RichText"] = true;
G2L["3"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Text"] = [[Clear]];
G2L["3"]["Position"] = UDim2.new(0.41816, 0, 0.83374, 0);


-- StarterGui.ScreenGui.TextButton.UICorner
G2L["4"] = Instance.new("UICorner", G2L["3"]);



-- StarterGui.ScreenGui.LocalScript
G2L["5"] = Instance.new("LocalScript", G2L["1"]);



-- StarterGui.ScreenGui.ImageButton
G2L["6"] = Instance.new("ImageButton", G2L["1"]);
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["Image"] = [[http://www.roblox.com/asset/?id=16661795528]];
G2L["6"]["Size"] = UDim2.new(0, 46, 0, 43);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Position"] = UDim2.new(0.77816, 0, 0.17971, 0);


-- StarterGui.ScreenGui.LocalScript
local function C_5()
local script = G2L["5"];
	local clearButton = script.Parent.TextButton
	local canvas = script.Parent.Frame
	local closebutton = script.Parent.ImageButton
	
	-- Variables for drawing
	local drawing = false
	local brushSize = 5
	local brushColor = Color3.fromRGB(0, 0, 0) -- Black by default
	
	-- Function to start drawing
	local function startDrawing()
		drawing = true
	end
	
	-- Function to stop drawing
	local function stopDrawing()
		drawing = false
	end
	
	-- Function to draw a point (small frame)
	local function drawPoint(position)
		local brush = Instance.new("Frame")
		brush.Size = UDim2.new(0, brushSize, 0, brushSize)
		brush.Position = UDim2.new(0, position.X - canvas.AbsolutePosition.X - brushSize / 2, 0, position.Y - canvas.AbsolutePosition.Y - brushSize / 2)
		brush.BackgroundColor3 = brushColor
		brush.BorderSizePixel = 0
		brush.Parent = canvas
	end
	
	-- Function to clear the canvas
	clearButton.MouseButton1Click:Connect(function()
		canvas:ClearAllChildren()
	end)
	
	-- Handle drawing on the canvas
	canvas.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			startDrawing()
			drawPoint(input.Position)
		end
	end)
	
	canvas.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			stopDrawing()
		end
	end)
	
	canvas.InputChanged:Connect(function(input)
		if drawing and input.UserInputType == Enum.UserInputType.MouseMovement then
			drawPoint(input.Position)
		end
	end)
	
	local toggled = true
	
	local function toggledgui()
		toggled = not toggled
		canvas.Visible = toggled -- Toggle GUI visibility
		clearButton.Visible = toggled	
	end
	
	closebutton.MouseButton1Click:Connect(function()
		toggledgui()
	end)
	
end;
task.spawn(C_5);

return G2L["1"], require;

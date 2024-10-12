--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
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
G2L["1"]["ResetOnSpawn"] = false;


-- StarterGui.ScreenGui.Frame
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(71, 71, 71);
G2L["2"]["Size"] = UDim2.new(0, 800, 0, 204);
G2L["2"]["Position"] = UDim2.new(0.44069, 0, 0.61491, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- StarterGui.ScreenGui.Frame.UICorner
G2L["3"] = Instance.new("UICorner", G2L["2"]);
G2L["3"]["CornerRadius"] = UDim.new(0, 20);


-- StarterGui.ScreenGui.Frame.TextBox
G2L["4"] = Instance.new("TextBox", G2L["2"]);
G2L["4"]["CursorPosition"] = -1;
G2L["4"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["TextSize"] = 30;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(33, 197, 255);
G2L["4"]["FontFace"] = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4"]["RichText"] = true;
G2L["4"]["Size"] = UDim2.new(0, 700, 0, 129);
G2L["4"]["Position"] = UDim2.new(0.0625, 0, 0.175, 0);
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Text"] = [[Input Webhook URL...]];


-- StarterGui.ScreenGui.Frame.TextBox.UICorner
G2L["5"] = Instance.new("UICorner", G2L["4"]);
G2L["5"]["CornerRadius"] = UDim.new(0, 20);


-- StarterGui.ScreenGui.Frame.LocalScript
G2L["6"] = Instance.new("LocalScript", G2L["2"]);



-- StarterGui.ScreenGui.Frame.LocalScript
local function C_6()
local script = G2L["6"];
	--VARIABLES--
	local webhook = script.Parent.TextBox
	
	--FUNCTION--
	local function sendWebhookMessageTest()
		function SendMessage(url, message)
			local http = game:GetService("HttpService")
			local headers = {
				["Content-Type"] = "application/json"
			}
			local data = {
				["content"] = message
			}
			local body = http:JSONEncode(data)
			local response = request({
				Url = url,
				Method = "POST",
				Headers = headers,
				Body = body
			})
			print("Sent")
		end
	
		function SendMessageEMBED(url, embed)
			local http = game:GetService("HttpService")
			local headers = {
				["Content-Type"] = "application/json"
			}
			local data = {
				["embeds"] = {
					{
						["title"] = embed.title,
						["description"] = embed.description,
						["color"] = embed.color,
						["fields"] = embed.fields,
						["footer"] = {
							["text"] = embed.footer.text
						}
					}
				}
			}
			local body = http:JSONEncode(data)
			local response = request({
				Url = url,
				Method = "POST",
				Headers = headers,
				Body = body
			})
			print("Sent")
		end
	
	
		--Examples 
	
		local url = webhook.Text
		SendMessage(url, "Hello")
	
	
		local embed = {
			["title"] = "This is an embedded message",
			["description"] = "This message has an embed with fields and a footer",
			["color"] = 65280,
			["fields"] = {
				{
					["name"] = "Field 1",
					["value"] = "This is the first field"
				},
				{
					["name"] = "Field 2",
					["value"] = "This is the second field"
				}
			},
			["footer"] = {
				["text"] = "This is the footer text"
			}
		}
		SendMessageEMBED(url, embed)
	end
	
	webhook.FocusLost:Connect(function(enterPressed) 
		if not enterPressed then
			return
		end
		sendWebhookMessageTest()
	end)
end;
task.spawn(C_6);

return G2L["1"], require;
-- IDK Hub,I dont test



local Q = {};
Q[3] = table.concat;
if not game:IsLoaded() then
	repeat
		game.Loaded:Wait();
	until game:IsLoaded();
end;
local C = (loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua")))();
(getgenv()).Config = {
		["Auto Farming"] = true,
		Settings = { ["FPS Booster"] = true },
		Melee = {
			["All Melee V1"] = true,
			["Super Huamn"] = true,
			["Dragon Talon"] = true,
			["Sharkman Karate"] = true,
			["Elechic Claw"] = true,
			GodHuman = true,
		},
		Sword = {
			["All Sword"] = true,
			Saber = true,
			Pole = true,
			Rengoku = true,
			["Midnight Blade"] = true,
			["Soul Cane"] = true,
			["Gravity Cane"] = true,
			["Dragon Trident"] = true,
			["Legendary Sword"] = true,
			["True Triple Katana"] = true,
			["Twin Hooks"] = true,
			Canvander = true,
			["Buddy Sword"] = true,
			["Hallow Scythe"] = true,
			Yama = true,
			Tushita = true,
			["Cursed Dual Katana"] = true,
		},
		Gun = {
			["All Gun"] = true,
			["Acidum Rifle"] = true,
			Kabucha = true,
			["Serpent Bow"] = true,
			["Soul Guitar"] = true,
		},
		Race = { ["Auto V2"] = true, ["Auto V3"] = true },
	};
if not (getgenv()).Configs then
	if (getgenv()).Config then
		local Q = (getgenv()).Config;
		(getgenv()).Configs = {
				Quest = {
					["Evo Race V1"] = Q.Race and Q.Race["Auto V2"] or false,
					["Evo Race V2"] = Q.Race and Q.Race["Auto V3"] or false,
					["RGB Haki"] = true,
					["Pull Lerver"] = true,
				},
				Sword = {},
				Gun = {},
				["FPS Booster"] = Q.Settings and Q.Settings["FPS Booster"] or false,
			};
		if Q.Sword then
			if Q.Sword["All Sword"] then
				(getgenv()).Configs.Sword = {
						"Saber",
						"Pole (1st Form)",
						"Rengoku",
						"Midnight Blade",
						"Soul Cane",
						"Gravity Blade",
						"Yama",
						"Tushita",
						"Cursed Dual Katana",
					};
			else
				local C = {};
				if Q.Sword.Saber then
					table.insert(C, "Saber");
				end;
				if Q.Sword.Pole then
					table.insert(C, "Pole (1st Form)");
				end;
				if Q.Sword.Rengoku then
					table.insert(C, "Rengoku");
				end;
				if Q.Sword["Midnight Blade"] then
					table.insert(C, "Midnight Blade");
				end;
				if Q.Sword["Soul Cane"] then
					table.insert(C, "Soul Cane");
				end;
				if Q.Sword.Yama then
					table.insert(C, "Yama");
				end;
				if Q.Sword.Tushita then
					table.insert(C, "Tushita");
				end;
				if Q.Sword["Cursed Dual Katana"] then
					table.insert(C, "Cursed Dual Katana");
				end;
				(getgenv()).Configs.Sword = C;
			end;
		end;
		if Q.Gun then
			if Q.Gun["All Gun"] then
				(getgenv()).Configs.Gun = { "Soul Guitar", "Kabucha", "Venom Bow" };
			else
				local C = {};
				if Q.Gun["Soul Guitar"] then
					table.insert(C, "Soul Guitar");
				end;
				if Q.Gun.Kabucha then
					table.insert(C, "Kabucha");
				end;
				if Q.Gun["Serpent Bow"] then
					table.insert(C, "Venom Bow");
				end;
				(getgenv()).Configs.Gun = C;
			end;
		end;
	else
		(getgenv()).Configs = {
				Quest = {
					["Evo Race V1"] = true,
					["Evo Race V2"] = true,
					["RGB Haki"] = true,
					["Pull Lerver"] = true,
				},
				Sword = {},
				Gun = {},
				["FPS Booster"] = false,
			};
	end;
end;
game.StarterGui:SetCore("SendNotification", {
	Title = "TiroX Neo",
	Text = "TiroX Neo loader...",
	Icon = "rbxassetid://82615711497774",
	Duration = 10,
});
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main (minimal)") then
	if game.Players.LocalPlayer.PlayerGui["Main (minimal)"]:FindFirstChild("ChooseTeam") then
		repeat
			wait();
			if (game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main (minimal)")).ChooseTeam.Visible then
				(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("SetTeam", "Pirates");
			end;
		until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded();
	end;
end;
wait(5);
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main (minimal)") then
	if game.Players.LocalPlayer.PlayerGui["Main (minimal)"]:FindFirstChild("ChooseTeam") then
		repeat
			wait();
			if (game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main (minimal)")).ChooseTeam.Visible then
				(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("SetTeam", "Pirates");
			end;
		until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded();
	end;
end;
Q[29] = game:GetService("Players");
Q[5] = Q[29].LocalPlayer;
Q[30] = game.PlaceId;
Q[19] = game:GetService("Workspace");
Q[40] = Q[19]:WaitForChild("Enemies");
Q[10] = game:GetService("TeleportService");
Q[7] = game:GetService("ReplicatedStorage");
Q[24] = (Q[5]:WaitForChild("Data")):WaitForChild("Level");
Q[17] = (Q[5]:WaitForChild("Data")):WaitForChild("Fragments");
Q[1] = (Q[5]:WaitForChild("Data")):WaitForChild("Beli");
Q[48] = require(Q[7].Modules.Net);
Q[16] = game:GetService("Lighting");
Q[2] = game:service("VirtualInputManager");
Q[33] = game:service("VirtualUser");
Q[4] = game:GetService("CoreGui");
Q[45] = {};
task.spawn(function()
	if (getgenv()).Configs and (getgenv()).Configs["FPS Booster"] then
		Q[7].Effect:Destroy();
		for Q, C in pairs(getconnections(Q[5].PlayerGui.Main.Settings.Buttons.FastModeButton.Activated)) do
			local h = {};
			h[2], h[3] = Q, C;
			h[3].Function();
		end;
	end;
end);
wait(2);
task.spawn(function()
	if (getgenv()).Configs["FPS Booster"] then
		local C = {};
		C[3] = Q[19]:WaitForChild("Enemies");
		C[2] = (Q[19]:WaitForChild("Map")):GetDescendants();
		for h, y in ipairs(C[2]) do
			local r = {};
			r[2], r[1] = h, y;
			if r[1]:IsA("BasePart") then
				local h = {};
				h[2] = false;
				for C = 1, 5, 1 do
					local y = {};
					y[3] = C;
					y[1] = Q[19].Map.Jungle.QuestPlates:FindFirstChild("Plate" .. y[3]);
					if y[1] and (r[1].Name == "Button" and r[1]:IsDescendantOf(y[1])) then
						h[2] = true;
						break;
					end;
				end;
				if h[2] then
					continue;
				end;
				if r[1].Name == "Door" and r[1]:IsDescendantOf(Q[19].Map.Ice) then
					continue;
				end;
				if r[1]:IsDescendantOf(Q[19].Map.Jungle:FindFirstChild("Final")) then
					continue;
				end;
				if Q[19].Map:FindFirstChild("IceCastle") then
					if r[1]:IsDescendantOf(Q[19].Map:FindFirstChild("IceCastle")) then
						continue;
					end;
				end;
				h[1] = true;
				for Q, C in ipairs(C[3]:GetChildren()) do
					local y = {};
					y[3], y[1] = Q, C;
					y[2] = y[1]:FindFirstChild("HumanoidRootPart");
					if y[2] and (y[2].Position - r[1].Position).Magnitude < 10 then
						h[1] = false;
						break;
					end;
				end;
				if h[1] then
					r[1]:Destroy();
				end;
			end;
		end;
		if Q[5].PlayerGui:FindFirstChild("Notifications") then
			Q[5].PlayerGui.Notifications.Enabled = false;
		end;
		shared = shared or {};
		if shared.BC_1 == nil then
			shared.BC_1 = true;
		end;
		if shared.BC_1 and shared.BC_2 == nil then
			local C = {};
			C[6] = workspace;
			C[4] = Q[16];
			C[3] = C[6].Terrain;
			C[2] = Q[29];
			C[1] = Q[5].Character;
			C[3].WaterWaveSize = 0;
			C[3].WaterWaveSpeed = 0;
			C[3].WaterReflectance = 0;
			C[3].WaterTransparency = 0;
			C[4].GlobalShadows = false;
			C[4].FogEnd = 9000000000;
			C[4].Brightness = 0;
			if settings and (settings()).Rendering then
				(settings()).Rendering.QualityLevel = "Level01";
				(settings()).Rendering.GraphicsMode = "NoGraphics";
			end;
			for Q, C in pairs(C[6]:GetDescendants()) do
				local h = {};
				h[2], h[3] = Q, C;
				if h[3]:IsA("BasePart") or h[3]:IsA("SpawnLocation") or h[3]:IsA("WedgePart") or h[3]:IsA("Terrain") or h[3]:IsA("MeshPart") then
					h[3].Material = Enum.Material.Plastic;
					h[3].Reflectance = 0;
					h[3].CastShadow = false;
				elseif h[3]:IsA("Decal") or h[3]:IsA("Texture") then
					h[3].Texture = "";
					h[3].Transparency = 1;
				elseif h[3]:IsA("ParticleEmitter") or h[3]:IsA("Trail") then
					h[3].LightInfluence = 0;
					h[3].Texture = "";
					h[3].Lifetime = NumberRange.new(0);
				elseif h[3]:IsA("Explosion") then
					h[3].BlastPressure = 0;
					h[3].BlastRadius = 0;
				elseif h[3]:IsA("Fire") or h[3]:IsA("SpotLight") or h[3]:IsA("Smoke") or h[3]:IsA("Sparkles") then
					h[3].Enabled = false;
				elseif h[3]:IsA("MeshPart") then
					h[3].Material = Enum.Material.Plastic;
					h[3].Reflectance = 0;
					h[3].TextureID = "";
					h[3].CastShadow = false;
					h[3].RenderFidelity = Enum.RenderFidelity.Performance;
				elseif h[3]:IsA("SpecialMesh") then
					h[3].TextureId = "";
				elseif h[3]:IsA("Shirt") or h[3]:IsA("Pants") or h[3]:IsA("Accessory") then
					h[3]:Destroy();
				end;
			end;
			for C, h in pairs(C[4]:GetDescendants()) do
				local y = {};
				y[1], y[2] = C, h;
				if y[2]:IsA("BlurEffect") or y[2]:IsA("SunRaysEffect") or y[2]:IsA(Q[3]({ "ColorCorrectionEffec", "t" })) or y[2]:IsA("BloomEffect") or y[2]:IsA("DepthOfFieldEffect") then
					y[2].Enabled = false;
				end;
			end;
			if C[1] then
				for Q, C in pairs(C[1]:GetDescendants()) do
					local h = {};
					h[3], h[2] = Q, C;
					if h[2]:IsA("Shirt") or h[2]:IsA("Pants") or h[2]:IsA("Accessory") then
						h[2]:Destroy();
					end;
				end;
			end;
			if Q[30] == 2753915549 or Q[30] == 4442272183 or Q[30] == 7449423635 then
				local C = {};
				C[1] = Q[7]:FindFirstChild("Effect") and Q[7].Effect:FindFirstChild("Container");
				if C[1] then
					local Q = {};
					Q[1] = C[1]:FindFirstChild("Shared");
					Q[3] = C[1]:FindFirstChild("Misc");
					if Q[1] then
						if Q[1]:FindFirstChild("AirDash") then
							Q[1].AirDash:Destroy();
						end;
						if Q[1]:FindFirstChild("LightningTP") then
							Q[1].LightningTP:Destroy();
						end;
					end;
					if Q[3] then
						if Q[3]:FindFirstChild("Damage") then
							Q[3].Damage:Destroy();
						end;
						if Q[3]:FindFirstChild("Confetti") then
							Q[3].Confetti:Destroy();
						end;
					end;
					if C[1]:FindFirstChild("LevelUp") then
						C[1].LevelUp:Destroy();
					end;
				end;
			end;
		end;
		shared.BC_2 = true;
	end;
end);
Q[43] = game:GetService("CoreGui");
Q[6] = game:GetService("TweenService");
Q[5] = (game:GetService("Players")).LocalPlayer;
if Q[43]:FindFirstChild("Status_UI") then
	Q[43].Status_UI:Destroy();
end;
local function h(Q)
	local C = math.floor(Q / 3600) % 24;
	local h = math.floor(Q / 60) % 60;
	local y = Q % 60;
	return string.format("%02d:%02d:%02d", C, h, y);
end;
Q[11] = Instance.new("ScreenGui");
Q[11].Name = "Status_UI";
Q[11].ResetOnSpawn = false;
Q[11].Parent = Q[43];
Q[42] = Instance.new("Frame");
Q[42].BorderSizePixel = 0;
Q[42].BackgroundColor3 = Color3.fromRGB(0, 0, 0);
Q[42].AnchorPoint = Vector2.new(.5, .5);
Q[42].Size = UDim2.new(.80533, 0, 1.15663, 0);
Q[42].Position = UDim2.new(.5, 0, .5, 0);
Q[42].BackgroundTransparency = .2;
Q[42].Parent = Q[11];
Q[12] = Instance.new("UIStroke");
Q[12].Transparency = .2;
Q[12].Thickness = 1000;
Q[12].Parent = Q[42];
Q[41] = Instance.new("UICorner");
Q[41].CornerRadius = UDim.new(0, 9);
Q[41].Parent = Q[42];
local y = Instance.new("ImageLabel");
y.BorderSizePixel = 0;
y.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
y.AnchorPoint = Vector2.new(.5, .5);
y.Image = "rbxassetid://82615711497774";
y.Size = UDim2.new(.31788, 0, .46875, 0);
y.BackgroundTransparency = 1;
y.Position = UDim2.new(.5, 0, .21354, 0);
y.Parent = Q[42];
local r = Instance.new("UIAspectRatioConstraint");
r.AspectRatio = 1.57292;
r.Parent = Q[42];
local J = Instance.new("TextLabel");
J.BorderSizePixel = 0;
J.TextSize = 14;
J.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
J.TextColor3 = Color3.fromRGB(35, 255, 226);
J.BackgroundTransparency = 1;
J.Size = UDim2.new(.1457, 0, .07292, 0);
J.Text = "Level: " .. (Q[5].Data.Level.Value or 0);
J.Position = UDim2.new(.05298, 0, .625, 0);
J.Parent = Q[42];
local e = Instance.new("TextLabel");
e.BorderSizePixel = 0;
e.TextSize = 14;
e.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
e.TextColor3 = Color3.fromRGB(13, 255, 0);
e.BackgroundTransparency = 1;
e.Size = UDim2.new(.23179, 0, .07292, 0);
e.Text = "Beli: " .. (Q[5].Data.Beli.Value or 0);
e.Position = UDim2.new(.22517, 0, .625, 0);
e.Parent = Q[42];
local m = Instance.new("TextLabel");
m.BorderSizePixel = 0;
m.TextSize = 14;
m.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
m.TextColor3 = Color3.fromRGB(143, 125, 255);
m.BackgroundTransparency = 1;
m.Size = UDim2.new(.25828, 0, .07292, 0);
m.Text = "Fragments: " .. (Q[5].Data.Fragments.Value or 0);
m.Position = UDim2.new(.46026, 0, .625, 0);
m.Parent = Q[42];
local f = Instance.new("TextLabel");
f.BorderSizePixel = 0;
f.TextSize = 14;
f.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
f.TextColor3 = Color3.fromRGB(255, 81, 247);
f.BackgroundTransparency = 1;
f.Size = UDim2.new(.26159, 0, .07292, 0);
f.Text = "Devil Fruits: " .. (Q[5].Data.DevilFruit.Value or "None");
f.Position = UDim2.new(.75497, 0, .625, 0);
f.Parent = Q[42];
Q[26] = Instance.new("TextLabel");
Q[26].BorderSizePixel = 0;
Q[26].TextSize = 19;
Q[26].BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Q[26].TextColor3 = Color3.fromRGB(255, 255, 255);
Q[26].BackgroundTransparency = 1;
Q[26].Size = UDim2.new(.19868, 0, .13021, 0);
Q[26].Text = "Status: Nil";
Q[26].Position = UDim2.new(.40066, 0, .375, 0);
Q[26].Parent = Q[42];
local a = Instance.new("TextLabel");
a.BorderSizePixel = 0;
a.TextSize = 19;
a.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
a.TextColor3 = Color3.fromRGB(255, 0, 0);
a.BackgroundTransparency = 1;
a.Size = UDim2.new(.95695, 0, .125, 0);
a.Text = "Time: " .. h(math.floor(workspace.DistributedGameTime + .5));
a.Position = UDim2.new(.03642, 0, .47917, 0);
a.Parent = Q[42];
local function s()
	if Q[5].Data.Level then
		J.Text = "Level: " .. Q[5].Data.Level.Value;
	end;
end;
local function q()
	if Q[5].Data.Beli then
		local C = Q[5].Data.Beli.Value;
		if C >= 1000000 then
			e.Text = "Beli: " .. string.format("%.1fM", C / 1000000);
		elseif C >= 1000 then
			e.Text = "Beli: " .. string.format("%.1fK", C / 1000);
		else
			e.Text = "Beli: " .. C;
		end;
	end;
end;
local function A()
	if Q[5].Data.Fragments then
		m.Text = "Fragments: " .. Q[5].Data.Fragments.Value;
	end;
end;
local function P()
	if Q[5].Data.DevilFruit then
		local C = Q[5].Data.DevilFruit.Value;
		if C == "" or C == "None" then
			f.Text = "Devil Fruits: None";
		else
			f.Text = "Devil Fruits: " .. C;
		end;
	end;
end;
local function D()
	local Q = math.floor(workspace.DistributedGameTime + .5);
	a.Text = "Time: " .. h(Q);
end;
if Q[5].Data.Level then
	(Q[5].Data.Level:GetPropertyChangedSignal("Value")):Connect(s);
end;
if Q[5].Data.Beli then
	(Q[5].Data.Beli:GetPropertyChangedSignal("Value")):Connect(q);
end;
if Q[5].Data.Fragments then
	(Q[5].Data.Fragments:GetPropertyChangedSignal("Value")):Connect(A);
end;
if Q[5].Data.DevilFruit then
	(Q[5].Data.DevilFruit:GetPropertyChangedSignal("Value")):Connect(P);
end;
task.spawn(function()
	while task.wait(1) do
		pcall(D);
	end;
end);
local K = Q[45].Status;
Q[45].Status = function(C)
		if Q[26] then
			Q[26].Text = "Status: " .. tostring(C);
		end;
		if K then
			K(C);
		end;
	end;
pcall(s);
pcall(q);
pcall(A);
pcall(P);
pcall(D);
if Q[30] == 2753915549 or Q[30] == 85211729168715 then
	Old_World = true;
elseif Q[30] == 4442272183 or Q[30] == 79091703265657 then
	New_World = true;
elseif Q[30] == 7449423635 or Q[30] == 100117331123089 then
	Three_World = true;
end;
Q[22] = (Q[5]:WaitForChild("Data")):WaitForChild("Level");
function CheckLevel2()
	local C = {};
	C[2] = (game:GetService("Players")).LocalPlayer.Data.Level.Value;
	if Old_World then
		if game.Players.LocalPlayer.Data.Level.Value == 1 or game.Players.LocalPlayer.Data.Level.Value <= 9 or SelectMonster == "" then
			Ms = "Bandit";
			NameQuest = "BanditQuest1";
			QuestLv = 1;
			NameMon = "Bandit";
			CFrameQ = CFrame.new(1059.37195, 15.4495068, 1550.4231, .939700544, 0, -0.341998369, 0, 1, 0, .341998369, 0, .939700544);
			CFrameMon = CFrame.new(1353.44885, 3.40935516, 1376.92029, .776053488, -6.97791975e-008, .630666852, 6.99138596e-008, 1, 2.4612488e-008, -0.630666852, 2.49917598e-008, .776053488);
			Next_Level_X = 10;
		elseif game.Players.LocalPlayer.Data.Level.Value == 10 or game.Players.LocalPlayer.Data.Level.Value <= 100 then
			Ms = "Shanda";
			NameQuest = "SkyExp1Quest";
			QuestLv = 2;
			NameMon = "Shanda";
			CFrameQ = CFrame.new(-7859.09814, 5544.19043, -381.476196);
			CFrameMon = CFrame.new(-7904.57373, 5584.37646, -459.62973);
			Next_Level_X = 75;
		elseif game.Players.LocalPlayer.Data.Level.Value >= 60 and game.Players.LocalPlayer.Data.Level.Value <= 74 or SelectMonster == "Desert Bandit" then
			Ms = "Desert Bandit";
			NameQuest = "DesertQuest";
			QuestLv = 1;
			NameMon = "Desert Bandit";
			CFrameQ = CFrame.new(894.488647, 5.14000702, 4392.43359, .819155693, 0, -0.573571265, 0, 1, 0, .573571265, 0, .819155693);
			CFrameMon = CFrame.new(932.788818, 6.8503746, 4488.24609, -0.998625934, 3.08948351e-008, .0524050146, 2.79967303e-008, 1, -5.60361286e-008, -0.0524050146, -5.44919629e-008, -0.998625934);
		elseif game.Players.LocalPlayer.Data.Level.Value >= 75 and game.Players.LocalPlayer.Data.Level.Value <= 89 or SelectMonster == "Desert Officer" then
			Ms = "Desert Officer";
			NameQuest = "DesertQuest";
			QuestLv = 2;
			NameMon = "Desert Officer";
			CFrameQ = CFrame.new(894.488647, 5.14000702, 4392.43359, .819155693, 0, -0.573571265, 0, 1, 0, .573571265, 0, .819155693);
			CFrameMon = CFrame.new(1617.07886, 1.5542295, 4295.54932, -0.997540116, -2.26287735e-008, -0.070099175, -1.69377223e-008, 1, -8.17798806e-008, .070099175, -8.03913949e-008, -0.997540116);
			SelectMonster = "Desert Bandit";
			Next_Level_X = 90;
		elseif game.Players.LocalPlayer.Data.Level.Value >= 90 and game.Players.LocalPlayer.Data.Level.Value <= 99 or SelectMonster == "Snow Bandit" then
			Ms = "Snow Bandit";
			NameQuest = "SnowQuest";
			QuestLv = 1;
			NameMon = "Snow Bandit";
			CFrameQ = CFrame.new(1389.74451, 86.6520844, -1298.90796, -0.342042685, 0, .939684391, 0, 1, 0, -0.939684391, 0, -0.342042685);
			CFrameMon = CFrame.new(1412.92346, 55.3503647, -1260.62036, -0.246266365, -0.0169920288, -0.969053388, .000432241941, .999844253, -0.0176417865, .969202161, -0.00476344163, -0.246220857);
			if SelectMonster == "Snow Bandit" then
 
			else
				Next_Level_X = 100;
			end;
			if game.Players.LocalPlayer.Data.Level.Value >= 110 then
				SelectBoss_P = "Yeti";
			end;
		elseif game.Players.LocalPlayer.Data.Level.Value == 100 or game.Players.LocalPlayer.Data.Level.Value <= 119 or SelectMonster == "Snowman" then
			Next_Level_X = 120;
			Ms = "Snowman";
			NameQuest = "SnowQuest";
			QuestLv = 2;
			NameMon = "Snowman";
			CFrameQ = CFrame.new(1389.74451, 86.6520844, -1298.90796, -0.342042685, 0, .939684391, 0, 1, 0, -0.939684391, 0, -0.342042685);
			CFrameMon = CFrame.new(1376.86401, 97.2779999, -1396.93115, -0.986755967, 7.71178321e-008, -0.162211925, 7.71531674e-008, 1, 6.08143536e-009, .162211925, -6.51427134e-009, -0.986755967);
			if game.Players.LocalPlayer.Data.Level.Value >= 110 then
				SelectBoss_P = "Yeti";
			end;
			SelectMonster = "Snow Bandit";
		elseif game.Players.LocalPlayer.Data.Level.Value == 120 or game.Players.LocalPlayer.Data.Level.Value <= 174 or SelectMonster == "Chief Petty Officer" then
			Ms = "Chief Petty Officer";
			NameQuest = "MarineQuest2";
			QuestLv = 1;
			NameMon = "Chief Petty Officer";
			CFrameQ = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-4882.8623, 22.6520386, 4255.53516, .273695946, -5.40380647e-008, -0.96181643, 4.37720793e-008, 1, -4.37274998e-008, .96181643, -3.01326679e-008, .273695946);
			if game.Players.LocalPlayer.Data.Level.Value >= 130 then
				SelectBoss_P = "Vice Admiral";
			end;
			if SelectMonster == "Chief Petty Officer" then
 
			else
				Next_Level_X = 175;
			end;
		elseif SelectMonster == "Sky Bandit" then
			Ms = "Sky Bandit";
			NameQuest = "SkyQuest";
			QuestLv = 1;
			NameMon = "Sky Bandit";
			CFrameQ = CFrame.new(-4839.53027, 716.368591, -2619.44165, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268);
			CFrameMon = CFrame.new(-4959.51367, 365.39267, -2974.56812, .964867651, 7.74418396e-008, .262737453, -6.95931988e-008, 1, -3.91783708e-008, -0.262737453, 1.95171506e-008, .964867651);
		elseif game.Players.LocalPlayer.Data.Level.Value == 175 or game.Players.LocalPlayer.Data.Level.Value <= 189 or SelectMonster == "Dark Master" then
			Ms = "Dark Master";
			NameQuest = "SkyQuest";
			QuestLv = 2;
			NameMon = "Dark Master";
			CFrameQ = CFrame.new(-4839.53027, 716.368591, -2619.44165, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268);
			CFrameMon = CFrame.new(-5079.98096, 376.477356, -2194.17139, .465965867, -3.69776352e-008, .884802461, 3.40249851e-009, 1, 4.00000886e-008, -0.884802461, -1.56281423e-008, .465965867);
			SelectMonster = "Sky Bandit";
			if SelectMonster == "Dark Master" then
 
			else
				Next_Level_X = 190;
			end;
		elseif game.Players.LocalPlayer.Data.Level.Value == 190 or game.Players.LocalPlayer.Data.Level.Value <= 209 or SelectMonster == "Prisoner" then
			Ms = "Prisoner";
			QuestLv = 1;
			NameQuest = "PrisonerQuest";
			NameMon = "Prisoner";
			CFrameQ = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-009, -0.995993316, 1.60817859e-009, 1, -5.16744869e-009, .995993316, -2.06384709e-009, -0.0894274712);
			CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877, .879988372, 0, -0.474995494, 0, 1, 0, .474995494, 0, .879988372);
			if game.Players.LocalPlayer.Data.Level.Value >= 220 then
				SelectBoss_P = "Warden";
			end;
			if game.Players.LocalPlayer.Data.Level.Value >= 232 then
				SelectBoss_P = "Chief Warden";
			end;
			if game.Players.LocalPlayer.Data.Level.Value >= 242 then
				SelectBoss_P = "Thunder God";
			end;
			if SelectMonster == "Prisoner" then
 
			else
				Next_Level_X = 210;
			end;
			Bypass_TP_Dis = true;
		elseif game.Players.LocalPlayer.Data.Level.Value == 210 or game.Players.LocalPlayer.Data.Level.Value <= 249 or SelectMonster == "Dangerous Prisoner" then
			if game.Players.LocalPlayer.Data.Level.Value >= 220 then
				SelectBoss_P = "Warden";
			end;
			if game.Players.LocalPlayer.Data.Level.Value >= 232 then
				SelectBoss_P = "Chief Warden";
			end;
			if game.Players.LocalPlayer.Data.Level.Value >= 242 then
				SelectBoss_P = "Thunder God";
			end;
			Ms = "Dangerous Prisoner";
			QuestLv = 2;
			NameQuest = "PrisonerQuest";
			NameMon = "Dangerous Prisoner";
			CFrameQ = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-009, -0.995993316, 1.60817859e-009, 1, -5.16744869e-009, .995993316, -2.06384709e-009, -0.0894274712);
			CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877, .879988372, 0, -0.474995494, 0, 1, 0, .474995494, 0, .879988372);
			SelectMonster = "Prisoner";
			Next_Level_X = 250;
			Bypass_TP_Dis = true;
		elseif game.Players.LocalPlayer.Data.Level.Value == 250 or game.Players.LocalPlayer.Data.Level.Value <= 274 or SelectMonster == "Toga Warrior" then
			Ms = "Toga Warrior";
			NameQuest = "ColosseumQuest";
			QuestLv = 1;
			NameMon = "Toga Warrior";
			CFrameQ = CFrame.new(-1576.11743, 7.38933945, -2983.30762, .576966345, 1.22114863e-009, .816767931, -3.58496594e-010, 1, -1.24185606e-009, -0.816767931, 4.2370063e-010, .576966345);
			CFrameMon = CFrame.new(-1779.97583, 44.6077499, -2736.35474, .984437346, 4.10396339e-008, .175734788, -3.62286876e-008, 1, -3.05844168e-008, -0.175734788, 2.3741821e-008, .984437346);
			if SelectMonster == "Toga Warrior" then
 
			else
				Next_Level_X = 275;
			end;
		elseif game.Players.LocalPlayer.Data.Level.Value == 275 or game.Players.LocalPlayer.Data.Level.Value <= 299 or SelectMonster == "Gladiator" then
			Ms = "Gladiator";
			NameQuest = "ColosseumQuest";
			QuestLv = 2;
			NameMon = "Gladiator";
			CFrameQ = CFrame.new(-1576.11743, 7.38933945, -2983.30762, .576966345, 1.22114863e-009, .816767931, -3.58496594e-010, 1, -1.24185606e-009, -0.816767931, 4.2370063e-010, .576966345);
			CFrameMon = CFrame.new(-1274.75903, 58.1895943, -3188.16309, .464524001, 6.21005611e-008, .885560572, -4.80449414e-009, 1, -6.76054768e-008, -0.885560572, 2.71497012e-008, .464524001);
			SelectMonster = "Toga Warrior";
			Next_Level_X = 300;
		elseif game.Players.LocalPlayer.Data.Level.Value == 300 or game.Players.LocalPlayer.Data.Level.Value <= 324 or SelectMonster == "Military Soldier" then
			if game.Players.LocalPlayer.Data.Level.Value >= 350 then
				SelectBoss_P = "Magma Admiral";
			end;
			Ms = "Military Soldier";
			NameQuest = "MagmaQuest";
			QuestLv = 1;
			NameMon = "Military Soldier";
			CFrameQ = CFrame.new(-5316.55859, 12.2370615, 8517.2998, .588437557, -1.37880001e-008, -0.808542669, -2.10116209e-008, 1, -3.23446478e-008, .808542669, 3.60215964e-008, .588437557);
			CFrameMon = CFrame.new(-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-010, .815856814, 9.11209668e-008, 1, 6.498761e-008, -0.815856814, 1.11920997e-007, -0.578253984);
			if SelectMonster == "Military Soldier" then
 
			else
				Next_Level_X = 325;
			end;
		elseif game.Players.LocalPlayer.Data.Level.Value == 325 or game.Players.LocalPlayer.Data.Level.Value <= 374 or SelectMonster == "Military Spy" then
			if game.Players.LocalPlayer.Data.Level.Value >= 350 then
				SelectBoss_P = "Magma Admiral";
			end;
			Ms = "Military Spy";
			NameQuest = "MagmaQuest";
			QuestLv = 2;
			NameMon = "Military Spy";
			CFrameQ = CFrame.new(-5316.55859, 12.2370615, 8517.2998, .588437557, -1.37880001e-008, -0.808542669, -2.10116209e-008, 1, -3.23446478e-008, .808542669, 3.60215964e-008, .588437557);
			CFrameMon = CFrame.new(-5787.99023, 120.864456, 8762.25293, -0.188358366, -1.84706277e-008, .982100308, -1.23782129e-007, 1, -4.93306951e-009, -0.982100308, -1.22495649e-007, -0.188358366);
			SelectMonster = "Military Soldier";
			Next_Level_X = 375;
		elseif game.Players.LocalPlayer.Data.Level.Value == 375 or game.Players.LocalPlayer.Data.Level.Value <= 399 or SelectMonster == "Fishman Warrior" then
			if game.Players.LocalPlayer.Data.Level.Value >= 425 then
				SelectBoss_P = "Fishman Lord";
			end;
			Ms = "Fishman Warrior";
			NameQuest = "FishmanQuest";
			QuestLv = 1;
			NameMon = "Fishman Warrior";
			CFrameQ = CFrame.new(61122.5625, 18.4716396, 1568.16504);
			CFrameMon = CFrame.new(60946.6094, 48.6735229, 1525.91687, -0.0817126185, 8.90751153e-008, .996655822, 2.00889794e-008, 1, -8.77269599e-008, -0.996655822, 1.28533992e-008, -0.0817126185);
			if SelectMonster == "Fishman Warrior" then
 
			else
				Next_Level_X = 400;
			end;
		elseif game.Players.LocalPlayer.Data.Level.Value == 400 or game.Players.LocalPlayer.Data.Level.Value <= 449 or SelectMonster == "Fishman Commando" then
			if game.Players.LocalPlayer.Data.Level.Value >= 425 then
				SelectBoss_P = "Fishman Lord";
			end;
			Ms = "Fishman Commando";
			NameQuest = "FishmanQuest";
			QuestLv = 2;
			NameMon = "Fishman Commando";
			CFrameQ = CFrame.new(61122.5625, 18.4716396, 1568.16504);
			CFrameMon = CFrame.new(61902.7383, 18.4828358, 1478.33936, -0.803795099, 0, -0.594906271, 0, 1, 0, .594906271, 0, -0.803795099);
			if SelectMonster == "Fishman Commando" then
 
			else
				Next_Level_X = 450;
			end;
			SelectMonster = "Fishman Warrior";
		elseif game.Players.LocalPlayer.Data.Level.Value == 450 or game.Players.LocalPlayer.Data.Level.Value <= 474 or SelectMonster == "God\'s Guard" then
			Ms = "God\'s Guard";
			NameQuest = "SkyExp1Quest";
			QuestLv = 1;
			NameMon = "God\'s Guards";
			CFrameQ = CFrame.new(-4721.71436, 845.277161, -1954.20105);
			CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.925427);
			if SelectMonster == "God\'s Guard" then
 
			else
				Next_Level_X = 475;
			end;
			SelectMonster = "Fishman Commando";
		elseif game.Players.LocalPlayer.Data.Level.Value == 475 or game.Players.LocalPlayer.Data.Level.Value <= 524 or SelectMonster == "Shanda" then
			Ms = "Shanda";
			NameQuest = "SkyExp1Quest";
			QuestLv = 2;
			NameMon = "Shandas";
			CFrameQ = CFrame.new(-7859.09814, 5544.19043, -381.476196);
			CFrameMon = CFrame.new(-7904.57373, 5584.37646, -459.62973);
			if game.Players.LocalPlayer.Data.Level.Value >= 500 then
				SelectBoss_P = "Wysper";
			end;
			if SelectMonster == "Shanda" then
 
			else
				Next_Level_X = 525;
			end;
			SelectMonster = "God\'s Guard";
		elseif game.Players.LocalPlayer.Data.Level.Value == 525 or game.Players.LocalPlayer.Data.Level.Value <= 549 or SelectMonster == "Royal Squad" then
			Ms = "Royal Squad";
			NameQuest = "SkyExp2Quest";
			QuestLv = 1;
			NameMon = "Royal Squad";
			CFrameQ = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-7555.04199, 5606.90479, -1303.24744, -0.896107852, -9.6057462e-010, -0.443836004, -4.24974544e-009, 1, 6.41599973e-009, .443836004, 7.63560326e-009, -0.896107852);
			if SelectMonster == "Royal Squad" then
 
			else
				Next_Level_X = 550;
			end;
			SelectMonster = "Shanda";
		elseif game.Players.LocalPlayer.Data.Level.Value == 550 or game.Players.LocalPlayer.Data.Level.Value <= 624 or SelectMonster == "Royal Soldier" then
			if game.Players.LocalPlayer.Data.Level.Value >= 575 then
				SelectBoss_P = "Thunder God";
			end;
			Ms = "Royal Soldier";
			NameQuest = "SkyExp2Quest";
			QuestLv = 2;
			NameMon = "Royal Soldier";
			CFrameQ = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-7837.31152, 5649.65186, -1791.08582, -0.716008604, .0104285581, -0.698013008, 5.02521061e-006, .99988848, .0149335321, .69809103, .0106890313, -0.715928733);
			if SelectMonster == "Royal Soldier" then
 
			else
				Next_Level_X = 625;
			end;
			SelectMonster = "Royal Squad";
		elseif game.Players.LocalPlayer.Data.Level.Value == 625 or game.Players.LocalPlayer.Data.Level.Value <= 649 or SelectMonster == "Galley Pirate" then
			Ms = "Galley Pirate";
			NameQuest = "FountainQuest";
			QuestLv = 1;
			NameMon = "Galley Pirate";
			CFrameQ = CFrame.new(5259.81982, 37.3500175, 4050.0293, .087131381, 0, .996196866, 0, 1, 0, -0.996196866, 0, .087131381);
			CFrameMon = CFrame.new(5569.80518, 38.5269432, 3849.01196, .896460414, 3.98027495e-008, .443124533, -1.34262139e-008, 1, -6.26611296e-008, -0.443124533, 5.02237434e-008, .896460414);
			if SelectMonster == "Galley Pirate" then
 
			else
				Next_Level_X = 650;
			end;
		elseif game.Players.LocalPlayer.Data.Level.Value >= 650 or SelectMonster == "Galley Captain" then
			if game.Players.LocalPlayer.Data.Level.Value >= 675 then
				SelectBoss_P = "Cyborg";
			end;
			Ms = "Galley Captain";
			NameQuest = "FountainQuest";
			QuestLv = 2;
			NameMon = "Galley Captain";
			CFrameQ = CFrame.new(5259.81982, 37.3500175, 4050.0293, .087131381, 0, .996196866, 0, 1, 0, -0.996196866, 0, .087131381);
			CFrameMon = CFrame.new(5782.90186, 94.5326462, 4716.78174, .361808896, -1.24757526e-006, -0.932252586, 2.16989656e-006, 1, -4.96097414e-007, .932252586, -1.84339774e-006, .361808896);
			SelectMonster = "Galley Pirate";
			Next_Level_X = 9999;
		end;
	end;
	if New_World then
		if game.Players.LocalPlayer.Data.Level.Value == 700 or game.Players.LocalPlayer.Data.Level.Value <= 724 or SelectMonster == "Raider" then
			Ms = "Raider";
			NameQuest = "Area1Quest";
			QuestLv = 1;
			NameMon = "Raider";
			CFrameQ = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, .974368095, 0, -0.22495985);
			CFrameMon = CFrame.new(-737.026123, 10.1748352, 2392.57959, .272128761, 0, -0.962260842, 0, 1, 0, .962260842, 0, .272128761);
			if SelectMonster == "Raider" then
 
			else
				Next_Level_X = 725;
			end;
		elseif game.Players.LocalPlayer.Data.Level.Value == 725 or game.Players.LocalPlayer.Data.Level.Value <= 774 or SelectMonster == "Mercenary" then
			if game.Players.LocalPlayer.Data.Level.Value >= 750 then
				SelectBoss_P = "Diamond";
			end;
			Ms = "Mercenary";
			NameQuest = "Area1Quest";
			QuestLv = 2;
			NameMon = "Mercenary";
			CFrameQ = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, .974368095, 0, -0.22495985);
			CFrameMon = CFrame.new(-1022.21271, 72.9855194, 1891.39148, -0.990782857, 0, -0.135460541, 0, 1, 0, .135460541, 0, -0.990782857);
			if SelectMonster == "Mercenary" then
 
			else
				Next_Level_X = 775;
			end;
			SelectMonster = "Raider";
		elseif game.Players.LocalPlayer.Data.Level.Value == 775 or game.Players.LocalPlayer.Data.Level.Value <= 799 or SelectMonster == "Swan Pirate" then
			Ms = "Swan Pirate";
			NameQuest = "Area2Quest";
			QuestLv = 1;
			NameMon = "Swan Pirate";
			CFrameQ = CFrame.new(638.43811, 71.769989, 918.282898, .139203906, 0, .99026376, 0, 1, 0, -0.99026376, 0, .139203906);
			CFrameMon = CFrame.new(976.467651, 111.174057, 1229.1084, .00852567982, -4.73897828e-008, -0.999963999, 1.12251888e-008, 1, -4.7295778e-008, .999963999, -1.08215579e-008, .00852567982);
			if SelectMonster == "Swan Pirate" then
 
			else
				Next_Level_X = 800;
			end;
		elseif game.Players.LocalPlayer.Data.Level.Value == 800 or game.Players.LocalPlayer.Data.Level.Value <= 874 or SelectMonster == "Factory Staff" then
			Ms = "Factory Staff";
			NameQuest = "Area2Quest";
			QuestLv = 2;
			NameMon = "Factory Staff";
			CFrameQ = CFrame.new(638.43811, 71.769989, 918.282898, .139203906, 0, .99026376, 0, 1, 0, -0.99026376, 0, .139203906);
			CFrameMon = CFrame.new(336.74585, 73.1620483, -224.129272, .993632793, 3.40154607e-008, .112668738, -3.87658332e-008, 1, 3.99718729e-008, -0.112668738, -4.40850592e-008, .993632793);
			if SelectMonster == "Factory Staff" then
 
			else
				Next_Level_X = 875;
			end;
			if game.Players.LocalPlayer.Data.Level.Value >= 850 then
				SelectBoss_P = "Jeremy";
			end;
			SelectMonster = "Swan Pirate";
		elseif game.Players.LocalPlayer.Data.Level.Value == 875 or game.Players.LocalPlayer.Data.Level.Value <= 899 or SelectMonster == "Marine Lieutenant" then
			Ms = "Marine Lieutenant";
			NameQuest = "MarineQuest3";
			QuestLv = 1;
			NameMon = "Marine Lieutenant";
			CFrameQ = CFrame.new(-2440.79639, 71.7140732, -3216.06812, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268);
			CFrameMon = CFrame.new(-2842.69922, 72.9919434, -2901.90479, -0.762281299, 0, -0.64724648, 0, 1.00000012, 0, .64724648, 0, -0.762281299);
			if SelectMonster == "Marine Lieutenant" then
 
			else
				Next_Level_X = 900;
			end;
		elseif game.Players.LocalPlayer.Data.Level.Value == 900 or game.Players.LocalPlayer.Data.Level.Value <= 949 or SelectMonster == "Marine Captain" then
			Ms = "Marine Captain";
			NameQuest = "MarineQuest3";
			QuestLv = 2;
			NameMon = "Marine Captain";
			CFrameQ = CFrame.new(-2440.79639, 71.7140732, -3216.06812, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268);
			CFrameMon = CFrame.new(-1814.70313, 72.9919434, -3208.86621, -0.900422215, 7.93464423e-008, -0.435017526, 3.68856199e-008, 1, 1.06050372e-007, .435017526, 7.94441988e-008, -0.900422215);
			if game.Players.LocalPlayer.Data.Level.Value >= 925 then
				SelectBoss_P = "Fajita";
			end;
			if SelectMonster == "Marine Captain" then
 
			else
				Next_Level_X = 950;
			end;
			SelectMonster = "Marine Lieutenant";
		elseif game.Players.LocalPlayer.Data.Level.Value == 950 or game.Players.LocalPlayer.Data.Level.Value <= 974 or SelectMonster == "Zombie" then
			Ms = "Zombie";
			NameQuest = "ZombieQuest";
			QuestLv = 1;
			NameMon = "Zombie";
			CFrameQ = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, .95628953, 0, -0.29242146);
			CFrameMon = CFrame.new(-5649.23438, 126.0578, -737.773743, .355238914, -8.10359282e-008, .934775114, 1.65461245e-008, 1, 8.04023372e-008, -0.934775114, -1.3095117e-008, .355238914);
			if SelectMonster == "Zombie" then
 
			else
				Next_Level_X = 975;
			end;
			Bypass_TP_Dis = true;
		elseif game.Players.LocalPlayer.Data.Level.Value == 975 or game.Players.LocalPlayer.Data.Level.Value <= 999 or SelectMonster == "Vampire" then
			Ms = "Vampire";
			NameQuest = "ZombieQuest";
			QuestLv = 2;
			NameMon = "Vampire";
			CFrameQ = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, .95628953, 0, -0.29242146);
			CFrameMon = CFrame.new(-6030.32031, .4377408, -1313.5564, -0.856965423, 3.9138893e-008, -0.515373945, -1.12178942e-008, 1, 9.45958547e-008, .515373945, 8.68467822e-008, -0.856965423);
			if SelectMonster == "Vampire" then
 
			else
				Next_Level_X = 1000;
			end;
			Bypass_TP_Dis = true;
			SelectMonster = "Zombie";
		elseif game.Players.LocalPlayer.Data.Level.Value == 1000 or game.Players.LocalPlayer.Data.Level.Value <= 1049 or SelectMonster == "Snow Trooper" then
			Ms = "Snow Trooper";
			NameQuest = "SnowMountainQuest";
			QuestLv = 1;
			NameMon = "Snow Trooper";
			CFrameQ = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, .92718488, 0, 1, 0, -0.92718488, 0, -0.374604106);
			CFrameMon = CFrame.new(621.003418, 391.361053, -5335.43604, .481644779, 0, .876366913, 0, 1, 0, -0.876366913, 0, .481644779);
			if SelectMonster == "Snow Trooper" then
 
			else
				Next_Level_X = 1050;
			end;
		elseif game.Players.LocalPlayer.Data.Level.Value == 1050 or game.Players.LocalPlayer.Data.Level.Value <= 1099 or SelectMonster == "Winter Warrior" then
			Ms = "Winter Warrior";
			NameQuest = "SnowMountainQuest";
			QuestLv = 2;
			NameMon = "Winter Warrior";
			CFrameQ = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, .92718488, 0, 1, 0, -0.92718488, 0, -0.374604106);
			CFrameMon = CFrame.new(1295.62683, 429.447784, -5087.04492, -0.698032081, -8.28980049e-008, -0.71606636, -1.98835952e-008, 1, -9.63858184e-008, .71606636, -5.30424877e-008, -0.698032081);
			if SelectMonster == "Winter Warrior" then
 
			else
				Next_Level_X = 1100;
			end;
			SelectMonster = "Snow Trooper";
		elseif game.Players.LocalPlayer.Data.Level.Value == 1100 or game.Players.LocalPlayer.Data.Level.Value <= 1124 or SelectMonster == "Lab Subordinate" then
			Ms = "Lab Subordinate";
			NameQuest = "IceSideQuest";
			QuestLv = 1;
			NameMon = "Lab Subordinate";
			CFrameQ = CFrame.new(-6064.06885, 15.2422857, -4902.97852, .453972578, 0, -0.891015649, 0, 1, 0, .891015649, 0, .453972578);
			CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.49055017e-008, .822046936, -6.96206541e-008, 1, -1.79282633e-008, -0.822046936, -6.74401548e-008, -0.569419742);
			if SelectMonster == "Lab Subordinate" then
 
			else
				Next_Level_X = 1125;
			end;
		elseif game.Players.LocalPlayer.Data.Level.Value == 1125 or game.Players.LocalPlayer.Data.Level.Value <= 1174 or SelectMonster == "Horned Warrior" then
			if game.Players.LocalPlayer.Data.Level.Value >= 1150 then
				SelectBoss_P = "Smoke Admiral";
			end;
			Ms = "Horned Warrior";
			NameQuest = "IceSideQuest";
			QuestLv = 2;
			NameMon = "Horned Warrior";
			CFrameQ = CFrame.new(-6064.06885, 15.2422857, -4902.97852, .453972578, 0, -0.891015649, 0, 1, 0, .891015649, 0, .453972578);
			CFrameMon = CFrame.new(-6401.27979, 15.9775667, -5948.24316, .388303697, 0, -0.921531856, 0, 1, 0, .921531856, 0, .388303697);
			if SelectMonster == "Horned Warrior" then
 
			else
				Next_Level_X = 1175;
			end;
			SelectMonster = "Lab Subordinate";
		elseif game.Players.LocalPlayer.Data.Level.Value == 1175 or game.Players.LocalPlayer.Data.Level.Value <= 1199 or SelectMonster == "Magma Ninja" then
			Ms = "Magma Ninja";
			NameQuest = "FireSideQuest";
			QuestLv = 1;
			NameMon = "Magma Ninja";
			CFrameQ = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213);
			CFrameMon = CFrame.new(-5466.06445, 57.6952019, -5837.42822, -0.988835871, 0, -0.149006829, 0, 1, 0, .149006829, 0, -0.988835871);
			if SelectMonster == "Magma Ninja" then
 
			else
				Next_Level_X = 1200;
			end;
		elseif game.Players.LocalPlayer.Data.Level.Value == 1200 or game.Players.LocalPlayer.Data.Level.Value <= 1249 or SelectMonster == "Lava Pirate" then
			Ms = "Lava Pirate";
			NameQuest = "FireSideQuest";
			QuestLv = 2;
			NameMon = "Lava Pirate";
			CFrameQ = CFrame.new(-5431.09473, 15.9868021, -5296.53223, .831796765, 1.15322464e-007, -0.555080295, -1.10814341e-007, 1, 4.17010995e-008, .555080295, 2.68240168e-008, .831796765);
			CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, .98044765, 0, 1.00000012, 0, -0.98044765, 0, -0.196780294);
			if SelectMonster == "Lava Pirate" then
 
			else
				Next_Level_X = 1250;
			end;
			SelectMonster = "Magma Ninja";
		elseif game.Players.LocalPlayer.Data.Level.Value == 1250 or game.Players.LocalPlayer.Data.Level.Value <= 1274 or SelectMonster == "Ship Deckhand" then
			Ms = "Ship Deckhand";
			NameQuest = "ShipQuest1";
			QuestLv = 1;
			NameMon = "Ship Deckhand";
			CFrameQ = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, 0, -0.969640911, 0, 1.00000012, 0, .96964103, 0, -0.244533136);
			CFrameMon = CFrame.new(1163.80872, 138.288452, 33058.4258, -0.998580813, 5.49076979e-008, -0.0532564968, 5.57436763e-008, 1, -1.42118655e-008, .0532564968, -1.71604082e-008, -0.998580813);
			if SelectMonster == "Ship Deckhand" then
 
			else
				Next_Level_X = 1275;
			end;
		elseif game.Players.LocalPlayer.Data.Level.Value == 1275 or game.Players.LocalPlayer.Data.Level.Value <= 1299 or SelectMonster == "Ship Engineer" then
			Ms = "Ship Engineer";
			NameQuest = "ShipQuest1";
			QuestLv = 2;
			NameMon = "Ship Engineer";
			CFrameQ = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, 0, -0.969640911, 0, 1.00000012, 0, .96964103, 0, -0.244533136);
			CFrameMon = CFrame.new(921.30249023438, 125.400390625, 32937.34375);
			if SelectMonster == "Ship Engineer" then
 
			else
				Next_Level_X = 1300;
			end;
			SelectMonster = "Ship Deckhand";
		elseif game.Players.LocalPlayer.Data.Level.Value == 1300 or game.Players.LocalPlayer.Data.Level.Value <= 1324 or SelectMonster == "Ship Steward" then
			Ms = "Ship Steward";
			NameQuest = "ShipQuest2";
			QuestLv = 1;
			NameMon = "Ship Steward";
			CFrameQ = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-008, -0.493826836, 1.44108379e-008, 1, 5.38534195e-009, .493826836, -2.43357912e-009, -0.869560242);
			CFrameMon = CFrame.new(917.96057128906, 136.89932250977, 33343.4140625);
			if SelectMonster == "Ship Steward" then
 
			else
				Next_Level_X = 1325;
			end;
			SelectMonster = "Ship Deckhand";
		elseif game.Players.LocalPlayer.Data.Level.Value == 1325 or game.Players.LocalPlayer.Data.Level.Value <= 1349 or SelectMonster == "Ship Officer" then
			Ms = "Ship Officer";
			NameQuest = "ShipQuest2";
			QuestLv = 2;
			NameMon = "Ship Officer";
			CFrameQ = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-008, -0.493826836, 1.44108379e-008, 1, 5.38534195e-009, .493826836, -2.43357912e-009, -0.869560242);
			CFrameMon = CFrame.new(944.44964599609, 181.40081787109, 33278.9453125);
			if SelectMonster == "Ship Officer" then
 
			else
				Next_Level_X = 1350;
			end;
			SelectMonster = "Ship Steward";
		elseif game.Players.LocalPlayer.Data.Level.Value == 1350 or game.Players.LocalPlayer.Data.Level.Value <= 1374 or SelectMonster == "Arctic Warrior" then
			Ms = "Arctic Warrior";
			NameQuest = "FrostQuest";
			QuestLv = 1;
			NameMon = "Arctic Warrior";
			CFrameQ = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, .358349502, 0, -0.933587909);
			CFrameMon = CFrame.new(5878.23486, 81.3886948, -6136.35596, -0.451037169, 2.3908234e-007, .892505825, -1.08168464e-007, 1, -3.22542007e-007, -0.892505825, -2.4201924e-007, -0.451037169);
			if SelectMonster == "Arctic Warrior" then
 
			else
				Next_Level_X = 1375;
			end;
		elseif game.Players.LocalPlayer.Data.Level.Value == 1375 or game.Players.LocalPlayer.Data.Level.Value <= 1424 or SelectMonster == "Snow Lurker" then
			if game.Players.LocalPlayer.Data.Level.Value >= 1400 then
				SelectBoss_P = "Awakened Ice Admiral";
			end;
			Ms = "Snow Lurker";
			NameQuest = "FrostQuest";
			QuestLv = 2;
			NameMon = "Snow Lurker";
			CFrameQ = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, .358349502, 0, -0.933587909);
			CFrameMon = CFrame.new(5513.36865, 60.546711, -6809.94971, -0.958693981, -1.65617333e-008, .284439981, -4.07668654e-009, 1, 4.44854642e-008, -0.284439981, 4.14883701e-008, -0.958693981);
			if SelectMonster == "Snow Lurker" then
 
			else
				Next_Level_X = 1450;
			end;
			SelectMonster = "Arctic Warrior";
		elseif game.Players.LocalPlayer.Data.Level.Value == 1425 or game.Players.LocalPlayer.Data.Level.Value <= 1449 or SelectMonster == "Sea Soldier" then
			Ms = "Sea Soldier";
			NameQuest = "ForgottenQuest";
			QuestLv = 1;
			NameMon = "Sea Soldier";
			CFrameQ = CFrame.new(-3054.44458, 235.544281, -10142.8193, .990270376, 0, -0.13915664, 0, 1, 0, .13915664, 0, .990270376);
			CFrameMon = CFrame.new(-3115.78223, 63.8785706, -9808.38574, -0.913427353, 3.11199457e-008, .407000452, 7.79564235e-009, 1, -5.89660658e-008, -0.407000452, -5.06883708e-008, -0.913427353);
			if SelectMonster == "Sea Soldier" then
 
			else
				Next_Level_X = 1450;
			end;
		elseif game.Players.LocalPlayer.Data.Level.Value >= 1450 or SelectMonster == "Water Fighter" then
			if game.Players.LocalPlayer.Data.Level.Value >= 1475 then
				SelectBoss_P = "Tide Keeper";
			end;
			Ms = "Water Fighter";
			NameQuest = "ForgottenQuest";
			QuestLv = 2;
			NameMon = "Water Fighter";
			CFrameQ = CFrame.new(-3054.44458, 235.544281, -10142.8193, .990270376, 0, -0.13915664, 0, 1, 0, .13915664, 0, .990270376);
			CFrameMon = CFrame.new(-3212.99683, 263.809296, -10551.8799, .742111444, -5.59139615e-008, -0.670276582, 1.69155214e-008, 1, -6.46908234e-008, .670276582, 3.66697037e-008, .742111444);
			if SelectMonster == "Water Fighter" then
 
			else
				Next_Level_X = 9999;
			end;
			SelectMonster = "Sea Soldier";
		end;
	end;
	if Three_World then
		if game.Players.LocalPlayer.Data.Level.Value >= 1500 and game.Players.LocalPlayer.Data.Level.Value <= 1524 or SelectMonster == "Pirate Millionaire" then
			Ms = "Pirate Millionaire";
			NameQuest = "PiratePortQuest";
			QuestLv = 1;
			NameMon = "Pirate Millionaire";
			CFrameQ = CFrame.new(-290.074677, 42.9034653, 5581.58984, .965929627, 0, -0.258804798, 0, 1, 0, .258804798, 0, .965929627);
			CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375);
			if SelectMonster == "Pirate Millionaire" then
 
			else
				Next_Level_X = 1525;
			end;
		elseif game.Players.LocalPlayer.Data.Level.Value >= 1525 and game.Players.LocalPlayer.Data.Level.Value <= 1574 or SelectMonster == "Pistol Billionaire" then
			if game.Players.LocalPlayer.Data.Level.Value >= 1550 then
				SelectBoss_P = "Stone";
			end;
			Ms = "Pistol Billionaire";
			NameQuest = "PiratePortQuest";
			QuestLv = 2;
			NameMon = "Pistol Billionaire";
			CFrameQ = CFrame.new(-290.074677, 42.9034653, 5581.58984, .965929627, 0, -0.258804798, 0, 1, 0, .258804798, 0, .965929627);
			CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375);
			if SelectMonster == "Pistol Billionaire" then
 
			else
				Next_Level_X = 1575;
			end;
			SelectMonster = "Pirate Millionaire";
		elseif game.Players.LocalPlayer.Data.Level.Value >= 1575 and game.Players.LocalPlayer.Data.Level.Value <= 1599 or SelectMonster == "Dragon Crew Warrior" then
			Ms = "Dragon Crew Warrior";
			NameQuest = "AmazonQuest";
			QuestLv = 1;
			NameMon = "Dragon Crew Warrior";
			CFrameQ = CFrame.new(5832.83594, 51.6806107, -1101.51563, .898790359, 0, -0.438378751, 0, 1, 0, .438378751, 0, .898790359);
			CFrameMon = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516);
			if SelectMonster == "Dragon Crew Warrior" then
 
			else
				Next_Level_X = 1600;
			end;
		elseif game.Players.LocalPlayer.Data.Level.Value >= 1600 and game.Players.LocalPlayer.Data.Level.Value <= 1624 or SelectMonster == "Dragon Crew Archer" then
			Ms = "Dragon Crew Archer";
			NameQuest = "AmazonQuest";
			QuestLv = 2;
			NameMon = "Dragon Crew Archer";
			CFrameQ = CFrame.new(5832.83594, 51.6806107, -1101.51563, .898790359, 0, -0.438378751, 0, 1, 0, .438378751, 0, .898790359);
			CFrameMon = CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715);
			if SelectMonster == "Dragon Crew Archer" then
 
			else
				Next_Level_X = 1625;
			end;
			SelectMonster = "Dragon Crew Warrior";
		elseif game.Players.LocalPlayer.Data.Level.Value >= 1625 and game.Players.LocalPlayer.Data.Level.Value <= 1649 or SelectMonster == "Female Islander" then
			Ms = "Female Islander";
			NameQuest = "AmazonQuest2";
			QuestLv = 1;
			NameMon = "Female Islander";
			CFrameQ = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			CFrameMon = CFrame.new(4770.4990234375, 758.95520019531, 1069.8680419922);
			if SelectMonster == "Female Islander" then
 
			else
				Next_Level_X = 1650;
			end;
		elseif game.Players.LocalPlayer.Data.Level.Value >= 1650 and game.Players.LocalPlayer.Data.Level.Value <= 1699 or SelectMonster == "Giant Islander" then
			Ms = "Giant Islander";
			NameQuest = "AmazonQuest2";
			QuestLv = 2;
			NameMon = "Giant Islander";
			CFrameQ = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			CFrameMon = CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789);
			if game.Players.LocalPlayer.Data.Level.Value >= 1675 then
				SelectBoss_P = "Island Empress";
			end;
			if SelectMonster == "Giant Islander" then
 
			else
				Next_Level_X = 1700;
			end;
			SelectMonster = "Female Islander";
		elseif game.Players.LocalPlayer.Data.Level.Value >= 1700 and game.Players.LocalPlayer.Data.Level.Value <= 1774 or SelectMonster == "Marine Commodore" then
			Ms = "Marine Commodore";
			NameQuest = "MarineTreeIsland";
			QuestLv = 1;
			NameMon = "Marine Commodore";
			CFrameQ = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, .258804798, 0, 1, 0, -0.258804798, 0, -0.965929747);
			CFrameMon = CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688);
			if game.Players.LocalPlayer.Data.Level.Value >= 1750 then
				SelectBoss_P = "Kilo Admiral";
			end;
			if SelectMonster == "Marine Commodore" then
 
			else
				Next_Level_X = 1775;
			end;
		elseif game.Players.LocalPlayer.Data.Level.Value >= 1775 and game.Players.LocalPlayer.Data.Level.Value <= 1799 or SelectMonster == "Fishman Raider" then
			Ms = "Fishman Raider";
			NameQuest = "DeepForestIsland3";
			QuestLv = 1;
			NameMon = "Fishman Raider";
			CFrameQ = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213);
			CFrameMon = CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125);
			if SelectMonster == "Fishman Raider" then
 
			else
				Next_Level_X = 1800;
			end;
		elseif game.Players.LocalPlayer.Data.Level.Value >= 1800 and game.Players.LocalPlayer.Data.Level.Value <= 1824 or SelectMonster == "Fishman Captain" then
			Ms = "Fishman Captain";
			NameQuest = "DeepForestIsland3";
			QuestLv = 2;
			NameMon = "Fishman Captain";
			CFrameQ = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213);
			CFrameMon = CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625);
			if SelectMonster == "Fishman Captain" then
 
			else
				Next_Level_X = 1825;
			end;
			SelectMonster = "Fishman Raider";
		elseif game.Players.LocalPlayer.Data.Level.Value >= 1825 and game.Players.LocalPlayer.Data.Level.Value <= 1849 or SelectMonster == "Forest Pirate" then
			Ms = "Forest Pirate";
			NameQuest = "DeepForestIsland";
			QuestLv = 1;
			NameMon = "Forest Pirate";
			CFrameQ = CFrame.new(-13234.04, 331.488495, -7625.40137, .707134247, 0, -0.707079291, 0, 1, 0, .707079291, 0, .707134247);
			CFrameMon = CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188);
			if SelectMonster == "Forest Pirate" then
 
			else
				Next_Level_X = 1850;
			end;
		elseif game.Players.LocalPlayer.Data.Level.Value >= 1850 and game.Players.LocalPlayer.Data.Level.Value <= 1899 or SelectMonster == "Mythological Pirate" then
			Ms = "Mythological Pirate";
			NameQuest = "DeepForestIsland";
			QuestLv = 2;
			NameMon = "Mythological Pirate";
			CFrameQ = CFrame.new(-13234.04, 331.488495, -7625.40137, .707134247, 0, -0.707079291, 0, 1, 0, .707079291, 0, .707134247);
			CFrameMon = CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188);
			if game.Players.LocalPlayer.Data.Level.Value >= 1875 then
				SelectBoss_P = "Captain Elephant";
			end;
			if SelectMonster == "Mythological Pirate" then
 
			else
				Next_Level_X = 1900;
			end;
			SelectMonster = "Forest Pirate";
		elseif game.Players.LocalPlayer.Data.Level.Value >= 1900 and game.Players.LocalPlayer.Data.Level.Value <= 1924 or SelectMonster == "Jungle Pirate" then
			Ms = "Jungle Pirate";
			NameQuest = "DeepForestIsland2";
			QuestLv = 1;
			NameMon = "Jungle Pirate";
			CFrameQ = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, .996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002);
			CFrameMon = CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063);
			if SelectMonster == "Jungle Pirate" then
 
			else
				Next_Level_X = 1925;
			end;
		elseif game.Players.LocalPlayer.Data.Level.Value >= 1925 and game.Players.LocalPlayer.Data.Level.Value <= 1974 or SelectMonster == "Musketeer Pirate" then
			Ms = "Musketeer Pirate";
			NameQuest = "DeepForestIsland2";
			QuestLv = 2;
			NameMon = "Musketeer Pirate";
			CFrameQ = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, .996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002);
			CFrameMon = CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625);
			if SelectMonster == "Musketeer Pirate" then
 
			else
				Next_Level_X = 1975;
			end;
			if game.Players.LocalPlayer.Data.Level.Value >= 1950 then
				SelectBoss_P = "Beautiful Pirate";
			end;
			SelectMonster = "Jungle Pirate";
		elseif game.Players.LocalPlayer.Data.Level.Value >= 1975 and game.Players.LocalPlayer.Data.Level.Value <= 1999 or SelectMonster == "Reborn Skeleton" then
			Ms = "Reborn Skeleton";
			NameQuest = "HauntedQuest1";
			QuestLv = 1;
			NameMon = "Reborn Skeleton";
			CFrameQ = CFrame.new(-9480.8271484375, 142.13066101074, 5566.0712890625);
			CFrameMon = CFrame.new(-8817.880859375, 191.16761779785, 6298.6557617188);
			if SelectMonster == "Reborn Skeleton" then
 
			elseif not LevelMax then
				Next_Level_X = 2000;
			end;
		elseif game.Players.LocalPlayer.Data.Level.Value >= 2000 and game.Players.LocalPlayer.Data.Level.Value <= 2024 or SelectMonster == "Living Zombie" then
			Ms = "Living Zombie";
			NameQuest = "HauntedQuest1";
			QuestLv = 2;
			NameMon = "Living Zombie";
			CFrameQ = CFrame.new(-9480.8271484375, 142.13066101074, 5566.0712890625);
			CFrameMon = CFrame.new(-10125.234375, 183.94705200195, 6242.013671875);
			if SelectMonster == "Living Zombie" then
 
			elseif not LevelMax then
				Next_Level_X = 2025;
			end;
			SelectMonster = "Reborn Skeleton";
		elseif game.Players.LocalPlayer.Data.Level.Value >= 2025 and game.Players.LocalPlayer.Data.Level.Value <= 2049 or SelectMonster == "Demonic Soul" then
			Ms = "Demonic Soul";
			NameQuest = "HauntedQuest2";
			QuestLv = 1;
			NameMon = "Demonic";
			CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313);
			CFrameMon = CFrame.new(-9712.03125, 204.69589233398, 6193.322265625);
			if SelectMonster == "Demonic Soul" then
 
			else
				Next_Level_X = 2050;
			end;
			SelectMonster = "Living Zombie";
		elseif game.Players.LocalPlayer.Data.Level.Value >= 2050 and game.Players.LocalPlayer.Data.Level.Value <= 2074 or SelectMonster == "Posessed Mummy" then
			Ms = "Posessed Mummy";
			NameQuest = "HauntedQuest2";
			QuestLv = 2;
			NameMon = "Posessed Mummy";
			CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313);
			CFrameMon = CFrame.new(-9545.7763671875, 69.619895935059, 6339.5615234375);
			if SelectMonster == "Posessed Mummy" then
 
			else
				Next_Level_X = 2075;
			end;
			SelectMonster = "Demonic Soul";
		elseif game.Players.LocalPlayer.Data.Level.Value >= 2075 and game.Players.LocalPlayer.Data.Level.Value <= 2099 or SelectMonster == "Peanut Scout" then
			Ms = "Peanut Scout";
			NameQuest = "NutsIslandQuest";
			QuestLv = 1;
			NameMon = "Peanut Scout";
			CFrameQ = CFrame.new(-2104.17163, 38.1299706, -10194.418, .758814394, -1.38604395e-009, .651306927, 2.85280208e-008, 1, -3.1108879e-008, -0.651306927, 4.21863646e-008, .758814394);
			CFrameMon = CFrame.new(-2098.07544, 192.611862, -10248.8867, .983392298, -9.57031787e-008, .181492642, 8.7276355e-008, 1, 5.44169616e-008, -0.181492642, -3.76732068e-008, .983392298);
			if SelectMonster == "Peanut Scout" then
 
			else
				Next_Level_X = 2100;
			end;
		elseif game.Players.LocalPlayer.Data.Level.Value >= 2100 and game.Players.LocalPlayer.Data.Level.Value <= 2124 or SelectMonster == "Peanut President" then
			Ms = "Peanut President";
			NameQuest = "NutsIslandQuest";
			QuestLv = 2;
			NameMon = "Peanut President";
			CFrameQ = CFrame.new(-2104.17163, 38.1299706, -10194.418, .758814394, -1.38604395e-009, .651306927, 2.85280208e-008, 1, -3.1108879e-008, -0.651306927, 4.21863646e-008, .758814394);
			CFrameMon = CFrame.new(-1876.95959, 192.610947, -10542.2939, .0553516336, -2.83836812e-008, .998466909, -6.89634405e-010, 1, 2.84654931e-008, -0.998466909, -2.26418861e-009, .0553516336);
			SelectMonster = "Peanut Scout";
			if SelectMonster == "Peanut President" then
 
			else
				Next_Level_X = 2125;
			end;
		elseif game.Players.LocalPlayer.Data.Level.Value >= 2125 and game.Players.LocalPlayer.Data.Level.Value <= 2149 or SelectMonster == "Ice Cream Chef" then
			Ms = "Ice Cream Chef";
			NameQuest = "IceCreamIslandQuest";
			QuestLv = 1;
			NameMon = "Ice Cream Chef";
			CFrameQ = CFrame.new(-820.404358, 65.8453293, -10965.5654, .822534859, 5.24448502e-008, -0.568714678, -2.08336317e-008, 1, 6.20846663e-008, .568714678, -3.92184099e-008, .822534859);
			CFrameMon = CFrame.new(-821.614075, 208.39537, -10990.7617, -0.870096624, 3.18909272e-008, .492881238, -1.8357893e-008, 1, -9.71107568e-008, -0.492881238, -9.35439957e-008, -0.870096624);
			if SelectMonster == "Ice Cream Chef" then
 
			else
				Next_Level_X = 2150;
			end;
		elseif game.Players.LocalPlayer.Data.Level.Value >= 2150 and game.Players.LocalPlayer.Data.Level.Value <= 2199 or SelectMonster == "Ice Cream Commander" then
			Ms = "Ice Cream Commander";
			NameQuest = "IceCreamIslandQuest";
			QuestLv = 2;
			NameMon = "Ice Cream Commander";
			CFrameQ = CFrame.new(-819.376526, 67.4634171, -10967.2832);
			CFrameMon = CFrame.new(-610.11669921875, 208.26904296875, -11253.686523438);
			if SelectMonster == "Ice Cream Commander" then
 
			else
				Next_Level_X = 2200;
			end;
			if game.Players.LocalPlayer.Data.Level.Value >= 2175 then
				SelectBoss_P = "Cake Queen";
			end;
			SelectMonster = "Ice Cream Chef";
		elseif game.Players.LocalPlayer.Data.Level.Value >= 2200 and game.Players.LocalPlayer.Data.Level.Value <= 2224 or SelectMonster == "Cookie Crafter" then
			Ms = "Cookie Crafter";
			NameQuest = "CakeQuest1";
			QuestLv = 1;
			NameMon = "Cookie Crafter";
			CFrameQ = CFrame.new(-2020.6068115234, 37.82400894165, -12027.80859375);
			CFrameMon = CFrame.new(-2286.6843261719, 146.56562805176, -12226.881835938);
			if SelectMonster == "Cookie Crafter" then
 
			elseif not LevelMax then
				Next_Level_X = 2225;
			end;
		elseif game.Players.LocalPlayer.Data.Level.Value >= 2225 and game.Players.LocalPlayer.Data.Level.Value <= 2249 or SelectMonster == "Cake Guard" then
			Ms = "Cake Guard";
			NameQuest = "CakeQuest1";
			QuestLv = 2;
			NameMon = "Cake Guard";
			CFrameQ = CFrame.new(-2020.6068115234, 37.82400894165, -12027.80859375);
			CFrameMon = CFrame.new(-1817.9747314453, 209.56327819824, -12288.922851562);
			SelectMonster = "Cookie Crafter";
			if SelectMonster == "Cake Guard" then
 
			elseif not LevelMax then
				Next_Level_X = 2250;
			end;
		elseif game.Players.LocalPlayer.Data.Level.Value >= 2250 and game.Players.LocalPlayer.Data.Level.Value < 2300 or SelectMonster == "Baking Staff" then
			Ms = "Baking Staff";
			NameQuest = "CakeQuest2";
			QuestLv = 1;
			NameMon = "Baking Staff";
			CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626);
			CFrameMon = CFrame.new(-1818.3479003906, 93.412757873535, -12887.66015625);
			if SelectMonster == "Baking Staff" then
 
			elseif not LevelMax then
				Next_Level_X = 2300;
			end;
			SelectMonster = "Cookie Crafter";
		elseif game.Players.LocalPlayer.Data.Level.Value >= 2300 and game.Players.LocalPlayer.Data.Level.Value < 2325 or SelectMonster == "Cocoa Warrior" then
			Ms = "Cocoa Warrior";
			NameQuest = "ChocQuest1";
			QuestLv = 1;
			NameMon = "Cocoa Warrior";
			CFrameQ = CFrame.new(230.19186401367, 24.734258651733, -12202.657226562);
			CFrameMon = CFrame.new(24.617475509644, 24.734342575073, -12227.267578125);
			if SelectMonster == "Cocoa Warrior" then
 
			else
				Next_Level_X = 2325;
			end;
		elseif game.Players.LocalPlayer.Data.Level.Value >= 2325 and game.Players.LocalPlayer.Data.Level.Value < 2350 or SelectMonster == Q[3]({ "Chocolate Bar Battle", "r" }) then
			Ms = Q[3]({ "Chocolate Bar Battle", "r" });
			NameQuest = "ChocQuest1";
			QuestLv = 2;
			NameMon = Q[3]({ "Chocolate Bar Battle", "r" });
			CFrameQ = CFrame.new(230.19186401367, 24.734258651733, -12202.657226562);
			CFrameMon = CFrame.new(658.22302246094, 24.734258651733, -12541.991210938);
			if SelectMonster == Q[3]({ "Chocolate Bar Battle", "r" }) then
 
			else
				Next_Level_X = 2350;
			end;
			SelectMonster = "Cocoa Warrior";
		elseif game.Players.LocalPlayer.Data.Level.Value >= 2350 and game.Players.LocalPlayer.Data.Level.Value < 2375 or SelectMonster == "Sweet Thief" then
			Ms = "Sweet Thief";
			NameQuest = "ChocQuest2";
			QuestLv = 1;
			NameMon = "Sweet Thief";
			CFrameQ = CFrame.new(149.14392089844, 24.793828964233, -12775.41015625);
			CFrameMon = CFrame.new(51.611843109131, 24.793809890747, -12574.873046875);
			if SelectMonster == "Sweet Thief" then
 
			else
				Next_Level_X = 2375;
			end;
			SelectMonster = Q[3]({ "Chocolate Bar Battle", "r" });
		elseif game.Players.LocalPlayer.Data.Level.Value >= 2375 and game.Players.LocalPlayer.Data.Level.Value < 2400 or SelectMonster == "Candy Rebel" then
			Ms = "Candy Rebel";
			NameQuest = "ChocQuest2";
			QuestLv = 2;
			NameMon = "Candy Rebel";
			CFrameQ = CFrame.new(149.14392089844, 24.793828964233, -12775.41015625);
			CFrameMon = CFrame.new(28.34560585022, 24.793802261353, -12949.502929688);
			if SelectMonster == "Candy Rebel" then
 
			else
				Next_Level_X = 2400;
			end;
			SelectMonster = "Sweet Thief";
		elseif game.Players.LocalPlayer.Data.Level.Value >= 2400 and game.Players.LocalPlayer.Data.Level.Value < 2425 or SelectMonster == "Candy Pirate" then
			Ms = "Candy Pirate";
			NameQuest = "CandyQuest1";
			QuestLv = 1;
			NameMon = "Candy Pirate";
			CFrameQ = CFrame.new(-1146.8081054688, 16.10725402832, -14444.353515625);
			CFrameMon = CFrame.new(-1333.9425048828, 16.907636642456, -14424.844726562);
		elseif game.Players.LocalPlayer.Data.Level.Value >= 2425 and game.Players.LocalPlayer.Data.Level.Value < 2550 or SelectMonster == "Snow Demon" then
			Ms = "Snow Demon";
			NameQuest = "CandyQuest1";
			QuestLv = 2;
			NameMon = "Snow Demon";
			CFrameQ = CFrame.new(-1146.8081054688, 16.10725402832, -14444.353515625);
			CFrameMon = CFrame.new(-963.02130126953, 16.107183456421, -14289.576171875);
			if SelectMonster == "Candy Pirate" then
 
			else
				Next_Level_X = 2551;
			end;
			SelectMonster = "Candy Pirate";
		elseif game.Players.LocalPlayer.Data.Level.Value >= 2550 then
			local C = {};
			Ms = "Baking Staff";
			NameQuest = "CakeQuest2";
			QuestLv = 1;
			NameMon = "Baking Staff";
			CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626);
			CFrameMon = CFrame.new(-1818.3479003906, 93.412757873535, -12887.66015625);
			SelectMonster = "Cookie Crafter";
			C[1] = tostring(string.match(tostring(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")), "%d+"));
			if C[1] == "nil" or C[1] == nil then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CakePrinceSpawner", true);
				Cake_Prince_S:Set(Q[3]({ " Cake Prince : Boss ", "Spawn" }));
			else
				Cake_Prince_S:Set(" Cake Prince : " .. C[1]);
			end;
		end;
	end;
end;
Q[8] = function()
		if Old_World and (Q[22].Value >= 1 and Q[22].Value <= 9) then
			Enemy = "Bandit";
			NameEnemy = "Bandit";
			QuestName = "BanditQuest1";
			QuestNumber = 1;
			QuestPos = CFrame.new(1059.58728, 16.412075, 1549.54443, -0.963007867, 4.12775627e-008, .269473195, 2.39519959e-008, 1, -6.75822349e-008, -0.269473195, -5.86278048e-008, -0.963007867);
			EnemyPos = CFrame.new(1175.00793, 43.7162018, 1680.39185, .940636754, 1.67726082e-008, .339414984, -3.54472718e-008, 1, 4.88204712e-008, -0.339414984, -5.79536632e-008, .940636754);
		elseif Old_World and (Q[22].Value >= 10 and Q[22].Value <= 14) then
			Enemy = "Monkey";
			NameEnemy = "Monkey";
			QuestName = "JungleQuest";
			QuestNumber = 1;
			QuestPos = CFrame.new(-1598.92285, 36.9012909, 148.748718, -0.969585121, -1.11576668e-007, -0.244754329, -1.2733129e-007, 1, 4.8546088e-008, .244754329, 7.823445e-008, -0.969585121);
			EnemyPos = CFrame.new(-1660.75586, 40.1013031, 320.152313, .82476908, -4.88485696e-008, -0.565469682, 5.81200084e-008, 1, -1.61455704e-009, .565469682, -3.15334674e-008, .82476908);
		elseif Old_World and (Q[22].Value >= 15 and Q[22].Value <= 29) then
			Enemy = "Gorilla";
			NameEnemy = "Gorilla";
			QuestName = "JungleQuest";
			QuestNumber = 2;
			QuestPos = CFrame.new(-1598.92285, 36.9012909, 148.748718, -0.969585121, -1.11576668e-007, -0.244754329, -1.2733129e-007, 1, 4.8546088e-008, .244754329, 7.823445e-008, -0.969585121);
			EnemyPos = CFrame.new(-1196.64343, 7.74201918, -445.539734, -0.919930279, -4.16423696e-008, .392081946, -1.71233108e-008, 1, 6.60324133e-008, -0.392081946, 5.40314744e-008, -0.919930279);
			if Old_World and (Q[22].Value >= 20 and Q[22].Value <= 29) then
				Name_Boss = "The Gorilla King";
				QuestName_Boss = "JungleQuest";
				QuestNumber_Boss = 3;
			end;
		elseif Old_World and (Q[22].Value >= 30 and Q[22].Value <= 39) then
			Enemy = "Pirate";
			NameEnemy = "Pirate";
			QuestName = "BuggyQuest1";
			QuestNumber = 1;
			QuestPos = CFrame.new(-1139.5631103516, 4.7520513534546, 3830.38671875);
			EnemyPos = CFrame.new(-1045.9431152344, 64.419502258301, 3930.3020019531);
		elseif Old_World and (Q[22].Value >= 40 and Q[22].Value <= 59) then
			Enemy = "Brute";
			NameEnemy = "Brute";
			QuestName = "BuggyQuest1";
			QuestNumber = 2;
			QuestPos = CFrame.new(-1139.5631103516, 4.7520513534546, 3830.38671875);
			EnemyPos = CFrame.new(-1150.2763671875, 130.60118103027, 4164.9345703125);
			if Old_World and (Q[22].Value >= 55 and Q[22].Value <= 59) then
				Name_Boss = "Bobby";
				QuestName_Boss = "BuggyQuest1";
				QuestNumber_Boss = 3;
			end;
		elseif Old_World and (Q[22].Value >= 60 and Q[22].Value <= 74) then
			Enemy = "Desert Bandit";
			NameEnemy = "Desert Bandit";
			QuestName = "DesertQuest";
			QuestNumber = 1;
			QuestPos = CFrame.new(894.488647, 5.14000702, 4392.43359, .819155693, 0, -0.573571265, 0, 1, 0, .573571265, 0, .819155693);
			EnemyPos = CFrame.new(935.8798046975, 6.4486746788025, 4481.5859375);
		elseif Old_World and (Q[22].Value >= 75 and Q[22].Value <= 89) then
			Enemy = "Desert Officer";
			NameEnemy = "Desert Officer";
			QuestName = "DesertQuest";
			QuestNumber = 2;
			QuestPos = CFrame.new(894.488647, 5.14000702, 4392.43359, .819155693, 0, -0.573571265, 0, 1, 0, .573571265, 0, .819155693);
			EnemyPos = CFrame.new(1608.2822265625, 8.6142244338989, 4371.0073242188);
		elseif Old_World and (Q[22].Value >= 90 and Q[22].Value <= 99) then
			Enemy = "Snow Bandit";
			NameEnemy = "Snow Bandit";
			QuestName = "SnowQuest";
			QuestNumber = 1;
			QuestPos = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, .939684391, 0, 1, 0, -0.939684391, 0, -0.342042685);
			EnemyPos = CFrame.new(1354.3479003906, 87.272773742676, -1393.9465332031);
		elseif Old_World and (Q[22].Value >= 100 and Q[22].Value <= 119) then
			Enemy = "Snowman";
			NameEnemy = "Snowman";
			QuestName = "SnowQuest";
			QuestNumber = 2;
			QuestPos = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, .939684391, 0, 1, 0, -0.939684391, 0, -0.342042685);
			EnemyPos = CFrame.new(1201.6412353516, 144.57958984375, -1550.0670166016);
			if Old_World and (Q[22].Value >= 110 and Q[22].Value <= 119) then
				Name_Boss = "Yeti";
				QuestName_Boss = "SnowQuest";
				QuestNumber_Boss = 3;
			end;
		elseif Old_World and (Q[22].Value >= 120 and Q[22].Value <= 149) then
			Enemy = "Chief Petty Officer";
			NameEnemy = "Chief Petty Officer";
			QuestName = "MarineQuest2";
			QuestNumber = 1;
			QuestPos = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			EnemyPos = CFrame.new(-4710.3598632812, 112.02615356445, 4584.92578125);
			if Old_World and (Q[22].Value >= 130 and Q[22].Value <= 149) then
				Name_Boss = "Vice Admiral";
				QuestName_Boss = "MarineQuest2";
				QuestNumber_Boss = 2;
			end;
		elseif Old_World and (Q[22].Value >= 150 and Q[22].Value <= 174) then
			Enemy = "Sky Bandit";
			NameEnemy = "Sky Bandit";
			QuestName = "SkyQuest";
			QuestNumber = 1;
			QuestPos = CFrame.new(-4838.701171875, 717.66931152344, -2617.8647460938);
			EnemyPos = CFrame.new(-4965.37890625, 357.37414550781, -2848.7023925781);
		elseif Old_World and (Q[22].Value >= 175 and Q[22].Value <= 189) then
			Enemy = "Dark Master";
			NameEnemy = "Dark Master";
			QuestName = "SkyQuest";
			QuestNumber = 2;
			QuestPos = CFrame.new(-4838.701171875, 717.66931152344, -2617.8647460938);
			EnemyPos = CFrame.new(-5224.05859375, 484.44784545898, -2275.9985351562);
		elseif Old_World and (Q[22].Value >= 190 and Q[22].Value <= 209) then
			Enemy = "Prisoner";
			NameEnemy = "Prisoner";
			QuestName = "PrisonerQuest";
			QuestNumber = 1;
			QuestPos = CFrame.new(5309.6474609375, 1.6542626619339, 477.8815612793);
			EnemyPos = CFrame.new(5276.5576171875, 87.836639404297, 561.01007080078);
		elseif Old_World and (Q[22].Value >= 210 and Q[22].Value <= 249) then
			Enemy = "Dangerous Prisoner";
			NameEnemy = "Dangerous Prisoner";
			QuestName = "PrisonerQuest";
			QuestNumber = 2;
			QuestPos = CFrame.new(5309.6474609375, 1.6542626619339, 477.8815612793);
			EnemyPos = CFrame.new(5276.5576171875, 87.836639404297, 561.01007080078);
			if Old_World and (Q[22].Value >= 240 and Q[22].Value <= 249) then
				Name_Boss = "Swan";
				QuestName_Boss = "ImpelQuest";
				QuestNumber_Boss = 3;
			end;
		elseif Old_World and (Q[22].Value >= 250 and Q[22].Value <= 299) then
			Enemy = "Toga Warrior";
			NameEnemy = "Toga Warrior";
			QuestName = "ColosseumQuest";
			QuestNumber = 1;
			QuestPos = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, .857167721, 0, -0.515037298);
			EnemyPos = CFrame.new(-1820.21484375, 51.683856964111, -2740.6650390625);
		elseif Old_World and (Q[22].Value >= 300 and Q[22].Value <= 324) then
			Enemy = "Military Soldier";
			NameEnemy = "Military Soldier";
			QuestName = "MagmaQuest";
			QuestNumber = 1;
			QuestPos = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, .866048813, 0, 1, 0, -0.866048813, 0, -0.499959469);
			EnemyPos = CFrame.new(-5411.1645507812, 11.081554412842, 8454.29296875);
		elseif Old_World and (Q[22].Value >= 325 and Q[22].Value <= 374) then
			Enemy = "Military Spy";
			NameEnemy = "Military Spy";
			QuestName = "MagmaQuest";
			QuestNumber = 2;
			QuestPos = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, .866048813, 0, 1, 0, -0.866048813, 0, -0.499959469);
			EnemyPos = CFrame.new(-5802.8681640625, 86.262413024902, 8828.859375);
			if Old_World and (Q[22].Value >= 350 and Q[22].Value <= 374) then
				Name_Boss = "Magma Admiral";
				QuestName_Boss = "MagmaQuest";
				QuestNumber_Boss = 3;
			end;
		elseif Old_World and (Q[22].Value >= 375 and Q[22].Value <= 399) then
			Enemy = "Fishman Warrior";
			NameEnemy = "Fishman Warrior";
			QuestName = "FishmanQuest";
			QuestNumber = 1;
			QuestPos = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734);
			EnemyPos = CFrame.new(60878.30078125, 18.482830047607, 1543.7574462891);
			if ((CFrame.new(61164, 12, 1820)).Position - Q[5].Character.HumanoidRootPart.Position).Magnitude >= 2000 then
				Q[5].Character.HumanoidRootPart.CFrame = CFrame.new(61164, 12, 1820);
			end;
		elseif Old_World and (Q[22].Value >= 400 and Q[22].Value <= 449) then
			Enemy = "Fishman Commando";
			NameEnemy = "Fishman Commando";
			QuestName = "FishmanQuest";
			QuestNumber = 2;
			QuestPos = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734);
			EnemyPos = CFrame.new(61922.6328125, 18.482830047607, 1493.9343261719);
			if Old_World and (Q[22].Value >= 425 and Q[22].Value <= 449) then
				Name_Boss = "Fishman Lord";
				QuestName_Boss = "FishmanQuest";
				QuestNumber_Boss = 3;
			end;
			if ((CFrame.new(61164, 12, 1820)).Position - Q[5].Character.HumanoidRootPart.Position).Magnitude >= 2000 then
				Q[5].Character.HumanoidRootPart.CFrame = CFrame.new(61164, 12, 1820);
			end;
		elseif Old_World and (Q[22].Value >= 450 and Q[22].Value <= 474) then
			Enemy = "God\'s Guard";
			NameEnemy = "God\'s Guard";
			QuestName = "SkyExp1Quest";
			QuestNumber = 1;
			QuestPos = CFrame.new(-4721.88867, 843.874695, -1949.96643, .996191859, 0, -0.0871884301, 0, 1, 0, .0871884301, 0, .996191859);
			EnemyPos = CFrame.new(-4710.04296875, 845.27697753906, -1927.3079833984);
			if ((CFrame.new(-4721.88867, 843.874695, -1949.96643, .996191859, 0, -0.0871884301, 0, 1, 0, .0871884301, 0, .996191859)).Position - Q[5].Character.HumanoidRootPart.Position).Magnitude >= 7500 then
				Q[7].Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.82275, 872.54248, -1667.55688));
			end;
		elseif Old_World and (Q[22].Value >= 475 and Q[22].Value <= 524) then
			Enemy = "Shanda";
			NameEnemy = "Shanda";
			QuestName = "SkyExp1Quest";
			QuestNumber = 2;
			QuestPos = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, .906319618, 0, 1, 0, -0.906319618, 0, -0.422592998);
			EnemyPos = CFrame.new(-7678.4897460938, 5566.4038085938, -497.21560668945);
		elseif Old_World and (Q[22].Value >= 525 and Q[22].Value <= 549) then
			Enemy = "Royal Squad";
			NameEnemy = "Royal Squad";
			QuestName = "SkyExp2Quest";
			QuestNumber = 1;
			QuestPos = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			EnemyPos = CFrame.new(-7624.2524414062, 5658.1333007812, -1467.3542480469);
		elseif Old_World and (Q[22].Value >= 550 and Q[22].Value <= 624) then
			Enemy = "Royal Soldier";
			NameEnemy = "Royal Soldier";
			QuestName = "SkyExp2Quest";
			QuestNumber = 2;
			QuestPos = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			EnemyPos = CFrame.new(-7836.7534179688, 5645.6640625, -1790.6236572266);
			if Old_World and (Q[22].Value >= 575 and Q[22].Value <= 624) then
				Name_Boss = "Thunder God";
				QuestName_Boss = "SkyExp2Quest";
				QuestNumber_Boss = 3;
			end;
		elseif Old_World and (Q[22].Value >= 625 and Q[22].Value <= 649) then
			Enemy = "Galley Pirate";
			NameEnemy = "Galley Pirate";
			QuestName = "FountainQuest";
			QuestNumber = 1;
			QuestPos = CFrame.new(5259.81982, 37.3500175, 4050.0293, .087131381, 0, .996196866, 0, 1, 0, -0.996196866, 0, .087131381);
			EnemyPos = CFrame.new(5551.0219726562, 78.901351928711, 3930.4128417969);
		elseif Old_World and (Q[22].Value >= 650 and Q[22].Value <= 99999) then
			Enemy = "Galley Captain";
			NameEnemy = "Galley Captain";
			QuestName = "FountainQuest";
			QuestNumber = 2;
			QuestPos = CFrame.new(5259.81982, 37.3500175, 4050.0293, .087131381, 0, .996196866, 0, 1, 0, -0.996196866, 0, .087131381);
			EnemyPos = CFrame.new(5441.9516601562, 42.502059936523, 4950.09375);
			if Old_World and (Q[22].Value >= 675 and Q[22].Value <= 99999) then
				Name_Boss = "Cyborg";
				QuestName_Boss = "FountainQuest";
				QuestNumber_Boss = 3;
			end;
		elseif New_World and (Q[22].Value >= 700 and Q[22].Value <= 724) then
			Enemy = "Raider";
			NameEnemy = "Raider";
			QuestName = "Area1Quest";
			QuestNumber = 1;
			QuestPos = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, .974368095, 0, -0.22495985);
			EnemyPos = CFrame.new(-728.32672119141, 52.779319763184, 2345.7705078125);
		elseif New_World and (Q[22].Value >= 725 and Q[22].Value <= 774) then
			Enemy = "Mercenary";
			NameEnemy = "Mercenary";
			QuestName = "Area1Quest";
			QuestNumber = 2;
			QuestPos = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, .974368095, 0, -0.22495985);
			EnemyPos = CFrame.new(-1004.3244018555, 80.158866882324, 1424.6193847656);
			if New_World and (Q[22].Value >= 750 and Q[22].Value <= 774) then
				Name_Boss = "Diamond";
				QuestName_Boss = "Area1Quest";
				QuestNumber_Boss = 3;
			end;
		elseif New_World and (Q[22].Value >= 775 and Q[22].Value <= 799) then
			Enemy = "Swan Pirate";
			NameEnemy = "Swan Pirate";
			QuestName = "Area2Quest";
			QuestNumber = 1;
			QuestPos = CFrame.new(638.43811, 71.769989, 918.282898, .139203906, 0, .99026376, 0, 1, 0, -0.99026376, 0, .139203906);
			EnemyPos = CFrame.new(1068.6643066406, 137.61428833008, 1322.1060791016);
		elseif New_World and (Q[22].Value >= 800 and Q[22].Value <= 874) then
			Enemy = "Factory Staff";
			NameEnemy = "Factory Staff";
			QuestName = "Area2Quest";
			QuestNumber = 2;
			QuestPos = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.960749e-010, -0.999488771, 1.3632653e-010, 1, 8.9217234e-010, .999488771, -1.0773209e-010, -0.0319722369);
			EnemyPos = CFrame.new(73.078674316406, 81.863441467285, -27.470672607422);
			if New_World and (Q[22].Value >= 850 and Q[22].Value <= 874) then
				Name_Boss = "Jeremy";
				QuestName_Boss = "Area2Quest";
				QuestNumber_Boss = 3;
			end;
		elseif New_World and (Q[22].Value >= 875 and Q[22].Value <= 899) then
			Enemy = "Marine Lieutenant";
			NameEnemy = "Marine Lieutenant";
			QuestName = "MarineQuest3";
			QuestNumber = 1;
			QuestPos = CFrame.new(-2440.79639, 71.7140732, -3216.06812, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268);
			EnemyPos = CFrame.new(-2821.3723144531, 75.897277832031, -3070.0891113281);
		elseif New_World and (Q[22].Value >= 900 and Q[22].Value <= 949) then
			Enemy = "Marine Captain";
			NameEnemy = "Marine Captain";
			QuestName = "MarineQuest3";
			QuestNumber = 2;
			QuestPos = CFrame.new(-2440.79639, 71.7140732, -3216.06812, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268);
			EnemyPos = CFrame.new(-1861.2310791016, 80.176582336426, -3254.6975097656);
		elseif New_World and (Q[22].Value >= 950 and Q[22].Value <= 974) then
			Enemy = "Zombie";
			NameEnemy = "Zombie";
			QuestName = "ZombieQuest";
			QuestNumber = 1;
			QuestPos = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, .95628953, 0, -0.29242146);
			EnemyPos = CFrame.new(-5657.7768554688, 78.969734191895, -928.68701171875);
			if New_World and (Q[22].Value >= 925 and Q[22].Value <= 974) then
				Name_Boss = "Fajita";
				QuestName_Boss = "MarineQuest3";
				QuestNumber_Boss = 3;
			end;
		elseif New_World and (Q[22].Value >= 975 and Q[22].Value <= 999) then
			Enemy = "Vampire";
			NameEnemy = "Vampire";
			QuestName = "ZombieQuest";
			QuestNumber = 2;
			QuestPos = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, .95628953, 0, -0.29242146);
			EnemyPos = CFrame.new(-6037.66796875, 32.184638977051, -1340.6597900391);
		elseif New_World and (Q[22].Value >= 1000 and Q[22].Value <= 1049) then
			Enemy = "Snow Trooper";
			NameEnemy = "Snow Trooper";
			QuestName = "SnowMountainQuest";
			QuestNumber = 1;
			QuestPos = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, .92718488, 0, 1, 0, -0.92718488, 0, -0.374604106);
			EnemyPos = CFrame.new(549.14733886719, 427.38705444336, -5563.6987304688);
		elseif New_World and (Q[22].Value >= 1050 and Q[22].Value <= 1099) then
			Enemy = "Winter Warrior";
			NameEnemy = "Winter Warrior";
			QuestName = "SnowMountainQuest";
			QuestNumber = 2;
			QuestPos = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, .92718488, 0, 1, 0, -0.92718488, 0, -0.374604106);
			EnemyPos = CFrame.new(1142.7451171875, 475.63980102539, -5199.4165039062);
		elseif New_World and (Q[22].Value >= 1100 and Q[22].Value <= 1124) then
			Enemy = "Lab Subordinate";
			NameEnemy = "Lab Subordinate";
			QuestName = "IceSideQuest";
			QuestNumber = 1;
			QuestPos = CFrame.new(-6064.06885, 15.2422857, -4902.97852, .453972578, 0, -0.891015649, 0, 1, 0, .891015649, 0, .453972578);
			EnemyPos = CFrame.new(-5707.4716796875, 15.951709747314, -4513.3920898438);
		elseif New_World and (Q[22].Value >= 1125 and Q[22].Value <= 1174) then
			Enemy = "Horned Warrior";
			NameEnemy = "Horned Warrior";
			QuestName = "IceSideQuest";
			QuestNumber = 2;
			QuestPos = CFrame.new(-6064.06885, 15.2422857, -4902.97852, .453972578, 0, -0.891015649, 0, 1, 0, .891015649, 0, .453972578);
			EnemyPos = CFrame.new(-6341.3666992188, 15.951770782471, -5723.162109375);
			if New_World and (Q[22].Value >= 1150 and Q[22].Value <= 1174) then
				Name_Boss = "Smoke Admiral";
				QuestName_Boss = "IceSideQuest";
				QuestNumber_Boss = 3;
			end;
		elseif New_World and (Q[22].Value >= 1175 and Q[22].Value <= 1199) then
			Enemy = "Magma Ninja";
			NameEnemy = "Magma Ninja";
			QuestName = "FireSideQuest";
			QuestNumber = 1;
			QuestPos = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213);
			EnemyPos = CFrame.new(-5449.6728515625, 76.658744812012, -5808.2006835938);
		elseif New_World and (Q[22].Value >= 1200 and Q[22].Value <= 1249) then
			Enemy = "Lava Pirate";
			NameEnemy = "Lava Pirate";
			QuestName = "FireSideQuest";
			QuestNumber = 2;
			QuestPos = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213);
			EnemyPos = CFrame.new(-5213.3315429688, 49.737880706787, -4701.451171875);
		elseif New_World and (Q[22].Value >= 1250 and Q[22].Value <= 1274) then
			Enemy = "Ship Deckhand";
			NameEnemy = "Ship Deckhand";
			QuestName = "ShipQuest1";
			QuestNumber = 1;
			QuestPos = CFrame.new(1037.80127, 125.092171, 32911.6016);
			EnemyPos = CFrame.new(1212.0111083984, 150.79205322266, 33059.24609375);
			if ((CFrame.new(1212.0111083984, 150.79205322266, 33059.24609375)).Position - Q[5].Character.HumanoidRootPart.Position).Magnitude >= 5000 then
				((Q[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", Vector3.new(923.21301269531, 126.9759979248, 32852.83203125));
			end;
		elseif New_World and (Q[22].Value >= 1275 and Q[22].Value <= 1299) then
			Enemy = "Ship Engineer";
			NameEnemy = "Ship Engineer";
			QuestName = "ShipQuest1";
			QuestNumber = 2;
			QuestPos = CFrame.new(1037.80127, 125.092171, 32911.6016);
			EnemyPos = CFrame.new(919.47863769531, 43.544013977051, 32779.96875);
			if ((CFrame.new(1212.0111083984, 150.79205322266, 33059.24609375)).Position - Q[5].Character.HumanoidRootPart.Position).Magnitude >= 5000 then
				((Q[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", Vector3.new(923.21301269531, 126.9759979248, 32852.83203125));
			end;
		elseif New_World and (Q[22].Value >= 1300 and Q[22].Value <= 1324) then
			Enemy = "Ship Steward";
			NameEnemy = "Ship Steward";
			QuestName = "ShipQuest2";
			QuestNumber = 1;
			QuestPos = CFrame.new(968.80957, 125.092171, 33244.125);
			EnemyPos = CFrame.new(919.43853759766, 129.55599975586, 33436.03515625);
			if ((CFrame.new(1212.0111083984, 150.79205322266, 33059.24609375)).Position - Q[5].Character.HumanoidRootPart.Position).Magnitude >= 5000 then
				((Q[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", Vector3.new(923.21301269531, 126.9759979248, 32852.83203125));
			end;
		elseif New_World and (Q[22].Value >= 1325 and Q[22].Value <= 1349) then
			Enemy = "Ship Officer";
			NameEnemy = "Ship Officer";
			QuestName = "ShipQuest2";
			QuestNumber = 2;
			QuestPos = CFrame.new(968.80957, 125.092171, 33244.125);
			EnemyPos = CFrame.new(1036.0179443359, 181.4390411377, 33315.7265625);
			if ((CFrame.new(1212.0111083984, 150.79205322266, 33059.24609375)).Position - Q[5].Character.HumanoidRootPart.Position).Magnitude >= 5000 then
				((Q[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", Vector3.new(923.21301269531, 126.9759979248, 32852.83203125));
			end;
		elseif New_World and (Q[22].Value >= 1350 and Q[22].Value <= 1374) then
			Enemy = "Arctic Warrior";
			NameEnemy = "Arctic Warrior";
			QuestName = "FrostQuest";
			QuestNumber = 1;
			QuestPos = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, .358349502, 0, -0.933587909);
			EnemyPos = CFrame.new(5966.24609375, 62.970020294189, -6179.3828125);
		elseif New_World and (Q[22].Value >= 1375 and Q[22].Value <= 1424) then
			Enemy = "Snow Lurker";
			NameEnemy = "Snow Lurker";
			QuestName = "FrostQuest";
			QuestNumber = 2;
			QuestPos = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, .358349502, 0, -0.933587909);
			EnemyPos = CFrame.new(5407.0737304688, 69.194374084473, -6880.8803710938);
			if New_World and (Q[22].Value >= 1400 and Q[22].Value <= 1424) then
				Name_Boss = "Awakened Ice Admiral";
				QuestName_Boss = "FrostQuest";
				QuestNumber_Boss = 3;
			end;
		elseif New_World and (Q[22].Value >= 1425 and Q[22].Value <= 1449) then
			Enemy = "Sea Soldier";
			NameEnemy = "Sea Soldier";
			QuestName = "ForgottenQuest";
			QuestNumber = 1;
			QuestPos = CFrame.new(-3055, 240, -10145);
			EnemyPos = CFrame.new(-3433, 26, -9784);
		elseif New_World and (Q[22].Value >= 1450 and Q[22].Value <= 999999) then
			Enemy = "Water Fighter";
			NameEnemy = "Water Fighter";
			QuestName = "ForgottenQuest";
			QuestNumber = 2;
			QuestPos = CFrame.new(-3054.53, 239.96, -10144.42);
			EnemyPos = CFrame.new(-3360.23, 284.21, -10533.07);
			if New_World and (Q[22].Value >= 1475 and Q[22].Value <= 1499) then
				Name_Boss = "Tide Keeper";
				QuestName_Boss = "ForgottenQuest";
				QuestNumber_Boss = 3;
			end;
		elseif Three_World and (Q[22].Value >= 1500 and Q[22].Value <= 1524) then
			Enemy = "Pirate Millionaire";
			NameEnemy = "Pirate Millionaire";
			QuestName = "PiratePortQuest";
			QuestNumber = 1;
			QuestPos = CFrame.new(-449.15930175781, 108.61765289307, 5948.0014648438);
			EnemyPos = CFrame.new(-245.99638366699, 47.30615234375, 5584.1005859375);
		elseif Three_World and (Q[22].Value >= 1525 and Q[22].Value <= 1574) then
			Enemy = "Pistol Billionaire";
			NameEnemy = "Pistol Billionaire";
			QuestName = "PiratePortQuest";
			QuestNumber = 2;
			QuestPos = CFrame.new(-449.15930175781, 108.61765289307, 5948.0014648438);
			EnemyPos = CFrame.new(-187.33015441895, 86.239875793457, 6013.513671875);
			if Three_World and (Q[22].Value >= 1550 and Q[22].Value <= 1574) then
				Name_Boss = "Stone";
				QuestName_Boss = "PiratePortQuest";
				QuestNumber_Boss = 3;
			end;
		elseif Three_World and (Q[22].Value >= 1575 and Q[22].Value <= 1599) then
			Enemy = "Dragon Crew Warrior";
			NameEnemy = "Dragon Crew Warrior";
			QuestName = "DragonCrewQuest";
			QuestNumber = 1;
			QuestPos = CFrame.new(6737.7768554688, 127.42920684814, -713.23126220703);
			EnemyPos = CFrame.new(6141.140625, 51.351364135742, -1340.7385253906);
		elseif Three_World and (Q[22].Value >= 1600 and Q[22].Value <= 1624) then
			Enemy = "Dragon Crew Archer";
			NameEnemy = "Dragon Crew Archer";
			QuestName = "DragonCrewQuest";
			QuestNumber = 2;
			QuestPos = CFrame.new(6737.7768554688, 127.42920684814, -713.23126220703);
			EnemyPos = CFrame.new(6616.4174804688, 441.76705932617, 446.04699707031);
		elseif Three_World and (Q[22].Value >= 1625 and Q[22].Value <= 1649) then
			Enemy = "Hydra Enforcer";
			NameEnemy = "Hydra Enforcer";
			QuestName = "VenomCrewQuest";
			QuestNumber = 1;
			QuestPos = CFrame.new(5212.94140625, 1004.1171875, 755.66571044922);
			EnemyPos = CFrame.new(4685.2583007812, 735.80780029297, 815.34259033203);
		elseif Three_World and (Q[22].Value >= 1650 and Q[22].Value <= 1699) then
			Enemy = "Venomous Assailant";
			NameEnemy = "Venomous Assailant";
			QuestName = "VenomCrewQuest";
			QuestNumber = 2;
			QuestPos = CFrame.new(5212.94140625, 1004.1171875, 755.66571044922);
			EnemyPos = CFrame.new(4729.0942382812, 590.43676757812, -36.976276397705);
			if Three_World and (Q[22].Value >= 1675 and Q[22].Value <= 1699) then
				Name_Boss = "Hydra Leader";
				QuestName_Boss = "VenomCrewQuest";
				QuestNumber_Boss = 3;
			end;
		elseif Three_World and (Q[22].Value >= 1700 and Q[22].Value <= 1724) then
			Enemy = "Marine Commodore";
			NameEnemy = "Marine Commodore";
			QuestName = "MarineTreeIsland";
			QuestNumber = 1;
			QuestPos = CFrame.new(2484.0673828125, 74.282150268555, -6786.64453125);
			EnemyPos = CFrame.new(2286.0078125, 73.133918762207, -7159.8090820312);
		elseif Three_World and (Q[22].Value >= 1725 and Q[22].Value <= 1774) then
			Enemy = "Marine Rear Admiral";
			NameEnemy = "Marine Rear Admiral";
			QuestName = "MarineTreeIsland";
			QuestNumber = 2;
			QuestPos = CFrame.new(2484.0673828125, 74.282150268555, -6786.64453125);
			EnemyPos = CFrame.new(3656.7736816406, 160.52406311035, -7001.5986328125);
			if Three_World and (Q[22].Value >= 1750 and Q[22].Value <= 1774) then
				Name_Boss = "Kilo Admiral";
				QuestName_Boss = "MarineTreeIsland";
				QuestNumber_Boss = 3;
			end;
		elseif Three_World and (Q[22].Value >= 1775 and Q[22].Value <= 1799) then
			Enemy = "Fishman Raider";
			NameEnemy = "Fishman Raider";
			QuestName = "DeepForestIsland3";
			QuestNumber = 1;
			QuestPos = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213);
			EnemyPos = CFrame.new(-10407.526367188, 331.76263427734, -8368.5166015625);
		elseif Three_World and (Q[22].Value >= 1800 and Q[22].Value <= 1824) then
			Enemy = "Fishman Captain";
			NameEnemy = "Fishman Captain";
			QuestName = "DeepForestIsland3";
			QuestNumber = 2;
			QuestPos = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213);
			EnemyPos = CFrame.new(-10994.701171875, 352.38140869141, -9002.1103515625);
		elseif Three_World and (Q[22].Value >= 1825 and Q[22].Value <= 1849) then
			Enemy = "Forest Pirate";
			NameEnemy = "Forest Pirate";
			QuestName = "DeepForestIsland";
			QuestNumber = 1;
			QuestPos = CFrame.new(-13234.04, 331.488495, -7625.40137, .707134247, 0, -0.707079291, 0, 1, 0, .707079291, 0, .707134247);
			EnemyPos = CFrame.new(-13274.478515625, 332.37814331055, -7769.5805664062);
		elseif Three_World and (Q[22].Value >= 1850 and Q[22].Value <= 1899) then
			Enemy = "Mythological Pirate";
			NameEnemy = "Mythological Pirate";
			QuestName = "DeepForestIsland";
			QuestNumber = 2;
			QuestPos = CFrame.new(-13234.04, 331.488495, -7625.40137, .707134247, 0, -0.707079291, 0, 1, 0, .707079291, 0, .707134247);
			EnemyPos = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125);
			if Three_World and (Q[22].Value >= 1875 and Q[22].Value <= 1899) then
				Name_Boss = "Captain Elephant";
				QuestName_Boss = "DeepForestIsland";
				QuestNumber_Boss = 3;
			end;
		elseif Three_World and (Q[22].Value >= 1900 and Q[22].Value <= 1924) then
			Enemy = "Jungle Pirate";
			NameEnemy = "Jungle Pirate";
			QuestName = "DeepForestIsland2";
			QuestNumber = 1;
			QuestPos = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, .996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002);
			EnemyPos = CFrame.new(-12256.16015625, 331.73828125, -10485.836914062);
		elseif Three_World and (Q[22].Value >= 1924 and Q[22].Value <= 1974) then
			Enemy = "Musketeer Pirate";
			NameEnemy = "Musketeer Pirate";
			QuestName = "DeepForestIsland2";
			QuestNumber = 2;
			QuestPos = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, .996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002);
			EnemyPos = CFrame.new(-13457.904296875, 391.54565429688, -9859.177734375);
			if Three_World and (Q[22].Value >= 1950 and Q[22].Value <= 1974) then
				Name_Boss = "Beautiful Pirate";
				QuestName_Boss = "DeepForestIsland2";
				QuestNumber_Boss = 3;
			end;
		elseif Three_World and (Q[22].Value >= 1974 and Q[22].Value <= 1999) then
			Enemy = "Reborn Skeleton";
			NameEnemy = "Reborn Skeleton";
			QuestName = "HauntedQuest1";
			QuestNumber = 1;
			QuestPos = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			EnemyPos = CFrame.new(-8763.7236328125, 165.72299194336, 6159.8618164062);
		elseif Three_World and (Q[22].Value >= 2000 and Q[22].Value <= 2024) then
			Enemy = "Living Zombie";
			NameEnemy = "Living Zombie";
			QuestName = "HauntedQuest1";
			QuestNumber = 2;
			QuestPos = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			EnemyPos = CFrame.new(-10144.131835938, 138.6266784668, 5838.0888671875);
		elseif Three_World and (Q[22].Value >= 2025 and Q[22].Value <= 2049) then
			Enemy = "Demonic Soul";
			NameEnemy = "Demonic Soul";
			QuestName = "HauntedQuest2";
			QuestNumber = 1;
			QuestPos = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			EnemyPos = CFrame.new(-9505.8720703125, 172.10482788086, 6158.9931640625);
		elseif Three_World and (Q[22].Value >= 2050 and Q[22].Value <= 2074) then
			Enemy = "Posessed Mummy";
			NameEnemy = "Posessed Mummy";
			QuestName = "HauntedQuest2";
			QuestNumber = 2;
			QuestPos = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			EnemyPos = CFrame.new(-9582.0224609375, 6.2515273094177, 6205.478515625);
		elseif Three_World and (Q[22].Value >= 2075 and Q[22].Value <= 2099) then
			Enemy = "Peanut Scout";
			NameEnemy = "Peanut Scout";
			QuestName = "NutsIslandQuest";
			QuestNumber = 1;
			QuestPos = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			EnemyPos = CFrame.new(-2143.2419433594, 47.721984863281, -10029.995117188);
		elseif Three_World and (Q[22].Value >= 2100 and Q[22].Value <= 2124) then
			Enemy = "Peanut President";
			NameEnemy = "Peanut President";
			QuestName = "NutsIslandQuest";
			QuestNumber = 2;
			QuestPos = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			EnemyPos = CFrame.new(-1859.3540039062, 38.103168487549, -10422.4296875);
		elseif Three_World and (Q[22].Value >= 2125 and Q[22].Value <= 2149) then
			Enemy = "Ice Cream Chef";
			NameEnemy = "Ice Cream Chef";
			QuestName = "IceCreamIslandQuest";
			QuestNumber = 1;
			QuestPos = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			EnemyPos = CFrame.new(-872.24658203125, 65.81957244873, -10919.95703125);
		elseif Three_World and (Q[22].Value >= 2150 and Q[22].Value <= 2199) then
			Enemy = "Ice Cream Commander";
			NameEnemy = "Ice Cream Commander";
			QuestName = "IceCreamIslandQuest";
			QuestNumber = 2;
			QuestPos = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			EnemyPos = CFrame.new(-558.06103515625, 112.04895782471, -11290.774414063);
			if Three_World and (Q[22].Value >= 2175 and Q[22].Value <= 2199) then
				Name_Boss = "Cake Queen";
				QuestName_Boss = "IceCreamIslandQuest";
				QuestNumber_Boss = 3;
			end;
		elseif Three_World and (Q[22].Value >= 2200 and Q[22].Value <= 2224) then
			Enemy = "Cookie Crafter";
			NameEnemy = "Cookie Crafter";
			QuestName = "CakeQuest1";
			QuestNumber = 1;
			QuestPos = CFrame.new(-2021.32007, 37.7982254, -12028.7295, .957576931, -8.8030205e-008, .288177818, 6.930119e-008, 1, 7.519312e-008, -0.288177818, -5.2032135e-008, .957576931);
			EnemyPos = CFrame.new(-2374.13671875, 37.798263549805, -12125.30859375);
		elseif Three_World and (Q[22].Value >= 2225 and Q[22].Value <= 2249) then
			Enemy = "Cake Guard";
			NameEnemy = "Cake Guard";
			QuestName = "CakeQuest1";
			QuestNumber = 2;
			QuestPos = CFrame.new(-2021.32007, 37.7982254, -12028.7295, .957576931, -8.8030205e-008, .288177818, 6.930119e-008, 1, 7.519312e-008, -0.288177818, -5.2032135e-008, .957576931);
			EnemyPos = CFrame.new(-1598.3070068359, 43.773197174072, -12244.581054688);
		elseif Three_World and (Q[22].Value >= 2250 and Q[22].Value <= 2274) then
			Enemy = "Baking Staff";
			NameEnemy = "Baking Staff";
			QuestName = "CakeQuest2";
			QuestNumber = 1;
			QuestPos = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.2214214e-008, .250778586, 4.7491106e-008, 1, 1.4990471e-008, -0.250778586, 2.6421194e-008, -0.96804446);
			EnemyPos = CFrame.new(-1887.8099365234, 77.618507385254, -12998.350585938);
		elseif Three_World and (Q[22].Value >= 2275 and Q[22].Value <= 2299) then
			Enemy = "Head Baker";
			NameEnemy = "Head Baker";
			QuestName = "CakeQuest2";
			QuestNumber = 2;
			QuestPos = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.2214214e-008, .250778586, 4.7491106e-008, 1, 1.4990471e-008, -0.250778586, 2.6421194e-008, -0.96804446);
			EnemyPos = CFrame.new(-2216.1882324219, 82.884521484375, -12869.293945312);
		elseif Three_World and (Q[22].Value >= 2300 and Q[22].Value <= 2324) then
			Enemy = "Cocoa Warrior";
			NameEnemy = "Cocoa Warrior";
			QuestName = "ChocQuest1";
			QuestNumber = 1;
			QuestPos = CFrame.new(233.22836303711, 29.876001358032, -12201.233398438);
			EnemyPos = CFrame.new(-21.553283691406, 80.574996948242, -12352.387695312);
		elseif Three_World and (Q[22].Value >= 2325 and Q[22].Value <= 2349) then
			Enemy = Q[3]({ "Chocolate Bar Battle", "r" });
			NameEnemy = Q[3]({ "Chocolate Bar Battle", "r" });
			QuestName = "ChocQuest1";
			QuestNumber = 2;
			QuestPos = CFrame.new(233.22836303711, 29.876001358032, -12201.233398438);
			EnemyPos = CFrame.new(582.59057617188, 77.188095092773, -12463.162109375);
		elseif Three_World and (Q[22].Value >= 2350 and Q[22].Value <= 2374) then
			Enemy = "Sweet Thief";
			NameEnemy = "Sweet Thief";
			QuestName = "ChocQuest2";
			QuestNumber = 1;
			QuestPos = CFrame.new(150.50663757324, 30.693693161011, -12774.502929688);
			EnemyPos = CFrame.new(165.1884765625, 76.058853149414, -12600.836914062);
		elseif Three_World and (Q[22].Value >= 2375 and Q[22].Value <= 2399) then
			Enemy = "Candy Rebel";
			NameEnemy = "Candy Rebel";
			QuestName = "ChocQuest2";
			QuestNumber = 2;
			QuestPos = CFrame.new(150.50663757324, 30.693693161011, -12774.502929688);
			EnemyPos = CFrame.new(134.86563110352, 77.247680664062, -12876.547851562);
		elseif Three_World and (Q[22].Value >= 2400 and Q[22].Value <= 2424) then
			Enemy = "Candy Pirate";
			NameEnemy = "Candy Pirate";
			QuestName = "CandyQuest1";
			QuestNumber = 1;
			QuestPos = CFrame.new(-1167, 60, -14491);
			EnemyPos = CFrame.new(-1310.5003662109, 26.016523361206, -14562.404296875);
		elseif Three_World and (Q[22].Value >= 2425 and Q[22].Value <= 2449) then
			Enemy = "Snow Demon";
			NameEnemy = "Snow Demon";
			QuestName = "CandyQuest1";
			QuestNumber = 2;
			QuestPos = CFrame.new(-1167, 60, -14491);
			EnemyPos = CFrame.new(-880.20062255859, 71.247764587402, -14538.609375);
		elseif Three_World and (Q[22].Value >= 2450 and Q[22].Value <= 2474) then
			Enemy = "Isle Outlaw";
			NameEnemy = "Isle Outlaw";
			QuestName = "TikiQuest1";
			QuestNumber = 1;
			QuestPos = CFrame.new(-16547.748046875, 61.135334014893, -173.41360473633);
			EnemyPos = CFrame.new(-16442.814453125, 116.13899993896, -264.46377563477);
		elseif Three_World and (Q[22].Value >= 2475 and Q[22].Value <= 2499) then
			Enemy = "Island Boy";
			NameEnemy = "Island Boy";
			QuestName = "TikiQuest1";
			QuestNumber = 2;
			QuestPos = CFrame.new(-16547.748046875, 61.135334014893, -173.41360473633);
			EnemyPos = CFrame.new(-16901.26171875, 84.067565917969, -192.88906860352);
		elseif Three_World and (Q[22].Value >= 2500 and Q[22].Value <= 2524) then
			Enemy = "Sun-kissed Warrior";
			NameEnemy = "Sun";
			New = "Sun";
			QuestName = "TikiQuest2";
			QuestNumber = 1;
			QuestPos = CFrame.new(-16539.078125, 55.686328887939, 1051.5738525391);
			EnemyPos = CFrame.new(-16051.969726562, 54.797149658203, 1084.67578125);
		elseif Three_World and (Q[22].Value >= 2525 and Q[22].Value <= 2549) then
			Enemy = "Isle Champion";
			NameEnemy = "Isle Champion";
			QuestName = "TikiQuest2";
			QuestNumber = 2;
			QuestPos = CFrame.new(-16539.078125, 55.686328887939, 1051.5738525391);
			EnemyPos = CFrame.new(-16619.37109375, 129.98481750488, 1071.2355957031);
		elseif Three_World and (Q[22].Value >= 2550 and Q[22].Value <= 2574) then
			Enemy = "Serpent Hunter";
			NameEnemy = "Serpent Hunter";
			QuestName = "TikiQuest3";
			QuestNumber = 1;
			QuestPos = CFrame.new(-16666.5703125, 105.29138183594, 1576.6925048828);
			EnemyPos = CFrame.new(-16474.5703125, 124.32273864746, 1619.248046875);
		elseif Three_World and (Q[22].Value >= 2575 and Q[22].Value <= 2650) then
			Enemy = "Skull Slayer";
			NameEnemy = "Skull Slayer";
			QuestName = "TikiQuest3";
			QuestNumber = 2;
			QuestPos = CFrame.new(-16666.5703125, 105.29138183594, 1576.6925048828);
			EnemyPos = CFrame.new(-16778.7852, 232.283752, 1442.08325, -0.992449045, -5.54140511e-010, -0.12265785, -2.84580609e-010, 1, -2.21517649e-009, .12265785, -2.16354379e-009, -0.992449045);
		end;
	end;
function TPZ(C)
	local h = {};
	h[2] = C;
	h[1] = (h[2].Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
	if h[1] < 100 then
		h[4] = 50;
	elseif h[1] < 400 then
		h[4] = 400;
	elseif h[1] < 1000 then
		h[4] = 300;
	elseif h[1] < 1500 then
		h[4] = 260;
	elseif h[1] >= 1500 then
		h[4] = 300;
	end;
	Q[23] = (game:GetService("TweenService")):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(h[1] / h[4], Enum.EasingStyle.Linear), { CFrame = h[2] });
	Q[23]:Play();
end;
Q[13] = tick();
Q[35] = (game:GetService("Players")).LocalPlayer;
Q[32] = function()
		if Q[47] then
			Q[47]:Cancel();
			Q[47] = nil;
		end;
	end;
Q[31] = function(C, h, y)
		local r = {};
		r[10], r[3], r[4] = C, h, y;
		r[12] = 300;
		if r[3] == 1.6 then
			r[12] = 350;
		end;
		r[11] = r[4] or 130;
		r[9] = Q[35].Character and Q[35].Character:FindFirstChild("HumanoidRootPart");
		r[7] = Q[35].Character and Q[35].Character:FindFirstChild("Humanoid");
		if not r[9] or not r[7] then
			return;
		end;
		r[13] = (r[10].Position - r[9].Position).Magnitude;
		if r[13] > 3000 and r[7].Health > 0 then
			local Q = {};
			Q[1] = {
					{ Vector3.new(61163.85, 11.67, 1819.78), "Old_World" },
					{ Vector3.new(-4607.82, 872.54, -1667.55), "Old_World" },
					{ Vector3.new(-7894.61, 5547.14, -380.29), "Old_World" },
					{ Vector3.new(923.21, 126.97, 32852.83), "New_World" },
					{ Vector3.new(-2953.31, 41.01, 2099.17), "Old_World" },
				};
			for Q, C in pairs(Q[1]) do
				local h = {};
				h[3], h[1] = Q, C;
				if _G[h[1][2]] and (h[1][1] - r[10].Position).Magnitude <= 2300 then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", h[1][1]);
					break;
				end;
			end;
		end;
		Q[13] = tick();
		Q[32]();
		r[6] = (r[10].Position - r[9].Position).Magnitude;
		r[9].CFrame = CFrame.new(r[9].Position.X, r[10].Position.Y, r[9].Position.Z);
		if r[6] < 130 then
			pcall(function()
				r[9].CFrame = r[10];
			end);
			return;
		elseif r[6] < r[11] then
			r[12] = 350;
		end;
		for Q, C in pairs(Q[35].Character:GetDescendants()) do
			local h = {};
			h[2], h[3] = Q, C;
			if h[3]:IsA("BasePart") and h[3].CanCollide then
				h[3].CanCollide = false;
			end;
		end;
		r[8] = r[6] / r[12];
		r[2] = TweenInfo.new(r[8], Enum.EasingStyle.Linear);
		r[5] = { CFrame = r[10] };
		Q[47] = (game:GetService("TweenService")):Create(r[9], r[2], r[5]);
		Q[47]:Play();
	end;
Q[14] = function()
		if God_Human_C_M then
			local C = {};
			C[1] = (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("getInventory");
			for Q, C in pairs(C[1]) do
				local h = {};
				h[1], h[3] = Q, C;
				if h[3].Type == "Sword" then
					if h[3].Name == "Tushita" and h[3].Mastery >= 400 then
						Tushita_M = true;
					elseif h[3].Name == "Yama" and h[3].Mastery >= 400 then
						Yama_M = true;
					end;
				end;
			end;
			if not Tushita_M then
				if not Q[45].ffc(Q[35].Backpack, "Tushita") and not Q[45].ffc(Q[35].Character, "Tushita") then
					Q[7].Remotes.CommF_:InvokeServer("LoadItem", "Tushita");
				end;
			elseif not Yama_M then
				if not Q[45].ffc(Q[35].Backpack, "Yama") and not Q[45].ffc(Q[35].Character, "Yama") then
					Q[7].Remotes.CommF_:InvokeServer("LoadItem", "Yama");
				end;
			end;
			for C, h in pairs(Q[35].Backpack:GetChildren()) do
				local y = {};
				y[2], y[1] = C, h;
				if y[1]:IsA("Tool") and tostring(y[1].ToolTip) == "Sword" then
					(Q[35].Character:WaitForChild("Humanoid")):EquipTool(y[1]);
				end;
			end;
		else
			for C, h in pairs(Q[35].Backpack:GetChildren()) do
				local y = {};
				y[2], y[1] = C, h;
				if y[1]:IsA("Tool") and tostring(y[1].ToolTip) == "Melee" then
					(Q[35].Character:WaitForChild("Humanoid")):EquipTool(y[1]);
				end;
			end;
		end;
	end;
function TPBoat(Q, C, h, y)
	local r = {};
	r[3], r[5], r[4], r[6] = Q, C, h, y;
	if r[6] == nil then
		r[6] = false;
	end;
	r[1] = (r[3].Position - r[5].Position).Magnitude;
	Speed = r[4];
	TweenP = (game:GetService("TweenService")):Create(r[5], TweenInfo.new(r[1] / Speed, Enum.EasingStyle.Linear), { CFrame = r[3] });
	if r[6] == true then
		TweenP:Cancel();
	else
		TweenP:Play();
	end;
end;
setmetatable(Q[45], { __index = function(C, h)
		local y = {};
		y[2], y[3] = C, h;
		if y[3] == "wt" then
			return function(Q)
				local C = {};
				C[2] = Q;
				return task.wait(C[2]);
			end;
		elseif y[3] == "p" then
			return function(...)
				return pcall(...);
			end;
		elseif y[3] == "sf" then
			return function(Q, C)
				local h = {};
				h[2], h[3] = Q, C;
				return string.find(h[2], tostring(h[3]));
			end;
		elseif y[3] == "cf" then
			return function(...)
				Q[35].Character.HumanoidRootPart.Remotes.CommF_:InvokeServer(...);
			end;
		elseif y[3] == "ffc" then
			return function(Q, C)
				local h = {};
				h[3], h[2] = Q, C;
				return h[3] and h[3]:FindFirstChild(h[2]);
			end;
		elseif y[3] == "Equip" then
			return function(C)
				local h = {};
				h[2] = C;
				if not h[2] or type(h[2]) ~= "string" then
					return;
				end;
				for C, y in pairs(Q[35].Backpack:GetChildren()) do
					local r = {};
					r[3], r[2] = C, y;
					if r[2]:IsA("Tool") and r[2].Name == h[2] then
						(Q[35].Character:WaitForChild("Humanoid")):EquipTool(r[2]);
					end;
				end;
			end;
		elseif y[3] == "gi" then
			return function(C)
				local h = {};
				h[2] = C;
				if Q[45].ffc(Q[35].Backpack, h[2]) or Q[45].ffc(Q[35].Character, h[2]) then
					return true;
				end;
				for Q, C in pairs(Q[7].Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
					local y = {};
					y[2], y[1] = Q, C;
					if y[1].Name == h[2] then
						return true;
					end;
				end;
				return false;
			end;
		elseif y[3] == "tf" then
			return function(Q, C)
				local h = {};
				h[3], h[1] = Q, C;
				return table.find(h[3], h[1]);
			end;
		elseif y[3] == "CheckBoss" then
			return function(C)
				local h = {};
				h[1] = C;
				if Q[45].ffc(Q[7], h[1]) or Q[45].ffc(Q[40], h[1]) then
					return true;
				end;
				return false;
			end;
		elseif y[3] == "IsHall" then
			return function()
				if Q[45].ffc(Q[19].Map, "IceCastle") then
					if Q[45].ffc(Q[19].Map.IceCastle.Hall.LibraryDoor, "Keyhole") then
						return true;
					end;
				end;
				return false;
			end;
		elseif y[3] == "CheckBackpack" then
			return function(C)
				local h = {};
				h[1] = C;
				if Q[45].ffc(Q[35].Backpack, h[1]) or Q[45].ffc(Q[35].Character, h[1]) then
					return true;
				end;
				return false;
			end;
		elseif y[3] == "GetMobRaid" then
			return function()
				local C = {};
				C[2] = {};
				for h, y in pairs(Q[40]:GetChildren()) do
					local r = {};
					r[1], r[2] = h, y;
					if r[2]:FindFirstChild("HumanoidRootPart") and (r[2]:FindFirstChild("Humanoid") and (r[2].Humanoid.Health > 0 and (Q[35].Character.HumanoidRootPart.Position - r[2].HumanoidRootPart.Position).Magnitude <= 5000)) then
						table.insert(C[2], r[2]);
					end;
				end;
				return C[2];
			end;
		elseif y[3] == "GetFruits" then
			return function()
				local C = {};
				C[2] = {};
				for Q, h in pairs(Q[7].Remotes.CommF_:InvokeServer("getInventory")) do
					local y = {};
					y[3], y[1] = Q, h;
					if y[1].Type == "Blox Fruit" and y[1].Value <= 999999 then
						table.insert(C[2], { Name = y[1].Name, Value = y[1].Value });
					end;
				end;
				return C[2];
			end;
		elseif y[3] == "GetRaid" then
			return function(C, h)
				local y = {};
				y[3], y[1] = C, h;
				for C, h in pairs(Q[19]._WorldOrigin.Locations:GetChildren()) do
					local r = {};
					r[1], r[2] = C, h;
					if r[2]:IsA("Part") or r[2]:IsA("BasePart") then
						if r[2].Name == y[3] and (r[2].Position - Q[35].Character.HumanoidRootPart.Position).Magnitude <= y[1] then
							return r[2];
						end;
					end;
				end;
				return nil;
			end;
		elseif y[3] == "GetType" then
			return function()
				local C = {};
				C[1] = {};
				for Q, h in pairs(Q[7].Remotes.CommF_:InvokeServer("getInventory")) do
					local y = {};
					y[2], y[3] = Q, h;
					if y[3].Type == "Blox Fruit" then
						table.insert(C[1], y[3].Name);
					end;
				end;
				return C[1];
			end;
		elseif y[3] == "IsInList" then
			return function(Q, C)
				local h = {};
				h[3], h[2] = Q, C;
				for Q, C in pairs(h[3]) do
					local y = {};
					y[2], y[3] = Q, C;
					if y[3] == h[2] then
						return true;
					end;
				end;
				return false;
			end;
		elseif y[3] == "IsHeavenly" then
			return function()
				for Q, C in pairs(((Q[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("getTitles")) do
					local h = {};
					h[1], h[3] = Q, C;
					if h[3].Name == "Heavenly Devil" then
						return true;
					end;
				end;
				return false;
			end;
		elseif y[3] == "GetMonster" then
			return function(C)
				local h = {};
				h[2] = C;
				pcall(function()
					for Q, C in pairs(Q[40]:GetChildren()) do
						local y = {};
						y[3], y[1] = Q, C;
						if y[1]:IsA("Model") and (y[1]:FindFirstChild("Humanoid") and (y[1].Humanoid.Health > 0 and (y[1].HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= h[2])) then
							Monster = y[1];
							return;
						end;
					end;
				end);
			end;
		elseif y[3] == "GetMon_Soul" then
			return function()
				for Q, C in next, (game:GetService("Workspace")).Enemies:GetChildren() do
					local h = {};
					h[3], h[2] = Q, C;
					if h[2].Name == "Living Zombie" then
						table.insert(get_mon, h[2].Name);
					end;
				end;
			end;
		elseif y[3] == "click" then
			return function(C)
				local h = {};
				h[1] = C;
				Q[2]:SendMouseButtonEvent(h[1].AbsolutePosition.X + h[1].AbsoluteSize.X / 2, h[1].AbsolutePosition.Y + 90, 0, true, h[1], 1);
				Q[2]:SendMouseButtonEvent(h[1].AbsolutePosition.X + h[1].AbsoluteSize.X / 2, h[1].AbsolutePosition.Y + 90, 0, false, h[1], 1);
			end;
		elseif y[3] == "HopLowServer" then
			return function(Q)
				local C = {};
				C[1] = Q;
				pcall(function()
					local Q = {};
					if not C[1] then
						C[1] = 10;
					end;
					ticklon = tick();
					repeat
						task.wait();
					until tick() - ticklon >= 1;
					Q[1] = function()
							for Q = 1, math.huge, 1 do
								local h = {};
								h[2] = Q;
								if ChooseRegion == nil or ChooseRegion == "" then
									ChooseRegion = "Singapore";
								else
									(game:GetService("Players")).LocalPlayer.PlayerGui.ServerBrowser.Frame.Filters.SearchRegion.TextBox.Text = ChooseRegion;
								end;
								h[1] = (game:GetService("ReplicatedStorage")).__ServerBrowser:InvokeServer(h[2]);
								for Q, h in pairs(h[1]) do
									local y = {};
									y[2], y[3] = Q, h;
									if y[2] ~= game.JobId and y[3].Count < C[1] then
										(game:GetService("ReplicatedStorage")).__ServerBrowser:InvokeServer("teleport", y[2]);
									end;
								end;
							end;
							return false;
						end;
					if not (getgenv()).Loaded then
						local Q = {};
						Q[1] = function(Q)
								local C = {};
								C[1] = Q;
								if C[1].Name == "ErrorPrompt" then
									if C[1].Visible then
										if C[1].TitleFrame.ErrorTitle.Text == "Teleport Failed" then
											HopLowServer();
											C[1].Visible = false;
										end;
									end;
									(C[1]:GetPropertyChangedSignal("Visible")):Connect(function()
										if C[1].Visible then
											if C[1].TitleFrame.ErrorTitle.Text == "Teleport Failed" then
												HopLowServer();
												C[1].Visible = false;
											end;
										end;
									end);
								end;
							end;
						for C, h in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetChildren()) do
							local y = {};
							y[3], y[1] = C, h;
							Q[1](y[1]);
						end;
						game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(Q[1]);
						(getgenv()).Loaded = true;
					end;
					while task.wait(.1) do
						Q[1]();
					end;
				end);
			end;
		elseif y[3] == "CheckItem" then
			return function(C)
				local h = {};
				h[2] = C;
				for Q, C in pairs(Q[7].Remotes.CommF_:InvokeServer("getInventory")) do
					local y = {};
					y[2], y[3] = Q, C;
					if type(y[3]) == "table" then
						if y[3].Type == "Material" then
							if y[3].Name == h[2] then
								return y[3].Count;
							end;
						end;
					end;
				end;
				return 0;
			end;
		elseif y[3] == "FarmBone" then
			return function(C)
				local h = {};
				h[1] = C;
				if h[1] then
					if Q[45].ffc(Q[35].Backpack, "Fire Essence") or Q[45].ffc(Q[35].Character, "Fire Essence") then
						repeat
							Q[45].Status(Q[3]({ " Status : Use Fire E", "ssence" }));
							Q[45].Equip("Fire Essence");
							Q[45].wt(.5);
							Q[7].Remotes.CommF_:InvokeServer("BuyDragonTalon", true);
							Q[7].Remotes.CommF_:InvokeServer("BuyDragonTalon");
						until not Q[45].ffc(Q[35].Backpack, "Fire Essence") and not Q[45].ffc(Q[35].Character, "Fire Essence");
						Q[7].Remotes.CommF_:InvokeServer("BuyDragonTalon");
						Dragon_Talon_C = true;
					else
						if Q[45].ffc(Q[40], "Demonic Soul") or Q[45].ffc(Q[40], "Posessed Mummy") or Q[45].ffc(Q[40], "Reborn Skeleton") or Q[45].ffc(Q[40], "Living Zombie") then
							for C, h in pairs(Q[40]:GetChildren()) do
								local y = {};
								y[3], y[1] = C, h;
								if y[1].Name == "Reborn Skeleton" or y[1].Name == "Living Zombie" or y[1].Name == "Demonic Soul" or y[1].Name == "Posessed Mummy" then
									if y[1]:FindFirstChild("HumanoidRootPart") and (y[1]:FindFirstChild("Humanoid") and y[1].Humanoid.Health > 0) then
										repeat
											Q[45].wt(.1);
											if Q[45].CheckItem("Bones") > 500 and Q[7].Remotes.CommF_:InvokeServer("Bones", "Check") > 0 then
												repeat
													Q[45].wt(.2);
													Q[7].Remotes.CommF_:InvokeServer("Bones", "Check");
													Q[7].Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1);
												until Q[7].Remotes.CommF_:InvokeServer("Bones", "Check") == 0;
											end;
											if not Q[45].ffc(Q[35].Character, "HasBuso") then
												Q[35].Character.HumanoidRootPart.Remotes.CommF_:InvokeServer("Buso");
											end;
											Q[31](y[1].HumanoidRootPart.CFrame * CFrame.new(0, 30, 0), 1.5, 200);
											Q[14]();
											Q[45].BN(y[1].Name);
										until not y[1].Parent or y[1].Humanoid.Health <= 0;
									end;
								end;
							end;
						else
							Q[31](CFrame.new(-9505.8720703125, 172.10482788086, 6158.9931640625), 1.5);
						end;
					end;
				else
					if Q[45].ffc(Q[40], "Demonic Soul") or Q[45].ffc(Q[40], "Posessed Mummy") or Q[45].ffc(Q[40], "Reborn Skeleton") or Q[45].ffc(Q[40], "Living Zombie") then
						for C, h in pairs(Q[40]:GetChildren()) do
							local y = {};
							y[1], y[2] = C, h;
							if y[2].Name == "Reborn Skeleton" or y[2].Name == "Living Zombie" or y[2].Name == "Demonic Soul" or y[2].Name == "Posessed Mummy" then
								if y[2]:FindFirstChild("HumanoidRootPart") and (y[2]:FindFirstChild("Humanoid") and y[2].Humanoid.Health > 0) then
									repeat
										Q[45].wt(.1);
										if Q[45].CheckItem("Bones") > 500 and Q[7].Remotes.CommF_:InvokeServer("Bones", "Check") > 0 then
											repeat
												Q[45].wt(.2);
												Q[7].Remotes.CommF_:InvokeServer("Bones", "Check");
												Q[7].Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1);
											until Q[7].Remotes.CommF_:InvokeServer("Bones", "Check") == 0;
										end;
										if not Q[45].ffc(Q[35].Character, "HasBuso") then
											Q[35].Character.HumanoidRootPart.Remotes.CommF_:InvokeServer("Buso");
										end;
										Q[31](y[2].HumanoidRootPart.CFrame * CFrame.new(0, 30, 0), 1.5, 200);
										Q[14]();
										Q[45].BN(y[2].Name);
									until not y[2].Parent or y[2].Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						Q[31](CFrame.new(-9505.8720703125, 172.10482788086, 6158.9931640625), 1.5);
					end;
				end;
			end;
		elseif y[3] == "Get_Item_Inventory" then
			return function(C)
				local h = {};
				h[2] = C;
				if not Q[45].ffc(Q[35].Backpack, h[2]) and not Q[45].ffc(Q[35].Character, h[2]) then
					Q[7].Remotes.CommF_:InvokeServer("LoadItem", tostring(h[2]));
				end;
			end;
		elseif y[3] == "BN" then
			return function(Q)
				local C = {};
				C[2] = Q;
				pcall(function()
					local Q = {};
					Q[3] = game.Players.LocalPlayer;
					Q[2] = Q[3].Character and Q[3].Character:FindFirstChild("HumanoidRootPart");
					if not Q[2] then
						return;
					end;
					for h, y in pairs(game.Workspace.Enemies:GetChildren()) do
						local r = {};
						r[2], r[3] = h, y;
						if r[3]:IsA("Model") and (r[3].Name == C[2] and (r[3]:FindFirstChild("Humanoid") and r[3]:FindFirstChild("HumanoidRootPart"))) then
							local h = {};
							h[3], h[2] = r[3].Humanoid, r[3].HumanoidRootPart;
							if h[3].Health > 0 and (h[2].Position - Q[2].Position).Magnitude <= 350 then
								local Q = {};
								Q[2] = nil;
								for h, y in pairs(game.Workspace.Enemies:GetChildren()) do
									local J = {};
									J[1], J[2] = h, y;
									if J[2] ~= r[3] and (J[2]:IsA("Model") and (J[2].Name == C[2] and J[2]:FindFirstChild("HumanoidRootPart"))) then
										Q[2] = J[2].HumanoidRootPart;
										break;
									end;
								end;
								if Q[2] then
									local C = {};
									C[1] = Instance.new("BodyPosition");
									C[1].Position = Q[2].Position + Vector3.new(0, 0, 0);
									C[1].MaxForce = Vector3.new(1000000, 1000000, 1000000);
									C[1].P = 3000;
									C[1].D = 100;
									C[1].Name = "EnemyFlyPosition";
									C[1].Parent = h[2];
								end;
								h[2].CanCollide = false;
								h[3]:ChangeState(14);
								h[3].WalkSpeed = 0;
								if h[3]:FindFirstChild("Animator") then
									h[3].Animator:Destroy();
								end;
								for Q, C in pairs(r[3]:GetDescendants()) do
									local h = {};
									h[2], h[3] = Q, C;
									if h[3]:IsA("BasePart") then
										h[3].CanCollide = false;
										h[3].CanTouch = false;
										h[3].CanQuery = false;
									end;
								end;
								if r[3]:FindFirstChild("Head") then
									r[3].Head.CanCollide = false;
								end;
							end;
						end;
					end;
					sethiddenproperty(Q[3], "SimulationRadius", math.huge);
				end);
			end;
		elseif y[3] == "Status" then
			return function(C)
				local h = {};
				h[2] = C;
				Q[26].Text = h[2];
			end;
		elseif y[3] == "GetQuest" then
			return function(C)
				local h = {};
				h[1] = C;
				if (Vector3.new(-12379.1406, 601.433167, -6543.60742) - Q[35].Character.HumanoidRootPart.Position).Magnitude > 30 then
					Q[31](CFrame.new(-12379.1406, 601.433167, -6543.60742), 1.5);
				elseif (Vector3.new(-12379.1406, 601.433167, -6543.60742) - Q[35].Character.HumanoidRootPart.Position).Magnitude < 30 then
					if h[1] == "Good" then
						repeat
							wait(.1);
							Q[31](CFrame.new(-12392.5068, 603.319763, -6596.00586), 1.5);
						until (Vector3.new(-12392.5068, 603.319763, -6596.00586) - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 3;
						wait(1);
						Q[7].Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good");
						wait(1);
						Q[7].Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Good");
					elseif h[1] == "Evil" then
						repeat
							wait(.1);
							Q[31](CFrame.new(-12392.2637, 603.319763, -6503.27832), 1.5);
						until (Vector3.new(-12392.2637, 603.319763, -6503.27832) - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 3;
						wait(1);
						Q[7].Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil");
						wait(1);
						Q[7].Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil");
					end;
				end;
			end;
		elseif y[3] == "GetTorch" then
			return function(C)
				local h = {};
				h[2] = C;
				repeat
					wait();
					Q[31](Q[19].Map.HeavenlyDimension[h[2]].CFrame, 1.5);
				until (Q[19].Map.HeavenlyDimension[h[2]].Position - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 7;
				fireproximityprompt(workspace.Map.HeavenlyDimension[h[2]].ProximityPrompt);
				wait(.5);
			end;
		elseif y[3] == "GetTorchX" then
			return function(C)
				local h = {};
				h[1] = C;
				repeat
					wait();
					Q[31](Q[19].Map.HellDimension[h[1]].CFrame, 1.5);
				until (Q[19].Map.HellDimension[h[1]].Position - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 7;
				fireproximityprompt(workspace.Map.HellDimension[h[1]].ProximityPrompt);
				wait(.5);
			end;
		end;
	end });
Q[27] = game:GetService("Players");
Q[46] = game:GetService("ReplicatedStorage");
Q[25] = game:GetService("Workspace");
Q[34] = {};
Q[34].__index = Q[34];
Q[51] = Q[27].LocalPlayer;
task.spawn(function()
	while task.wait(.5) do
		Q[45].p(function()
			if Q[35].Data.Points.Value > 0 and Q[35].Data.Stats.Melee.Level.Value < 2650 then
				Q[46].Remotes.CommF_:InvokeServer("AddPoint", "Melee", Q[35].Data.Points.Value);
			end;
			if Q[35].Data.Stats.Melee.Level.Value >= 2650 and (Q[35].Data.Points.Value > 0 and Q[35].Data.Stats.Defense.Level.Value < 2550) then
				Q[46].Remotes.CommF_:InvokeServer("AddPoint", "Defense", Q[35].Data.Points.Value);
			end;
			if not Q[45].ffc(Q[35].Character, "HasBuso") then
				Q[46].Remotes.CommF_:InvokeServer("Buso");
			end;
		end);
	end;
end);
(getgenv())["Fast Attack"] = true;
Q[20] = 0;
task.spawn(function()
	while task.wait(Q[20]) do
		if (getgenv())["Fast Attack"] and not Stop_Fast_Attack then
			if Q[45].sf(Q[35].PlayerGui.Main.Version.Text, "v26.6.1") then
				xpcall(function()
					if (Q[51].Character or Q[51].CharacterAdded:Wait()):FindFirstChildOfClass("Tool") and ((Q[51].Character or Q[51].CharacterAdded:Wait()):FindFirstChildOfClass("Humanoid") and (Q[51].Character or Q[51].CharacterAdded:Wait()).Humanoid.Health > 0) then
						for C, h in pairs(Q[25].Enemies:GetChildren()) do
							local y = {};
							y[1], y[3] = C, h;
							if y[3]:FindFirstChildOfClass("Humanoid") and (y[3].Humanoid.Health > 0 and y[3]:FindFirstChild("HumanoidRootPart")) then
								if (y[3].HumanoidRootPart.Position - Q[51].Character.HumanoidRootPart.Position).Magnitude <= 60 then
									local C = {};
									if (Q[51].Character or Q[51].CharacterAdded:Wait()):FindFirstChild("Stun") then
										(Q[51].Character or Q[51].CharacterAdded:Wait()).Stun.Value = 0;
									end;
									if (Q[51].Character or Q[51].CharacterAdded:Wait()):FindFirstChild("Busy") then
										(Q[51].Character or Q[51].CharacterAdded:Wait()).Busy.Value = false;
									end;
									if y[3]:FindFirstChild("Stun") then
										y[3].Stun.Value = 0;
									end;
									if y[3]:FindFirstChild("Busy") then
										y[3].Busy.Value = false;
									end;
									if Q[7].Modules.Net:FindFirstChild("RE") and Q[7].Modules.Net.RE:FindFirstChild("RegisterHit") then
										Q[7].Modules.Net.RE.RegisterHit:SetAttribute("Virtual", not Q[7].Modules.Net.RE.RegisterHit:GetAttribute("Virtual"));
									end;
									if Q[51].Character then
										Q[51].Character:SetAttribute("Clashable", not Q[51].Character:GetAttribute("Clashable"));
									end;
									C[2] = 0;
									for h, y in pairs(Q[25].Enemies:GetChildren()) do
										local r = {};
										r[1], r[3] = h, y;
										if r[3]:FindFirstChildOfClass("Humanoid") and (r[3].Humanoid.Health > 0 and (r[3]:FindFirstChild("HumanoidRootPart") and (r[3].HumanoidRootPart.Position - Q[51].Character.HumanoidRootPart.Position).Magnitude <= 60)) then
											C[2] = C[2] + 1;
											if C[2] > 5 then
												Q[20] = .1;
											elseif C[2] > 2 and C[2] <= 5 then
												Q[20] = .03;
											else
												Q[20] = 0;
											end;
											(Q[48]:RemoteEvent("RegisterAttack")):FireServer(math.huge);
											(Q[48]:RemoteEvent("RegisterHit", true)):FireServer(r[3].Head, { { r[3], r[3].Head }, r[3].Head }, nil, (tostring(Q[51].UserId)):sub(2, 4) .. (tostring(coroutine.running())):sub(11, 15));
										end;
									end;
								end;
							end;
						end;
					end;
				end, warn);
			else
				local C = {};
				assert(getrenv, Q[3]({ "Exploit not supporte", "d" }));
				C[11] = game:GetService("CollectionService");
				C[2] = game:GetService("ReplicatedStorage");
				C[8] = game:GetService("Players");
				C[6] = C[8].LocalPlayer;
				C[3] = debug.getupvalue((getrenv())._G.SendHitsToServer, 1);
				C[5] = C[2].Modules.Net["RE/RegisterAttack"];
				C[4] = function()
						local Q = {};
						Q[3] = C[11]:GetTagged("BasicMob");
						if #Q[3] == 0 then
							return nil;
						end;
						Q[4] = {};
						Q[2] = C[6].Character and C[6].Character.PrimaryPart.Position;
						if not Q[2] then
							return nil;
						end;
						for C, h in pairs(Q[3]) do
							local y = {};
							y[1], y[4] = C, h;
							y[5] = y[4]:FindFirstChildOfClass("Humanoid");
							y[3] = y[4].PrimaryPart;
							if y[5] and (y[5].Health > 0 and y[3]) then
								local C = {};
								C[1] = (y[3].Position - Q[2]).Magnitude;
								if C[1] <= 100 then
									Q[4][#Q[4] + 1] = { mob = y[4], distance = C[1] };
								end;
							end;
						end;
						if #Q[4] == 0 then
							return nil;
						end;
						table.sort(Q[4], function(Q, C)
							local h = {};
							h[1], h[2] = Q, C;
							return h[1].distance < h[2].distance;
						end);
						return #Q[4] > 2 and { Q[4][1], Q[4][2] } or Q[4];
					end;
				C[1] = function()
						local Q = {};
						Q[3] = C[4]();
						if not Q[3] then
							return;
						end;
						Q[2] = {};
						for C, h in pairs(Q[3]) do
							local y = {};
							y[4], y[2] = C, h;
							y[1] = y[2].mob:FindFirstChild("HumanoidRootPart");
							if y[1] then
								Q[2][#Q[2] + 1] = { y[2].mob, y[1] };
							end;
						end;
						if #Q[2] > 0 then
							C[5]:FireServer(0 / 0);
							coroutine.resume(C[3], Q[2][1][2], { table.unpack(Q[2], 2) });
						end;
					end;
				C[7], C[9] = pcall(function()
						C[1]();
					end);
				if not C[7] then
					warn(Q[3]({ "Error in Combat scri", "pt: " }) .. tostring(C[9]));
				end;
			end;
		end;
	end;
end);
for Q, C in pairs(Q[7].Remotes.CommF_:InvokeServer("getInventory")) do
	local h = {};
	h[1], h[3] = Q, C;
	if h[3].Type == "Material" then
		if h[3].Name == "Mirror Fractal" then
			Mirror_Fractal_H = true;
		end;
	end;
end;
Q[35].PlayerGui.Notifications.Enabled = false;
if (((Q[7]:WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/FruitCustomizerRF")):InvokeServer({ StorageName = "Pure Red", Type = "AuraSkin", Context = "Equip" }) ~= false then
	Pure_Red_H = true;
end;
if (((Q[7]:WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/FruitCustomizerRF")):InvokeServer({ StorageName = "Snow White", Type = "AuraSkin", Context = "Equip" }) ~= false then
	Snow_White = true;
end;
if (((Q[7]:WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/FruitCustomizerRF")):InvokeServer({ StorageName = "Snow White", Type = "AuraSkin", Context = "Equip" }) ~= false then
	Winter_Sky = true;
end;
if (((Q[7]:WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/FruitCustomizerRF")):InvokeServer({ StorageName = "Rainbow Saviour", Type = "AuraSkin", Context = "Equip" }) ~= false then
	Rainbow_Saviour = true;
end;
if Three_World and (Q[7].Remotes.CommF_:InvokeServer("TushitaProgress")).OpenedDoor then
	Unlock_Tushita_Quest = true;
end;
Q[39] = function()
		local C = {};
		if Three_World then
			if tostring(string.match(tostring(Q[7].Remotes.CommF_:InvokeServer("CakePrinceSpawner")), "%d+")) == "nil" or tostring(string.match(tostring(Q[7].Remotes.CommF_:InvokeServer("CakePrinceSpawner")), "%d+")) == nil then
				Q[7].Remotes.CommF_:InvokeServer("CakePrinceSpawner", true);
			end;
		end;
		if Three_World then
			if Q[45].ffc(Q[40], "Cake Prince") or Q[45].ffc(Q[7], "Cake Prince") then
				if Q[45].ffc(Q[40], "Cake Prince") then
					for C, h in pairs(Q[40]:GetChildren()) do
						local y = {};
						y[2], y[3] = C, h;
						if y[3].Name == "Cake Prince" and y[3].Humanoid.Health > 0 then
							repeat
								Q[45].wt();
								if not Q[45].ffc(Q[35].Character, "HasBuso") then
									Q[35].Character.HumanoidRootPart.Remotes.CommF_:InvokeServer("Buso");
								end;
								Q[31](y[3].HumanoidRootPart.CFrame * CFrame.new(0, -30, 0), 1.5);
								Q[14]();
							until not y[3].Parent or y[3].Humanoid.Health <= 0 or not (getgenv()).AutoFarm;
						end;
					end;
				elseif Q[45].ffc(Q[7], "Cake Prince") then
					for C, h in pairs(Q[7]:GetChildren()) do
						local y = {};
						y[1], y[3] = C, h;
						if y[3].Name == "Cake Prince" and y[3].Humanoid.Health > 0 then
							repeat
								Q[45].wt();
								if not Q[45].ffc(Q[35].Character, "HasBuso") then
									Q[35].Character.HumanoidRootPart.Remotes.CommF_:InvokeServer("Buso");
								end;
								Q[31](y[3].HumanoidRootPart.CFrame * CFrame.new(0, -30, 0), 1.5);
								Q[14]();
							until not y[3].Parent or y[3].Humanoid.Health <= 0 or not (getgenv()).AutoFarm;
						end;
					end;
				end;
			end;
		end;
		if Three_World then
			if Q[40]:FindFirstChild("rip_indra True Form") or Q[7]:FindFirstChild("rip_indra True Form") then
				if not (Q[7].Remotes.CommF_:InvokeServer("TushitaProgress")).OpenedDoor then
					local C = {};
					C[1] = Q[7].Remotes.CommF_:InvokeServer("TushitaProgress");
					if not C[1].OpenedDoor then
						if Q[35].Backpack:FindFirstChild("Holy Torch") or Q[35].Character:FindFirstChild("Holy Torch") then
							Q[45].Equip("Holy Torch");
							for C = 1, 5, 1 do
								local h = {};
								h[1] = C;
								Q[7].Remotes.CommF_:InvokeServer("TushitaProgress", "Torch", h[1]);
							end;
						elseif Q[7]:FindFirstChild("rip_indra True Form") or Q[40]:FindFirstChild("rip_indra True Form") then
							if Q[35].Backpack:FindFirstChild("Holy Torch") or Q[35].Character:FindFirstChild("Holy Torch") then
								Q[45].Equip("Holy Torch");
								for C = 1, 5, 1 do
									local h = {};
									h[1] = C;
									Q[7].Remotes.CommF_:InvokeServer("TushitaProgress", "Torch", h[1]);
								end;
							elseif Q[7]:FindFirstChild("rip_indra True Form") or Q[40]:FindFirstChild("rip_indra True Form") then
								task.spawn(function()
									repeat
										Q[45].wt();
										Q[2]:SendKeyEvent(true, "Space", false, game);
										Q[45].wt(.3);
										Q[2]:SendKeyEvent(false, "Space", false, game);
									until Q[35].Backpack:FindFirstChild("Holy Torch") or Q[35].Character:FindFirstChild("Holy Torch") or not Q[7]:FindFirstChild("rip_indra True Form") and not Q[40]:FindFirstChild("rip_indra True Form");
								end);
								repeat
									Q[45].wt();
									Q[35].Character.HumanoidRootPart.CFrame = CFrame.new(5714, 19, 254);
								until Q[35].Backpack:FindFirstChild("Holy Torch") or Q[35].Character:FindFirstChild("Holy Torch") or not Q[7]:FindFirstChild("rip_indra True Form") and not Q[40]:FindFirstChild("rip_indra True Form");
								if Q[35].Backpack:FindFirstChild("Holy Torch") or Q[35].Character:FindFirstChild("Holy Torch") then
									Q[45].Equip("Holy Torch");
									for C = 1, 5, 1 do
										local h = {};
										h[2] = C;
										Q[7].Remotes.CommF_:InvokeServer("TushitaProgress", "Torch", h[2]);
									end;
								end;
							end;
						end;
					elseif C[1].OpenedDoor then
						Unlock_Tushita_Quest = true;
						return;
					end;
				else
					if Q[40]:FindFirstChild("rip_indra True Form") or Q[7]:FindFirstChild("rip_indra True Form") then
						if Q[40]:FindFirstChild("rip_indra True Form") then
							for C, h in pairs(Q[40]:GetChildren()) do
								local y = {};
								y[3], y[1] = C, h;
								if y[1].Name == "rip_indra True Form" and y[1].Humanoid.Health > 0 then
									repeat
										Q[45].wt(.1);
										if not Q[45].ffc(Q[35].Character, "HasBuso") then
											Q[35].Character.HumanoidRootPart.Remotes.CommF_:InvokeServer("Buso");
										end;
										Q[31](y[1].HumanoidRootPart.CFrame * CFrame.new(0, -30, 0), 1.5);
										Q[14]();
									until not y[1].Parent or y[1].Humanoid.Health <= 0;
								end;
							end;
						elseif Q[7]:FindFirstChild("rip_indra True Form") then
							Q[31]((Q[7]:FindFirstChild("rip_indra True Form")).HumanoidRootPart.CFrame * CFrame.new(0, 30, 0));
						end;
					elseif Q[35].Backpack:FindFirstChild("God\'s Chalice") or Q[35].Character:FindFirstChild("God\'s Chalice") then
						repeat
							Q[45].wt(.1);
							Oyster_H = false;
							Hot_pink_H = false;
							Really_red_H = false;
							for Q, C in pairs(Q[19].Map["Boat Castle"].Summoner.Circle:GetChildren()) do
								local h = {};
								h[1], h[2] = Q, C;
								if h[2].Name == "Part" and (tostring(h[2].BrickColor) == "Oyster" and tostring(h[2].Part.BrickColor) == "Lime green") then
									Oyster_H = true;
								end;
							end;
							for Q, C in pairs(Q[19].Map["Boat Castle"].Summoner.Circle:GetChildren()) do
								local h = {};
								h[3], h[1] = Q, C;
								if h[1].Name == "Part" and (tostring(h[1].BrickColor) == "Hot pink" and tostring(h[1].Part.BrickColor) == "Lime green") then
									Hot_pink_H = true;
								end;
							end;
							for Q, C in pairs(Q[19].Map["Boat Castle"].Summoner.Circle:GetChildren()) do
								local h = {};
								h[1], h[3] = Q, C;
								if h[3].Name == "Part" and (tostring(h[3].BrickColor) == "Really red" and tostring(h[3].Part.BrickColor) == "Lime green") then
									Really_red_H = true;
								end;
							end;
							if Oyster_H and (Hot_pink_H and Really_red_H) then
								repeat
									Q[45].wt(.1);
									Q[45].Equip("God\'s Chalice");
									Q[31](CFrame.new(-5561.06738, 314.375793, -2663.88892, -0.304127187, -0.00254100002, .952628076, .000226983335, .999996245, .00273981248, -0.952631414, .00104948215, -0.304125458), 1.5);
								until (Vector3.new(-5561.06738, 314.375793, -2663.88892) - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 5;
								Q[45].wt(1);
							else
								if Q[35].Backpack:FindFirstChild("God\'s Chalice") or Q[35].Character:FindFirstChild("God\'s Chalice") then
									repeat
										Q[45].wt(.1);
										Q[14]();
										Q[31](CFrame.new(-5561.06738, 314.375793, -2663.88892, -0.304127187, -0.00254100002, .952628076, .000226983335, .999996245, .00273981248, -0.952631414, .00104948215, -0.304125458), 1.5);
									until (Vector3.new(-5561.06738, 314.375793, -2663.88892) - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 5;
									if Snow_White and not Oyster_H then
										for C, h in pairs(Q[19].Map["Boat Castle"].Summoner.Circle:GetChildren()) do
											local y = {};
											y[3], y[2] = C, h;
											if y[2].Name == "Part" and tostring(y[2].BrickColor) == "Oyster" then
												if tostring(y[2].Part.BrickColor) ~= "Lime green" then
													Q[7].Remotes.CommF_:InvokeServer("activateColor", "Snow White");
													Q[45].wt(1);
													repeat
														Q[45].wt();
														if not Q[45].ffc(Q[35].Character, "HasBuso") then
															Q[35].Character.HumanoidRootPart.Remotes.CommF_:InvokeServer("Buso");
														end;
														Q[31](y[2].Part.CFrame, 1.5);
													until tostring(y[2].Part.BrickColor) == "Lime green";
													Oyster_H = true;
												end;
											end;
										end;
									end;
									if Pure_Red_H and not Really_red_H then
										for C, h in pairs(Q[19].Map["Boat Castle"].Summoner.Circle:GetChildren()) do
											local y = {};
											y[1], y[2] = C, h;
											if y[2].Name == "Part" and tostring(y[2].BrickColor) == "Really red" then
												if tostring(y[2].Part.BrickColor) ~= "Lime green" then
													Q[7].Remotes.CommF_:InvokeServer("activateColor", "Pure Red");
													Q[45].wt(1);
													repeat
														Q[45].wt();
														if not Q[45].ffc(Q[35].Character, "HasBuso") then
															Q[35].Character.HumanoidRootPart.Remotes.CommF_:InvokeServer("Buso");
														end;
														Q[31](y[2].Part.CFrame, 1.5);
													until tostring(y[2].Part.BrickColor) == "Lime green";
													Really_red_H = true;
												end;
											end;
										end;
									end;
									if Winter_Sky and not Hot_pink_H then
										for C, h in pairs(Q[19].Map["Boat Castle"].Summoner.Circle:GetChildren()) do
											local y = {};
											y[1], y[2] = C, h;
											if y[2].Name == "Part" and tostring(y[2].BrickColor) == "Hot pink" then
												if tostring(y[2].Part.BrickColor) ~= "Lime green" then
													Q[7].Remotes.CommF_:InvokeServer("activateColor", "Winter Sky");
													Q[45].wt(1);
													repeat
														Q[45].wt();
														if not Q[45].ffc(Q[35].Character, "HasBuso") then
															Q[35].Character.HumanoidRootPart.Remotes.CommF_:InvokeServer("Buso");
														end;
														Q[31](y[2].Part.CFrame, 1.5);
													until tostring(y[2].Part.BrickColor) == "Lime green";
													Hot_pink_H = true;
												end;
											end;
										end;
									end;
									Q[45].Equip("God\'s Chalice");
									Q[31](CFrame.new(-5561.06738, 314.375793, -2663.88892, -0.304127187, -0.00254100002, .952628076, .000226983335, .999996245, .00273981248, -0.952631414, .00104948215, -0.304125458), 1.5);
									if TimeLoaderx == nil or tick() - TimeLoaderx > 10 then
										TimeLoaderx = tick();
										Q[7][Q[3]({ "DefaultChatSystemCha", "tEvents" })].SayMessageRequest:FireServer(Q[3]({ "I have God Chalice. ", "I Can\'t Spawn Boss A", "dmin" }), "All");
									end;
								end;
							end;
						until not Q[35].Backpack:FindFirstChild("God\'s Chalice") and not Q[35].Character:FindFirstChild("God\'s Chalice");
					end;
				end;
			end;
		end;
		if Three_World then
			if Q[40]:FindFirstChild("rip_indra True Form") or Q[7]:FindFirstChild("rip_indra True Form") then
				if Q[40]:FindFirstChild("rip_indra True Form") then
					for C, h in pairs(Q[40]:GetChildren()) do
						local y = {};
						y[1], y[3] = C, h;
						if y[3].Name == "rip_indra True Form" and y[3].Humanoid.Health > 0 then
							repeat
								Q[45].wt(.1);
								if not Q[45].ffc(Q[35].Character, "HasBuso") then
									Q[35].Character.HumanoidRootPart.Remotes.CommF_:InvokeServer("Buso");
								end;
								Q[31](y[3].HumanoidRootPart.CFrame * CFrame.new(0, -30, 0), 1.5);
								Q[14]();
							until not y[3].Parent or y[3].Humanoid.Health <= 0;
						end;
					end;
				elseif Q[7]:FindFirstChild("rip_indra True Form") then
					Q[31]((Q[7]:FindFirstChild("rip_indra True Form")).HumanoidRootPart.CFrame * CFrame.new(0, 30, 0));
				end;
			end;
		end;
		C[2] = false;
		if Three_World and not Mirror_Fractal_H then
			if Q[45].ffc(Q[35].Backpack, "Sweet Chalice") or Q[45].ffc(Q[35].Character, "Sweet Chalice") or Q[45].ffc(Q[35].Backpack, "God\'s Chalice") or Q[45].ffc(Q[35].Character, "God\'s Chalice") or Q[45].ffc(Q[40], "Dough King") or Q[45].ffc(Q[7], "Dough King") then
				repeat
					wait();
					for Q, C in pairs(Q[7].Remotes.CommF_:InvokeServer("getInventory")) do
						local h = {};
						h[2], h[3] = Q, C;
						if h[3].Type == "Material" then
							if h[3].Name == "Mirror Fractal" then
								Mirror_Fractal_H = true;
							end;
						end;
					end;
					if Q[45].ffc(Q[40], "Dough King") or Q[45].ffc(Q[7], "Dough King") then
						if Q[45].ffc(Q[40], "Dough King") then
							for C, h in pairs(Q[40]:GetChildren()) do
								local y = {};
								y[2], y[1] = C, h;
								if y[1].Name == "Dough King" and y[1].Humanoid.Health > 0 then
									repeat
										wait(.1);
										Q[31](y[1].HumanoidRootPart.CFrame * CFrame.new(0, -30, 0), 1.5);
										Q[14]();
									until not y[1].Parent or y[1].Humanoid.Health <= 0;
									for Q, C in pairs((game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("getInventory")) do
										local h = {};
										h[3], h[1] = Q, C;
										if h[1].Type == "Material" then
											if h[1].Name == "Mirror Fractal" then
												Mirror_Fractal_H = true;
											end;
										end;
									end;
									return;
								end;
							end;
						elseif Q[45].ffc(Q[7], "Dough King") then
							Q[31]((game.ReplicatedStorage:FindFirstChild("Dough King")).HumanoidRootPart.CFrame * CFrame.new(0, 30, 0), 1.5);
						end;
					elseif Q[45].ffc(Q[35].Backpack, "Sweet Chalice") or Q[45].ffc(Q[35].Character, "Sweet Chalice") and not Mirror_Fractal_H then
						if (Q[35].Character.HumanoidRootPart.Position - Vector3.new(-2286.6843261719, 146.56562805176, -12226.881835938)).Magnitude >= 1800 then
							repeat
								wait();
								Q[31](CFrame.new(-2286.6843261719, 146.56562805176, -12226.881835938), 1.5);
							until (Q[35].Character.HumanoidRootPart.Position - Vector3.new(-2286.6843261719, 146.56562805176, -12226.881835938)).Magnitude <= 3;
						elseif (Q[35].Character.HumanoidRootPart.Position - Vector3.new(-2286.6843261719, 146.56562805176, -12226.881835938)).Magnitude < 1800 then
							Monster = nil;
							for C = 1500, 0, -300 do
								local h = {};
								h[1] = C;
								Q[45].GetMonster(h[1]);
							end;
							if Monster ~= nil and Monster.Humanoid.Health > 0 then
								local C = {};
								PosMon_X = Monster.HumanoidRootPart.CFrame;
								StatrMagnet = true;
								repeat
									wait();
									Q[31](Monster.HumanoidRootPart.CFrame * CFrame.new(0, -17, 0), 1.5);
									Q[14]();
								until not Monster.Parent or Monster.Humanoid.Health <= 0;
								StatrMagnet = false;
								C[1] = tostring(string.match(tostring(Q[7].Remotes.CommF_:InvokeServer("CakePrinceSpawner")), "%d+"));
								if C[1] == "nil" or C[1] == nil then
									Q[7].Remotes.CommF_:InvokeServer("CakePrinceSpawner", true);
								end;
							elseif Monster == nil then
								for C = 1500, 0, -300 do
									local h = {};
									h[2] = C;
									Q[45].GetMonster(h[2]);
								end;
								if Monster == nil then
									Q[31](CFrame.new(-2286.6843261719, 146.56562805176, -12226.881835938), 1.5);
								end;
							end;
						end;
					elseif Q[45].ffc(Q[35].Backpack, "God\'s Chalice") or Q[45].ffc(Q[35].Character, "God\'s Chalice") and not Mirror_Fractal_H then
						if Q[45].CheckItem("Conjured Cocoa") >= 10 then
							Q[7].Remotes.CommF_:InvokeServer("SweetChaliceNpc");
						elseif Q[45].CheckItem("Conjured Cocoa") < 10 then
							if (Q[35].Character.HumanoidRootPart.Position - Vector3.new(658.22302246094, 24.734258651733, -12541.991210938)).Magnitude >= 1800 then
								repeat
									wait();
									Q[31](CFrame.new(658.22302246094, 24.734258651733, -12541.991210938), 1.5);
								until (Q[35].Character.HumanoidRootPart.Position - Vector3.new(658.22302246094, 24.734258651733, -12541.991210938)).Magnitude <= 3 or Q[45].CheckItem("Conjured Cocoa") >= 10;
							elseif (Q[35].Character.HumanoidRootPart.Position - Vector3.new(658.22302246094, 24.734258651733, -12541.991210938)).Magnitude < 1800 then
								Monster = nil;
								for C = 1500, 0, -300 do
									local h = {};
									h[1] = C;
									Q[45].GetMonster(h[1]);
								end;
								if Monster ~= nil and Monster.Humanoid.Health > 0 then
									PosMon_X = Monster.HumanoidRootPart.CFrame;
									StatrMagnet = true;
									repeat
										wait();
										Q[31](Monster.HumanoidRootPart.CFrame * CFrame.new(0, -17, 0), 1.5);
										Q[14]();
									until not Monster.Parent or Monster.Humanoid.Health <= 0;
									StatrMagnet = false;
								elseif Monster == nil then
									for C = 1500, 0, -300 do
										local h = {};
										h[2] = C;
										Q[45].GetMonster(h[2]);
									end;
									if Monster == nil then
										Q[31](CFrame.new(658.22302246094, 24.734258651733, -12541.991210938), 1.5);
									end;
								end;
							end;
						end;
					elseif not Q[40]:FindFirstChild("Dough King") and not Q[7]:FindFirstChild("Dough King") then
						C[2] = true;
					end;
				until Mirror_Fractal_H or C[2];
			end;
		end;
		if Three_World then
			if Q[7].Remotes.CommF_:InvokeServer("EliteHunter") ~= Q[3]({ "I don\'t have anythin", "g for you right now.", " Come back later." }) then
				Q[7].Remotes.CommF_:InvokeServer("EliteHunter");
				for C, h in ipairs({ "Diablo", "Deandre", "Urban" }) do
					local y = {};
					y[2], y[1] = C, h;
					y[3] = Q[40]:FindFirstChild(y[1]) or Q[7]:FindFirstChild(y[1]);
					if y[3] and (y[3]:FindFirstChild("HumanoidRootPart") and (y[3]:FindFirstChild("Humanoid") and y[3].Humanoid.Health > 0)) then
						repeat
							Q[45].wt();
							Q[7].Remotes.CommF_:InvokeServer("EliteHunter");
							Q[31](y[3].HumanoidRootPart.CFrame * CFrame.new(0, 30, 0), 1.5);
							if not Q[45].ffc(Q[35].Character, "HasBuso") then
								Q[35].Character.HumanoidRootPart.Remotes.CommF_:InvokeServer("Buso");
							end;
							Q[14]();
						until not y[3].Parent or y[3].Humanoid.Health <= 0;
					end;
				end;
			end;
		end;
		if New_World then
			if Q[45].ffc(Q[40], "Darkbeard") or Q[45].ffc(Q[7], "Darkbeard") then
				if Q[45].ffc(Q[40], "Darkbeard") then
					for C, h in pairs(Q[40]:GetChildren()) do
						local y = {};
						y[3], y[1] = C, h;
						if y[1].Name == "Darkbeard" and y[1].Humanoid.Health > 0 then
							repeat
								Q[45].wt();
								if not Q[45].ffc(Q[35].Character, "HasBuso") then
									Q[35].Character.HumanoidRootPart.Remotes.CommF_:InvokeServer("Buso");
								end;
								Q[31](y[1].HumanoidRootPart.CFrame * CFrame.new(0, -30, 0), 1.5);
								Q[14]();
							until not y[1].Parent or y[1].Humanoid.Health <= 0 or not (getgenv()).AutoFarm;
						end;
					end;
				elseif Q[45].ffc(Q[7], "Darkbeard") then
					for C, h in pairs(Q[7]:GetChildren()) do
						local y = {};
						y[2], y[1] = C, h;
						if y[1].Name == "Darkbeard" and y[1].Humanoid.Health > 0 then
							repeat
								Q[45].wt();
								if not Q[45].ffc(Q[35].Character, "HasBuso") then
									Q[35].Character.HumanoidRootPart.Remotes.CommF_:InvokeServer("Buso");
								end;
								Q[31](y[1].HumanoidRootPart.CFrame * CFrame.new(0, -30, 0), 1.5);
								Q[14]();
							until not y[1].Parent or y[1].Humanoid.Health <= 0 or not (getgenv()).AutoFarm;
						end;
					end;
				end;
			end;
		end;
		if New_World then
			if Q[45].ffc(Q[40], "Core") or Q[45].ffc(Q[7], "Core") then
				if Q[45].ffc(Q[40], "Core") then
					for C, h in pairs(Q[40]:GetChildren()) do
						local y = {};
						y[1], y[2] = C, h;
						if y[2].Name == "Core" and y[2].Humanoid.Health > 0 then
							repeat
								Q[45].wt();
								Q[31](y[2].HumanoidRootPart.CFrame * CFrame.new(0, 40, 0), 1.5);
								if not Q[45].ffc(Q[35].Character, "HasBuso") then
									Q[7].Remotes.CommF_:InvokeServer("Buso");
								end;
								Q[14]();
							until not y[2].Parent or y[2].Humanoid.Health <= 0 or not (getgenv()).AutoFarm;
						end;
					end;
				elseif Q[45].ffc(Q[7], "Core") then
					for C, h in pairs(Q[7]:GetChildren()) do
						local y = {};
						y[3], y[2] = C, h;
						if y[2].Name == "Core" and y[2].Humanoid.Health > 0 then
							repeat
								Q[45].wt();
								Q[31](y[2].HumanoidRootPart.CFrame * CFrame.new(0, 40, 0), 1.5);
								if not Q[45].ffc(Q[35].Character, "HasBuso") then
									Q[7].Remotes.CommF_:InvokeServer("Buso");
								end;
								Q[14]();
							until not y[2].Parent or y[2].Humanoid.Health <= 0 or not (getgenv()).AutoFarm;
						end;
					end;
				end;
			end;
		end;
		Q[8]();
		if Quest ~= nil then
			return;
		end;
		if Q[24].Value < 2650 or not Three_World then
			if Q[24].Value <= 9 and (not New_World and not Three_World) then
				if Q[35].PlayerGui.Main.Quest.Visible then
					if Q[45].sf(Q[35].PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, tostring(NameEnemy)) then
						if Q[45].ffc(Q[40], Enemy) then
							for C, h in pairs(Q[40]:GetChildren()) do
								local y = {};
								y[1], y[2] = C, h;
								if y[2].Name == Enemy and (Q[45].ffc(y[2], "Humanoid") and (y[2].Humanoid.Health > 0 and Q[45].ffc(y[2], "HumanoidRootPart"))) then
									repeat
										Q[45].wt();
										Q[45].BN(y[2].Name);
										Q[31](y[2].HumanoidRootPart.CFrame * CFrame.new(0, 30, 0), 1.5);
										if not Q[45].ffc(Q[35].Character, "HasBuso") then
											Q[7].Remotes.CommF_:InvokeServer("Buso");
										end;
										Q[14]();
									until y[2].Humanoid.Health <= 0 or not Q[40]:FindFirstChild(Enemy) or not (Q[35].PlayerGui.Main:FindFirstChild("Quest")).Visible or not (getgenv()).AutoFarm or Quest ~= nil;
								end;
							end;
						else
							Q[31](EnemyPos, 1.5);
						end;
					else
						Q[7].Remotes.CommF_:InvokeServer("AbandonQuest");
					end;
				else
					repeat
						Q[45].wt();
						Q[31](QuestPos, 1.5);
						if (QuestPos.Position - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 5 and (Q[35].Character:WaitForChild("Humanoid")).Health > 0 then
							Q[45].wt();
							((Q[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("StartQuest", QuestName, QuestNumber);
						end;
					until (Q[35].PlayerGui.Main:FindFirstChild("Quest")).Visible or not (getgenv()).AutoFarm or Quest ~= nil;
				end;
			elseif Q[24].Value >= 9 and (Q[24].Value <= 70 and (not New_World and not Three_World)) then
				if ((CFrame.new(-7895, 5546, -380)).Position - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 1000 then
					if Q[45].ffc(Q[40], "Shanda") then
						for C, h in pairs(Q[40]:GetChildren()) do
							local y = {};
							y[2], y[1] = C, h;
							if y[1].Name == "Shanda" and (y[1]:FindFirstChild("Humanoid") and y[1].Humanoid.Health > 0) then
								repeat
									Q[45].wt();
									SROP = true;
									Q[31](y[1].HumanoidRootPart.CFrame * CFrame.new(0, 30, 0), 1.5);
									Q[14]();
									Q[45].BN(y[1].Name);
								until not y[1].Parent or y[1].Humanoid.Health <= 0 or Q[24].Value >= 91 or not (getgenv()).AutoFarm or Quest ~= nil;
							end;
						end;
					else
						Q[31](CFrame.new(-7757, 5582, -481), 1.5);
					end;
				else
					Q[7].Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047));
				end;
			elseif Q[24].Value >= 71 then
				if Q[35].PlayerGui.Main.Quest.Visible then
					if Q[45].sf(Q[35].PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, tostring(NameEnemy)) then
						if Q[45].ffc(Q[40], Enemy) then
							for C, h in pairs(Q[40]:GetChildren()) do
								local y = {};
								y[1], y[2] = C, h;
								if y[2].Name == Enemy and (y[2]:FindFirstChild("Humanoid") and (y[2].Humanoid.Health > 0 and y[2]:FindFirstChild("HumanoidRootPart"))) then
									repeat
										Q[45].wt();
										SROP = false;
										Q[31](y[2].HumanoidRootPart.CFrame * CFrame.new(0, 30, 0), 1.5);
										if not Q[45].ffc(Q[35].Character, "HasBuso") then
											Q[7].Remotes.CommF_:InvokeServer("Buso");
										end;
										Q[45].BN(y[2].Name);
										Q[14]();
									until y[2].Humanoid.Health <= 0 or not Q[40]:FindFirstChild(Enemy) or not (Q[35].PlayerGui.Main:FindFirstChild("Quest")).Visible or Quest ~= nil;
								end;
							end;
						else
							Q[31](EnemyPos, 1.5);
						end;
					else
						Q[7].Remotes.CommF_:InvokeServer("AbandonQuest");
					end;
				else
					repeat
						Q[45].wt();
						Q[31](QuestPos, 1.5);
						if (QuestPos.Position - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 5 and (Q[35].Character:WaitForChild("Humanoid")).Health > 0 then
							Q[45].wt(.5);
							((Q[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("StartQuest", QuestName, QuestNumber);
						end;
					until (Q[35].PlayerGui.Main:FindFirstChild("Quest")).Visible or not (getgenv()).AutoFarm or Quest ~= nil;
				end;
			end;
		elseif Q[24].Value >= 2650 and Three_World then
			SROP = false;
			if Q[45].ffc(Q[7], "Cake Prince") then
				for C, h in pairs(Q[7]:GetChildren()) do
					local y = {};
					y[1], y[2] = C, h;
					if y[2].Name == "Cake Prince" and (y[2]:FindFirstChild("Humanoid") and (y[2]:FindFirstChild("Humanoid")).Health > 0) then
						Q[31](y[2].HumanoidRootPart.CFrame * CFrame.new(0, 42, 10), 1.5);
					end;
				end;
			elseif Q[45].ffc(Q[40], "Cake Prince") then
				for C, h in pairs(Q[40]:GetChildren()) do
					local y = {};
					y[1], y[2] = C, h;
					if y[2].Name == "Cake Prince" and (y[2]:FindFirstChild("Humanoid") and (y[2]:FindFirstChild("Humanoid")).Health > 0) then
						Q[31](y[2].HumanoidRootPart.CFrame * CFrame.new(0, 42, 10), 1.5);
					end;
				end;
			else
				if tostring(string.match(tostring(Q[7].Remotes.CommF_:InvokeServer("CakePrinceSpawner")), "%d+")) == "nil" or tostring(string.match(tostring(Q[7].Remotes.CommF_:InvokeServer("CakePrinceSpawner")), "%d+")) == nil then
					Q[7].Remotes.CommF_:InvokeServer("CakePrinceSpawner", true);
				end;
				if Q[45].ffc(Q[40], "Cookie Crafter") or Q[45].ffc(Q[40], "Cake Guard") or Q[45].ffc(Q[40], "Baking Staff") or Q[45].ffc(Q[40], "Head Baker") then
					for C, h in pairs(Q[40]:GetChildren()) do
						local y = {};
						y[1], y[2] = C, h;
						if y[2].Name == "Cookie Crafter" or y[2].Name == "Cake Guard" or y[2].Name == "Baking Staff" or y[2].Name == "Head Baker" then
							repeat
								Q[45].wt();
								Q[31](y[2].HumanoidRootPart.CFrame * CFrame.new(0, 30, 0), 1.5);
								if not Q[45].ffc(Q[35].Character, "HasBuso") then
									Q[7].Remotes.CommF_:InvokeServer("Buso");
								end;
								Q[45].BN(y[2].Name);
								Q[14]();
							until y[2].Humanoid.Health <= 0 or not Q[40]:FindFirstChild(Enemy) or not (Q[35].PlayerGui.Main:FindFirstChild("Quest")).Visible or Quest ~= nil;
						end;
					end;
				else
					Q[31](CFrame.new(-2091.9118652344, 70.008842468262, -12142.8359375), 1.5);
				end;
			end;
		end;
	end;
Q[38] = function()
		if not noFruit then
			for C, h in pairs(Q[35].Backpack:GetChildren()) do
				local y = {};
				y[3], y[2] = C, h;
				if y[2]:GetAttribute("OriginalName") ~= nil and (Q[45].sf(y[2].Name, "Fruit") and (y[2]:IsA("Tool") and not Q[45].IsInList(Q[45].GetType(), y[2]:GetAttribute("OriginalName")))) then
					local C = {};
					C[1] = { "StoreFruit", y[2]:GetAttribute("OriginalName"), y[2] };
					((Q[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer(unpack(C[1]));
					Q[7].Remotes.CommF_:InvokeServer("GetFruits", false);
				end;
			end;
			for C, h in pairs(Q[35].Character:GetChildren()) do
				local y = {};
				y[3], y[1] = C, h;
				if y[1]:GetAttribute("OriginalName") ~= nil and (Q[45].sf(y[1].Name, "Fruit") and (y[1]:IsA("Tool") and not Q[45].IsInList(Q[45].GetType(), y[1]:GetAttribute("OriginalName")))) then
					local C = {};
					C[2] = { "StoreFruit", y[1]:GetAttribute("OriginalName"), y[1] };
					((Q[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer(unpack(C[2]));
					Q[7].Remotes.CommF_:InvokeServer("GetFruits", false);
				end;
			end;
		end;
	end;
_G.Ew = true;
Ewx = true;
task.spawn(function()
	while Q[45].wt() do
		if _G.Ew then
			Q[14]();
		else
			Q[38]();
			if Ewx then
				Q[21] = 0;
			else
				Q[21] = .2;
			end;
		end;
	end;
end);
task.spawn(function()
	while Q[45].wt(1) do
		xpcall(function()
			if not Black_Leg_C then
				repeat
					Q[45].wt(Q[21]);
					Q[7].Remotes.CommF_:InvokeServer("BuyBlackLeg");
					Q[14]();
					Q[45].wt(.05);
					if Q[45].ffc(Q[35].Character, "Black Leg") or Q[45].ffc(Q[35].Backpack, "Black Leg") and not Black_Leg_C then
						Black_Leg_C = true;
						Q[45].Equip("Black Leg");
					end;
				until Black_Leg_C;
			end;
			if not Electro_C then
				repeat
					Q[45].wt(Q[21]);
					Q[14]();
					Q[2]:SendKeyEvent(true, "V", false, game);
					wait(.5);
					Q[2]:SendKeyEvent(false, "V", false, game);
					if Q[45].ffc(Q[35].Character, "Black Leg") and (Q[35].Character["Black Leg"].Level.Value >= 300 and not Electro_C) then
						if Q[35].Character["Black Leg"].Level.Value >= 400 then
							Black_Leg_C_M = true;
						end;
						Electro_C = true;
						Q[45].wt(.05);
						Q[7].Remotes.CommF_:InvokeServer("BuyElectro");
					end;
				until Electro_C;
			end;
			if not Fishman_Karate_C then
				repeat
					Q[45].wt(Q[21]);
					Q[14]();
					if Q[45].ffc(Q[35].Character, "Electro") and (Q[35].Character.Electro.Level.Value >= 300 and not Fishman_Karate_C) then
						if Q[35].Character.Electro.Level.Value >= 400 then
							Electro_C_M = true;
						end;
						Fishman_Karate_C = true;
						Q[45].wt(.05);
						Q[7].Remotes.CommF_:InvokeServer("BuyFishmanKarate");
					end;
				until Fishman_Karate_C;
			end;
			if not Fishman_Karate_C_M then
				repeat
					local C = {};
					task.wait(Q[21]);
					Q[14]();
					Q[7].Remotes.CommF_:InvokeServer("BuyFishmanKarate");
					C[2] = Q[35].Character:FindFirstChild("Fishman Karate");
					if C[2] and (C[2]:FindFirstChild("Level") and C[2].Level.Value >= 400) then
						Fishman_Karate_C_M = true;
					end;
				until Fishman_Karate_C_M;
			end;
			Q[45].wt(Q[21]);
			if not Dragon_Claw_C then
				local C = {};
				C[2] = Q[7].Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
				if C[2] == 1 or C[2] == 2 then
					pcall(function()
						if Q[35].Character["Fishman Karate"].Level.Value >= 400 then
							Fishman_Karate_C_M = true;
						end;
					end);
					Dragon_Claw_C = true;
				end;
			end;
			repeat
				task.wait(Q[21]);
				Q[14]();
				if not Super_human then
					if Dragon_Claw_C then
						if Q[45].ffc(Q[35].Character, "Dragon Claw") and Q[35].Character["Dragon Claw"].Level.Value >= 300 then
							local C = {};
							if Q[35].Character["Dragon Claw"].Level.Value >= 400 then
								Dragon_Claw_C_M = true;
							end;
							C[2] = { [1] = "BuySuperhuman" };
							if Q[7].Remotes.CommF_:InvokeServer(unpack(C[2])) == 1 or Q[7].Remotes.CommF_:InvokeServer(unpack(C[2])) == 2 then
								Super_human = true;
								if Q[35].Character.Superhuman.Level.Value >= 400 then
									Super_humanw_C_M = true;
								end;
							end;
						end;
					end;
				end;
			until Super_human;
			if not Death_Step then
				if Q[7].Remotes.CommF_:InvokeServer("BuyDeathStep") == 1 or Q[7].Remotes.CommF_:InvokeServer("BuyDeathStep") == 2 then
					Death_Step = true;
				end;
			end;
			if Black_Leg_C_M then
				repeat
					local C = {};
					task.wait(Q[21]);
					Q[14]();
					C[1] = Q[35].Character:FindFirstChild("Death Step");
					if C[1] and (C[1]:FindFirstChild("Level") and C[1].Level.Value >= 400) then
						local C = {};
						Q[7].Remotes.CommF_:InvokeServer("BuyBlackLeg");
						C[1] = Q[35].Character:FindFirstChild("Black Leg");
						if C[1] and (C[1]:FindFirstChild("Level") and C[1].Level.Value >= 400) then
							Black_Leg_C_M = true;
						end;
					end;
				until Black_Leg_C_M;
			end;
			if not Death_Step_C_M then
				repeat
					local C = {};
					task.wait(Q[21]);
					Q[14]();
					Q[7].Remotes.CommF_:InvokeServer("BuyDeathStep");
					C[1] = Q[35].Character:FindFirstChild("Death Step");
					if C[1] and (C[1]:FindFirstChild("Level") and C[1].Level.Value >= 400) then
						Death_Step_C_M = true;
					end;
				until Death_Step_C_M;
			end;
			if not Electro_C_M then
				repeat
					local C = {};
					task.wait(Q[21]);
					Q[14]();
					Q[7].Remotes.CommF_:InvokeServer("BuyElectro");
					C[1] = Q[35].Character:FindFirstChild("Electro");
					if C[1] and (C[1]:FindFirstChild("Level") and C[1].Level.Value >= 400) then
						Electro_C_M = true;
					end;
				until Electro_C_M;
			end;
			if not Fishman_Karate_C_M then
				repeat
					local C = {};
					task.wait(Q[21]);
					Q[7].Remotes.CommF_:InvokeServer("BuyFishmanKarate");
					warn();
					C[1] = Q[35].Character:FindFirstChild("Fishman Karate");
					if C[1] and (C[1]:FindFirstChild("Level") and C[1].Level.Value >= 400) then
						Fishman_Karate_C_M = true;
					end;
				until Fishman_Karate_C_M;
			end;
			if not Dragon_Claw_C_M then
				repeat
					local C = {};
					task.wait(Q[21]);
					Q[14]();
					Q[7].Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
					C[1] = Q[35].Character:FindFirstChild("Dragon Claw");
					if C[1] and (C[1]:FindFirstChild("Level") and C[1].Level.Value >= 400) then
						Dragon_Claw_C_M = true;
					end;
				until Dragon_Claw_C_M;
			end;
			if not Sharkman_Karate_C then
				repeat
					Q[45].wt(Q[21]);
					Q[14]();
					Q[7].Remotes.CommF_:InvokeServer("BuySharkmanKarate");
					if Q[45].ffc(Q[35].Backpack, "Sharkman Karate") or Q[45].ffc(Q[35].Character, "Sharkman Karate") then
						Sharkman_Karate_C = true;
					end;
				until Sharkman_Karate_C;
			end;
			if not Sharkman_Karate_C_M then
				repeat
					local C = {};
					task.wait(Q[21]);
					Q[14]();
					Q[7].Remotes.CommF_:InvokeServer("BuySharkmanKarate");
					C[1] = Q[35].Character:FindFirstChild("Sharkman Karate");
					if C[1] and (C[1]:FindFirstChild("Level") and C[1].Level.Value >= 400) then
						Sharkman_Karate_C_M = true;
					end;
				until Sharkman_Karate_C_M;
			end;
			if not Electric_Claw_C then
				repeat
					task.wait(Q[21]);
					if Q[7].Remotes.CommF_:InvokeServer("BuyElectricClaw") == 1 or Q[7].Remotes.CommF_:InvokeServer("BuyElectricClaw") == 2 then
						Electric_Claw_C = true;
					end;
				until Electric_Claw_C;
			end;
			if not Electric_Claw_C_M then
				repeat
					local C = {};
					task.wait(Q[21]);
					Q[14]();
					Q[7].Remotes.CommF_:InvokeServer("BuyElectricClaw");
					C[2] = Q[35].Character:FindFirstChild("Electric Claw");
					if C[2] and (C[2]:FindFirstChild("Level") and C[2].Level.Value >= 400) then
						Electric_Claw_C_M = true;
					end;
				until Electric_Claw_C_M;
			end;
			if not Dragon_Talon_C then
				repeat
					task.wait(Q[21]);
					if Q[7].Remotes.CommF_:InvokeServer("BuyDragonTalon") == 1 or Q[7].Remotes.CommF_:InvokeServer("BuyDragonTalon") == 2 then
						Dragon_Talon_C = true;
					end;
				until Dragon_Talon_C;
			end;
			if not Dragon_Talon_C_M then
				repeat
					local C = {};
					task.wait(Q[21]);
					Q[14]();
					Q[7].Remotes.CommF_:InvokeServer("BuyDragonTalon");
					C[1] = Q[35].Character:FindFirstChild("Dragon Talon");
					if C[1] and (C[1]:FindFirstChild("Level") and C[1].Level.Value >= 400) then
						Dragon_Talon_C_M = true;
					end;
				until Dragon_Talon_C_M;
			end;
			if not God_Human_C then
				repeat
					task.wait(Q[21]);
					if Q[7].Remotes.CommF_:InvokeServer("BuyGodhuman") == 1 or Q[7].Remotes.CommF_:InvokeServer("BuyGodhuman") == 2 then
						God_Human_C = true;
					end;
				until God_Human_C;
			end;
			if not God_Human_C_M then
				repeat
					local C = {};
					task.wait(Q[21]);
					Q[14]();
					Q[7].Remotes.CommF_:InvokeServer("BuyGodhuman");
					C[2] = Q[35].Character:FindFirstChild("Godhuman");
					if C[2] and (C[2]:FindFirstChild("Level") and C[2].Level.Value >= 400) then
						God_Human_C_M = true;
					end;
				until God_Human_C_M;
			end;
		end, warn);
	end;
end);
(getgenv()).AutoFarm = true;
if Q[7].Remotes.CommF_:InvokeServer("BuySharkmanKarate", true) ~= Q[3]({ "I lost my house keys", ", could you help me ", "find them? Thanks." }) then
	CheckFindWaterKey = true;
end;
if Q[24].Value >= 2000 and (getgenv()).Configs.Quest["RGB Haki"] then
	if Q[7].Remotes.CommF_:InvokeServer("HornedMan", "Bet") == 1 then
		RGB_Haki_H = true;
	end;
end;
Q[50] = function()
		if not Q[45].gi("Cursed Dual Katana") then
			if Q[45].gi("Tushita") and Q[45].gi("Yama") then
				local Q = {};
				Q[1] = (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("getInventory");
				for Q, C in pairs(Q[1]) do
					local h = {};
					h[3], h[2] = Q, C;
					if h[2].Type == "Sword" then
						if h[2].Name == "Tushita" and h[2].Mastery >= 400 then
							Tushita_M = true;
						elseif h[2].Name == "Yama" and h[2].Mastery >= 400 then
							Yama_M = true;
						end;
					end;
				end;
				return Tushita_M and Yama_M;
			end;
		end;
		return false;
	end;
task.spawn(function()
	while Q[45].wt() do
		xpcall(function()
			if (getgenv()).AutoFarm then
				local C = {};
				Stop_Fast_Attack = false;
				if Q[24].Value >= 1500 or RainbowSaviour then
					if (((Q[7]:WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/FruitCustomizerRF")):InvokeServer({ StorageName = "Rainbow Saviour", Type = "AuraSkin", Context = "Equip" }) ~= false then
						(((Q[7]:WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/FruitCustomizerRF")):InvokeServer({ StorageName = "Rainbow Saviour", Type = "AuraSkin", Context = "Equip" });
					end;
				end;
				C[1] = false;
				if ((Q[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Cousin", "Buy") == 1 then
					Q[45].wt(1);
					Q[38]();
				else
					for h, y in pairs(Q[19]:GetChildren()) do
						local r = {};
						r[1], r[3] = h, y;
						if r[3]:GetAttribute("OriginalName") ~= nil and (Q[45].sf(r[3].Name, "Fruit") and (r[3]:IsA("Tool") and not Q[45].IsInList(Q[45].GetType(), r[3]:GetAttribute("OriginalName")))) then
							repeat
								Q[45].wt(.1);
								Q[45].Status(" Status : TP To " .. r[3].Name);
								TPZ(r[3].Handle.CFrame);
								C[1] = true;
								Q[38]();
							until not r[3] or game.Players.LocalPlayer.Backpack:FindFirstChild(r[3].Name) or Q[45].IsInList(Q[45].GetType(), r[3]:GetAttribute("OriginalName")) or (r[3].Handle.Position - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 10 or not (getgenv()).AutoFarm;
						end;
					end;
					if not C[1] then
						local C = {};
						if Q[45].tf(Configs.Gun, "Magma Blaster") and (Q[24].Value >= 200 and (not Q[45].gi("Magma Blaster") and (Old_World and Q[45].CheckBoss("Magma Admiral")))) then
							Quest = "Magma Blaster";
							return;
						end;
						if Q[45].tf(Configs.Gun, "Bazooka") and (Q[24].Value >= 200 and (not Q[45].gi("Bazooka") and (Old_World and Q[45].CheckBoss("Wysper")))) then
							Quest = "Bazooka";
							return;
						end;
						if Q[45].tf(Configs.Sword, "Saber") and (Q[24].Value >= 200 and not Q[45].gi("Saber")) then
							Quest = "Saber";
							return;
						end;
						if Q[45].tf(Configs.Sword, "Shark Saw") and (Q[24].Value >= 100 and (not Q[45].gi("Shark Saw") and (Old_World and Q[45].CheckBoss("The Saw")))) then
							Quest = "Shark Saw";
							return;
						end;
						if Q[45].tf(Configs.Sword, "Wardens Sword") and (Q[24].Value >= 100 and (not Q[45].gi("Wardens Sword") and (Old_World and Q[45].CheckBoss("Chief Warden")))) then
							Quest = "Wardens Sword";
							return;
						end;
						if Q[45].tf(Configs.Sword, "Pole (1st Form)") and (Q[24].Value >= 100 and (not Q[45].gi("Pole (1st Form)") and (Old_World and Q[45].CheckBoss("Thunder God")))) then
							Quest = "Pole (1st Form)";
							return;
						end;
						if ((Q[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Alchemist", "1") ~= -2 and (Q[1].Value >= 2500000 and (Q[24].Value >= 850 and (Q[7].Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 3 and not Q[45].ffc(Q[35].Data.Race, "Evolved")))) then
							Quest = "Evo Race V1";
							return;
						end;
						if Q[7].Remotes.CommF_:InvokeServer("Wenlocktoad", "3") ~= -2 and (Q[7].Remotes.CommF_:InvokeServer("TalkTrevor", "1") == 0 and (Q[45].IsHeavenly() and (Q[22].Value >= 1400 and Q[1].Value >= 2000000))) then
							Quest = "Evo Race V2";
							return;
						end;
						if Q[45].tf(Configs.Sword, "Gravity Blade") and (not Q[45].gi("Gravity Blade") and (New_World and (Q[45].CheckBoss("Orbitus") and Q[24].Value >= 800))) then
							Quest = "Gravity Blade";
							return;
						end;
						if Q[45].tf(Configs.Sword, "Longsword") and (not Q[45].gi("Longsword") and (New_World and (Q[45].CheckBoss("Diamond") and Q[24].Value >= 800))) then
							Quest = "Longsword";
							return;
						end;
						if Q[45].tf(Configs.Sword, "Rengoku") and (not Q[45].gi("Rengoku") and (New_World and (Q[45].CheckBoss("Awakened Ice Admiral") and Q[24].Value >= 800))) then
							Quest = "Rengoku";
							return;
						end;
						if Q[45].IsHall() and (New_World and (Q[45].CheckBoss("Awakened Ice Admiral") and Q[24].Value >= 800)) then
							Quest = "Rengoku";
							return;
						end;
						if not Q[45].gi("Rengoku") and (Q[45].CheckBackpack("Hidden Key") and New_World) then
							repeat
								Q[45].wt(.3);
								Q[45].Status(Q[3]({ " Status : Use Hidden", " Key" }));
								Q[45].Equip("Hidden Key");
								Q[31](CFrame.new(6572.29248, 295.712677, -6966.09961, .803500533, -3.27515153e-008, .595304072, 3.97485422e-008, 1, 1.36659384e-009, -0.595304072, 2.25644108e-008, .803500533), 1.5);
							until (Q[35].Character.HumanoidRootPart.Position - Vector3.new(6572.29248, 295.712677, -6966.09961)).Magnitude <= 5 or not (getgenv()).AutoFarm;
							Q[45].wt(1);
							return;
						end;
						if New_World and (Q[45].IsHall() and Q[45].CheckBackpack("Library Key")) then
							repeat
								Q[45].wt(.1);
								Q[45].Status(Q[3]({ " Status : Use Librar", "y Key" }));
								Q[45].Equip("Library Key");
								Q[31](CFrame.new(6377.12549, 296.634735, -6843.76025, -0.860993743, 1.17677516e-007, -0.508615494, 1.31121894e-007, 1, 9.40274347e-009, .508615494, -5.8594928e-008, -0.860993743), 1.5);
							until (Q[35].Character.HumanoidRootPart.Position - Vector3.new(6377.12549, 296.634735, -6843.76025)).Magnitude <= 1 or not Q[45].IsHall() or not (getgenv()).AutoFarm;
							Q[45].wt(1);
							return;
						end;
						if Q[45].tf(Configs.Sword, "Flail") and (not Q[45].gi("Flail") and (New_World and Q[45].CheckBoss("Smoke Admiral"))) then
							Quest = "Flail";
							return;
						end;
						if Q[7].Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") ~= 3 and Q[24].Value >= 850 then
							Quest = "BartiloQuest";
							return;
						end;
						if not CheckFindWaterKey then
							if Q[7].Remotes.CommF_:InvokeServer("BuySharkmanKarate", true) == Q[3]({ "I lost my house keys", ", could you help me ", "find them? Thanks." }) and Q[24].Value >= 850 then
								Quest = "Find Water Key";
								return;
							end;
						end;
						if New_World and (not Q[45].IsHeavenly() and Q[7].Remotes.CommF_:InvokeServer("TalkTrevor", "1") == 0) then
							Quest = "Don Swan";
							return;
						end;
						if Three_World and (Q[45].tf(Configs.Sword, "Yama") and (Q[7].Remotes.CommF_:InvokeServer("EliteHunter", "Progress") >= 30 and not Q[45].gi("Yama"))) then
							Quest = "Yama";
							return;
						end;
						if Three_World and (Q[45].tf(Configs.Sword, "Tushita") and (not Q[45].gi("Tushita") and Unlock_Tushita_Quest)) then
							Quest = "Longma";
							return;
						end;
						if Q[45].tf(Configs.Gun, "Soul Guitar") and (not Q[45].gi("Soul Guitar") and (Q[24].Value >= 2000 and Q[45].CheckItem("Dark Fragment") >= 1)) then
							Quest = "Soul Guitar";
							return;
						end;
						if Q[24].Value >= 2000 and ((getgenv()).Configs.Quest["RGB Haki"] and not RGB_Haki_H) then
							if Q[7].Remotes.CommF_:InvokeServer("HornedMan", "Bet") == nil then
								Quest = "RGB";
								return;
							end;
						end;
						if Q[45].tf(Configs.Gun, "Venom Bow") and (not Q[45].gi("Venom Bow") and (Three_World and Q[45].CheckBoss("Hydra Leader"))) then
							Quest = "Venom Bow";
							return;
						end;
						if Q[45].tf(Configs.Sword, "Twin Hooks") and (not Q[45].gi("Twin Hooks") and (Three_World and Q[45].CheckBoss("Captain Elephant"))) then
							Quest = "Twin Hooks";
							return;
						end;
						if (game:GetService("Workspace")).Map:FindFirstChild("MysticIsland") and (not Q[7].Remotes.CommF_:InvokeServer("CheckTempleDoor") and (Q[7].Remotes.CommF_:InvokeServer("Wenlocktoad", "3") == -2 and Mirror_Fractal_H)) then
							Quest = "Pull Lerver";
							return;
						end;
						if Q[50]() then
							Quest = "Cursed Dual Katana";
							return;
						end;
						if not Dragon_Talon_C then
							if Q[45].ffc(Q[35].Backpack, "Fire Essence") or Q[45].ffc(Q[35].Character, "Fire Essence") then
								repeat
									Q[45].Status(Q[3]({ " Status : Use Fire E", "ssence" }));
									Q[45].Equip("Fire Essence");
									Q[45].wt(.5);
									Q[7].Remotes.CommF_:InvokeServer("BuyDragonTalon", true);
									Q[7].Remotes.CommF_:InvokeServer("BuyDragonTalon");
								until not Q[45].ffc(Q[35].Backpack, "Fire Essence") and not Q[45].ffc(Q[35].Character, "Fire Essence");
								Q[7].Remotes.CommF_:InvokeServer("BuyDragonTalon");
								Dragon_Talon_C = true;
								return;
							end;
						end;
						if Fishman_Karate_C_M and (not Dragon_Claw_C and Q[24].Value >= 1100) then
							if not Dragon_Claw_C then
								repeat
									Q[45].wt();
									Q[14]();
									if Q[45].ffc(Q[35].Backpack, "Dragon Claw") or Q[45].ffc(Q[35].Character, "Dragon Claw") then
										Dragon_Claw_C = true;
										return;
									end;
									if not Dragon_Claw_C and Q[24].Value >= 1100 then
										if Q[17].Value >= 1500 then
											local C = {};
											C[1] = { [1] = "BlackbeardReward", [2] = "DragonClaw", [3] = "2" };
											Q[7].Remotes.CommF_:InvokeServer(unpack(C[1]));
											Dragon_Claw_C = true;
											return;
										elseif Q[17].Value < 1500 then
											if Q[35].PlayerGui.Main.TopHUDList.RaidTimer.Visible and (Q[17].Value < 1500 and not Dragon_Claw_C) then
												Q[45].Status(" Status : Farm Raid");
												if #Q[45].GetMobRaid() == 0 then
													if Select_Map == "Magma" or Select_Map == "Flame" then
														for Q, C in pairs(Q[19]:GetDescendants()) do
															local h = {};
															h[3], h[2] = Q, C;
															if h[2].Name == "Lava" then
																h[2]:Destroy();
															end;
														end;
													end;
													if Q[45].GetRaid("Island 5", 2500) ~= nil then
														Q[31]((Q[45].GetRaid("Island 5", 2500)).CFrame * CFrame.new(0, 120, 0), 1.5);
													elseif Q[45].GetRaid("Island 4", 2500) ~= nil then
														Q[31]((Q[45].GetRaid("Island 4", 2500)).CFrame * CFrame.new(0, 120, 0), 1.5);
													elseif Q[45].GetRaid("Island 3", 2500) ~= nil then
														Q[31]((Q[45].GetRaid("Island 3", 2500)).CFrame * CFrame.new(0, 120, 0), 1.5);
													elseif Q[45].GetRaid("Island 2", 2500) ~= nil then
														Q[31]((Q[45].GetRaid("Island 2", 2500)).CFrame * CFrame.new(0, 120, 0), 1.5);
													elseif Q[45].GetRaid("Island 1", 2500) ~= nil then
														Q[31]((Q[45].GetRaid("Island 1", 2500)).CFrame * CFrame.new(0, 120, 0), 1.5);
													end;
												else
													for C, h in pairs(Q[40]:GetChildren()) do
														local y = {};
														y[2], y[1] = C, h;
														if y[1]:FindFirstChild("HumanoidRootPart") and (y[1]:FindFirstChild("Humanoid") and ((y[1]:FindFirstChild("Humanoid")).Health > 0 and (Q[35].Character.HumanoidRootPart.CFrame.Position - y[1].HumanoidRootPart.CFrame.Position).Magnitude <= 5000)) then
															repeat
																local C = {};
																Q[45].wt(.1);
																if Select_Map == "Magma" or Select_Map == "Flame" then
																	for Q, C in pairs(Q[19]:GetDescendants()) do
																		local h = {};
																		h[1], h[2] = Q, C;
																		if h[2].Name == "Lava" then
																			h[2]:Destroy();
																		end;
																	end;
																end;
																C[2] = math.random(1, 5);
																if C[2] == 1 then
																	C[3] = CFrame.new(0, 30, 1);
																elseif C[2] == 2 then
																	C[3] = CFrame.new(0, 30, 15);
																elseif C[2] == 3 then
																	C[3] = CFrame.new(1, 30, -15);
																elseif C[2] == 4 then
																	C[3] = CFrame.new(15, 30, 0);
																elseif C[2] == 5 then
																	C[3] = CFrame.new(-15, 30, 0);
																end;
																Q[31](y[1].HumanoidRootPart.CFrame * C[3], 1.5);
																if not Q[45].ffc(Q[35].Character, "HasBuso") then
																	Q[7].Remotes.CommF_:InvokeServer("Buso");
																end;
																Q[14]();
															until not y[1].Parent or y[1].Humanoid.Health <= 0 or #Q[45].GetMobRaid() == 0;
														end;
													end;
												end;
											else
												if Q[35].Data.DevilFruit.Value == "Dark-Dark" then
													Select_Map = "Dark";
												elseif Q[35].Data.DevilFruit.Value == "Sand-Sand" then
													Select_Map = "Sand";
												elseif Q[35].Data.DevilFruit.Value == "Magma-Magma" then
													Select_Map = "Magma";
												elseif Q[35].Data.DevilFruit.Value == "Rumble-Rumble" then
													Select_Map = "Rumble";
												elseif Q[35].Data.DevilFruit.Value == "Flame-Flame" then
													Select_Map = "Flame";
												elseif Q[35].Data.DevilFruit.Value == "Ice-Ice" then
													Select_Map = "Ice";
												elseif Q[35].Data.DevilFruit.Value == "Light-Light" then
													Select_Map = "Light";
												elseif Q[35].Data.DevilFruit.Value == "String-String" then
													Select_Map = "String";
												elseif Q[35].Data.DevilFruit.Value == "Quake-Quake" then
													Select_Map = "Quake";
												elseif Q[35].Data.DevilFruit.Value == "Buddha-Buddha" then
													Select_Map = "Buddha";
												else
													Select_Map = "Ice";
												end;
												Q[7].Remotes.CommF_:InvokeServer("RaidsNpc", "Select", Select_Map);
												Q[45].wt(.2);
												if Q[35].Backpack:FindFirstChild("Special Microchip") or Q[35].Character:FindFirstChild("Special Microchip") and Q[35].Character.Humanoid.Health > 0 then
													if Q[30] == 4442272183 and Q[35].Character.Humanoid.Health > 0 then
														local C = {};
														fireclickdetector(Q[19].Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector, 1);
														C[2] = 0;
														repeat
															C[2] = C[2] + 1;
															Q[45].wt(1);
														until C[2] >= 20 or Q[35].PlayerGui.Main.Timer.Visible == true;
													elseif Q[30] == 7449423635 then
														Q[31](CFrame.new(-5034, 315, -2951), 1.5);
														if ((CFrame.new(-5034, 315, -2951)).Position - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 3 then
															if Q[35].Character.Humanoid.Health > 0 then
																local C = {};
																fireclickdetector(Q[19].Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector, 1);
																C[1] = 0;
																repeat
																	C[1] = C[1] + 1;
																	Q[45].wt(1);
																until C[1] >= 20 or Q[35].PlayerGui.Main.Timer.Visible == true;
															end;
														end;
													end;
												else
													if not Q[35].PlayerGui.Main.TopHUDList.RaidTimer.Visible then
														if Q[1].Value >= 0 and Q[35].Data.Fragments.Value >= 1500 then
															local Q = {};
															Q[2] = { [1] = "BlackbeardReward", [2] = "DragonClaw", [3] = "2" };
															(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(Q[2]));
															Dragon_Claw_C = true;
															return;
														end;
														table.sort(Q[45].GetFruits(), function(Q, C)
															local h = {};
															h[2], h[1] = Q, C;
															if h[2].Value < 100000 and h[2].Value < 100000 then
																return h[2].Value < h[1].Value;
															end;
														end);
														Q[45].wt(1);
														if #Q[45].GetFruits() > 0 and not Dragon_Claw_C then
															Q[45].wt(2);
															if not Q[35].PlayerGui.Main.TopHUDList.RaidTimer.Visible then
																if Q[35].Character.Humanoid.Health > 0 and Q[35].Data.Fragments.Value < 5000 then
																	Q[7].Remotes.CommF_:InvokeServer("LoadFruit", (Q[45].GetFruits())[1].Name);
																elseif Q[17].Value < 5000 then
																	break;
																end;
																if Q[35].Data.DevilFruit.Value == "Dark-Dark" then
																	Select_Map = "Dark";
																elseif Q[35].Data.DevilFruit.Value == "Sand-Sand" then
																	Select_Map = "Sand";
																elseif Q[35].Data.DevilFruit.Value == "Magma-Magma" then
																	Select_Map = "Magma";
																elseif Q[35].Data.DevilFruit.Value == "Rumble-Rumble" then
																	Select_Map = "Rumble";
																elseif Q[35].Data.DevilFruit.Value == "Flame-Flame" then
																	Select_Map = "Flame";
																elseif Q[35].Data.DevilFruit.Value == "Ice-Ice" then
																	Select_Map = "Ice";
																elseif Q[35].Data.DevilFruit.Value == "Light-Light" then
																	Select_Map = "Light";
																elseif Q[35].Data.DevilFruit.Value == "String-String" then
																	Select_Map = "String";
																elseif Q[35].Data.DevilFruit.Value == "Quake-Quake" then
																	Select_Map = "Quake";
																elseif Q[35].Data.DevilFruit.Value == "Buddha-Buddha" then
																	Select_Map = "Buddha";
																else
																	Select_Map = "Ice";
																end;
																Q[7].Remotes.CommF_:InvokeServer("RaidsNpc", "Select", Select_Map);
																if Q[30] == 4442272183 and Q[35].Character.Humanoid.Health > 0 then
																	local C = {};
																	fireclickdetector(Q[19].Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector, 1);
																	C[2] = 0;
																	repeat
																		C[2] = C[2] + 1;
																		Q[45].wt(1);
																	until C[2] >= 20 or Q[35].PlayerGui.Main.Timer.Visible;
																elseif Q[30] == 7449423635 then
																	Q[31](CFrame.new(-5034, 315, -2951), 1.5);
																	if ((CFrame.new(-5034, 315, -2951)).Position - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 3 then
																		if Q[35].Character.Humanoid.Health > 0 then
																			local C = {};
																			fireclickdetector(Q[19].Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector, 1);
																			C[1] = 0;
																			repeat
																				C[1] = C[1] + 1;
																				Q[45].wt(1);
																			until C[1] >= 20 or Q[35].PlayerGui.Main.Timer.Visible;
																		end;
																	end;
																end;
															end;
														else
															Quest = nil;
															Q[45].Status(Q[3]({ " Status : Auto Farm ", "Level" }));
															Q[39]();
														end;
													end;
												end;
											end;
										end;
									end;
								until Dragon_Claw_C;
							end;
							return;
						end;
						C[1] = function()
								for Q, C in pairs(Q[7].Remotes.CommF_:InvokeServer("getInventory")) do
									local h = {};
									h[3], h[1] = Q, C;
									if h[1].Value and h[1].Value >= 1000000 then
										return true;
									end;
								end;
								return false;
							end;
						if Q[7].Remotes.CommF_:InvokeServer("TalkTrevor", "1") ~= 0 and (game.Players.LocalPlayer.Data.Level.Value >= 900 and C[1]()) then
							repeat
								Q[45].wt();
								noFruit = true;
								for C, h in pairs(Q[7].Remotes.CommF_:InvokeServer("getInventory")) do
									local y = {};
									y[2], y[1] = C, h;
									if y[1].Value and y[1].Value >= 1000000 then
										((Q[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("LoadFruit", y[1].Name);
										Q[45].wt(1);
										for C, h in pairs((game:GetService("Players")).LocalPlayer.Backpack:GetChildren()) do
											local y = {};
											y[3], y[1] = C, h;
											if string.find(y[1].Name, "Fruit") then
												Q[45].Equip(y[1]);
											end;
										end;
										Q[45].wt(.2);
										Q[7].Remotes.CommF_:InvokeServer("TalkTrevor", "1");
										Q[7].Remotes.CommF_:InvokeServer("TalkTrevor", "2");
										Q[7].Remotes.CommF_:InvokeServer("TalkTrevor", "3");
										return;
									end;
								end;
							until Q[7].Remotes.CommF_:InvokeServer("TalkTrevor", "1") == 0 or not C[1]();
							noFruit = false;
						end;
						if Q[24].Value >= 1500 and (Q[7].Remotes.CommF_:InvokeServer("TalkTrevor", "1") ~= 0 and not C[1]()) then
							Q[45].HopLowServer(10);
							return;
						end;
						if Super_human and (not Death_Step and Q[24].Value >= 1100) then
							if not Death_Step then
								repeat
									Q[45].wt();
									Q[14]();
									if not Super_humanw_C_M then
										Q[7].Remotes.CommF_:InvokeServer("BuySuperhuman");
										if Q[35].Character.Superhuman.Level.Value < 400 then
											repeat
												Q[45].wt();
												Q[14]();
												Quest = nil;
												Q[45].Status(Q[3]({ " Status : Auto Farm ", "Level" }));
												Q[39]();
											until Q[35].Character.Superhuman.Level.Value >= 400;
											Super_humanw_C_M = true;
										end;
									end;
									if Q[45].ffc(Q[35].Backpack, "Death Step") or Q[45].ffc(Q[35].Character, "Death Step") then
										Death_Step = true;
										return;
									end;
									if not Death_Step and Q[24].Value >= 1100 then
										if Q[17].Value >= 5000 then
											if Black_Leg_C_M then
												if Q[1].Value >= 2500000 then
													Q[7].Remotes.CommF_:InvokeServer("BuyDeathStep");
													Death_Step = true;
													return;
												else
													Q[14]();
													Quest = nil;
													Q[45].Status(Q[3]({ " Status : Auto Farm ", "Level" }));
													Q[39]();
												end;
											else
												repeat
													Q[45].wt();
													Q[7].Remotes.CommF_:InvokeServer("BuyBlackLeg");
													Q[14]();
													Quest = nil;
													Q[45].Status(Q[3]({ " Status : Auto Farm ", "Level" }));
													Q[39]();
												until Q[35].Character["Black Leg"].Level.Value >= 400;
												Black_Leg_C_M = true;
												if not Super_human then
													Q[7].Remotes.CommF_:InvokeServer("BuySuperhuman");
												end;
												return;
											end;
										elseif Q[17].Value < 5000 then
											if Q[35].PlayerGui.Main.TopHUDList.RaidTimer.Visible and (Q[17].Value < 5000 and not Death_Step) then
												Q[45].Status(" Status : Farm Raid");
												if #Q[45].GetMobRaid() == 0 then
													if Select_Map == "Magma" or Select_Map == "Flame" then
														for Q, C in pairs(Q[19]:GetDescendants()) do
															local h = {};
															h[2], h[1] = Q, C;
															if h[1].Name == "Lava" then
																h[1]:Destroy();
															end;
														end;
													end;
													if Q[45].GetRaid("Island 5", 2500) ~= nil then
														Q[31]((Q[45].GetRaid("Island 5", 2500)).CFrame * CFrame.new(0, 120, 0), 1.5);
													elseif Q[45].GetRaid("Island 4", 2500) ~= nil then
														Q[31]((Q[45].GetRaid("Island 4", 2500)).CFrame * CFrame.new(0, 120, 0), 1.5);
													elseif Q[45].GetRaid("Island 3", 2500) ~= nil then
														Q[31]((Q[45].GetRaid("Island 3", 2500)).CFrame * CFrame.new(0, 120, 0), 1.5);
													elseif Q[45].GetRaid("Island 2", 2500) ~= nil then
														Q[31]((Q[45].GetRaid("Island 2", 2500)).CFrame * CFrame.new(0, 120, 0), 1.5);
													elseif Q[45].GetRaid("Island 1", 2500) ~= nil then
														Q[31]((Q[45].GetRaid("Island 1", 2500)).CFrame * CFrame.new(0, 120, 0), 1.5);
													end;
												else
													for C, h in pairs(Q[40]:GetChildren()) do
														local y = {};
														y[2], y[1] = C, h;
														if y[1]:FindFirstChild("HumanoidRootPart") and (y[1]:FindFirstChild("Humanoid") and ((y[1]:FindFirstChild("Humanoid")).Health > 0 and (Q[35].Character.HumanoidRootPart.CFrame.Position - y[1].HumanoidRootPart.CFrame.Position).Magnitude <= 5000)) then
															repeat
																local C = {};
																Q[45].wt(.1);
																if Select_Map == "Magma" or Select_Map == "Flame" then
																	for Q, C in pairs(Q[19]:GetDescendants()) do
																		local h = {};
																		h[1], h[3] = Q, C;
																		if h[3].Name == "Lava" then
																			h[3]:Destroy();
																		end;
																	end;
																end;
																C[2] = math.random(1, 5);
																if C[2] == 1 then
																	C[1] = CFrame.new(0, 30, 1);
																elseif C[2] == 2 then
																	C[1] = CFrame.new(0, 30, 15);
																elseif C[2] == 3 then
																	C[1] = CFrame.new(1, 30, -15);
																elseif C[2] == 4 then
																	C[1] = CFrame.new(15, 30, 0);
																elseif C[2] == 5 then
																	C[1] = CFrame.new(-15, 30, 0);
																end;
																Q[31](y[1].HumanoidRootPart.CFrame * C[1], 1.5);
																if not Q[45].ffc(Q[35].Character, "HasBuso") then
																	Q[7].Remotes.CommF_:InvokeServer("Buso");
																end;
																Q[14]();
															until not y[1].Parent or y[1].Humanoid.Health <= 0 or #Q[45].GetMobRaid() == 0;
														end;
													end;
												end;
											else
												if Q[35].Data.DevilFruit.Value == "Dark-Dark" then
													Select_Map = "Dark";
												elseif Q[35].Data.DevilFruit.Value == "Sand-Sand" then
													Select_Map = "Sand";
												elseif Q[35].Data.DevilFruit.Value == "Magma-Magma" then
													Select_Map = "Magma";
												elseif Q[35].Data.DevilFruit.Value == "Rumble-Rumble" then
													Select_Map = "Rumble";
												elseif Q[35].Data.DevilFruit.Value == "Flame-Flame" then
													Select_Map = "Flame";
												elseif Q[35].Data.DevilFruit.Value == "Ice-Ice" then
													Select_Map = "Ice";
												elseif Q[35].Data.DevilFruit.Value == "Light-Light" then
													Select_Map = "Light";
												elseif Q[35].Data.DevilFruit.Value == "String-String" then
													Select_Map = "String";
												elseif Q[35].Data.DevilFruit.Value == "Quake-Quake" then
													Select_Map = "Quake";
												elseif Q[35].Data.DevilFruit.Value == "Buddha-Buddha" then
													Select_Map = "Buddha";
												else
													Select_Map = "Ice";
												end;
												Q[7].Remotes.CommF_:InvokeServer("RaidsNpc", "Select", Select_Map);
												Q[45].wt(.2);
												if Q[35].Backpack:FindFirstChild("Special Microchip") or Q[35].Character:FindFirstChild("Special Microchip") and Q[35].Character.Humanoid.Health > 0 then
													if Q[30] == 4442272183 and Q[35].Character.Humanoid.Health > 0 then
														local C = {};
														fireclickdetector(Q[19].Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector, 1);
														C[1] = 0;
														repeat
															C[1] = C[1] + 1;
															Q[45].wt(1);
														until C[1] >= 20 or Q[35].PlayerGui.Main.Timer.Visible == true;
													elseif Q[30] == 7449423635 then
														Q[31](CFrame.new(-5034, 315, -2951), 1.5);
														if ((CFrame.new(-5034, 315, -2951)).Position - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 3 then
															if Q[35].Character.Humanoid.Health > 0 then
																local C = {};
																fireclickdetector(Q[19].Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector, 1);
																C[1] = 0;
																repeat
																	C[1] = C[1] + 1;
																	Q[45].wt(1);
																until C[1] >= 20 or Q[35].PlayerGui.Main.Timer.Visible;
															end;
														end;
													end;
												else
													if not Q[35].PlayerGui.Main.TopHUDList.RaidTimer.Visible then
														if Q[35].Data.Fragments.Value >= 5000 then
															if Q[35].Data.Beli.Value >= 2500000 then
																Q[7].Remotes.CommF_:InvokeServer("BuyDeathStep");
																Death_Step = true;
																return;
															end;
															return;
														end;
														table.sort(Q[45].GetFruits(), function(Q, C)
															local h = {};
															h[3], h[1] = Q, C;
															if h[3].Value < 100000 and h[3].Value < 100000 then
																return h[3].Value < h[1].Value;
															end;
														end);
														Q[45].wt(1);
														if #Q[45].GetFruits() > 0 and not Death_Step then
															warn();
															Q[45].wt(2);
															if not Q[35].PlayerGui.Main.TopHUDList.RaidTimer.Visible then
																if Q[35].Character.Humanoid.Health > 0 and Q[35].Data.Fragments.Value < 5000 then
																	Q[7].Remotes.CommF_:InvokeServer("LoadFruit", (Q[45].GetFruits())[1].Name);
																elseif Q[17].Value < 5000 then
																	break;
																end;
																if Q[35].Data.DevilFruit.Value == "Dark-Dark" then
																	Select_Map = "Dark";
																elseif Q[35].Data.DevilFruit.Value == "Sand-Sand" then
																	Select_Map = "Sand";
																elseif Q[35].Data.DevilFruit.Value == "Magma-Magma" then
																	Select_Map = "Magma";
																elseif Q[35].Data.DevilFruit.Value == "Rumble-Rumble" then
																	Select_Map = "Rumble";
																elseif Q[35].Data.DevilFruit.Value == "Flame-Flame" then
																	Select_Map = "Flame";
																elseif Q[35].Data.DevilFruit.Value == "Ice-Ice" then
																	Select_Map = "Ice";
																elseif Q[35].Data.DevilFruit.Value == "Light-Light" then
																	Select_Map = "Light";
																elseif Q[35].Data.DevilFruit.Value == "String-String" then
																	Select_Map = "String";
																elseif Q[35].Data.DevilFruit.Value == "Quake-Quake" then
																	Select_Map = "Quake";
																elseif Q[35].Data.DevilFruit.Value == "Buddha-Buddha" then
																	Select_Map = "Buddha";
																else
																	Select_Map = "Ice";
																end;
																Q[7].Remotes.CommF_:InvokeServer("RaidsNpc", "Select", Select_Map);
																if Q[30] == 4442272183 and Q[35].Character.Humanoid.Health > 0 then
																	local C = {};
																	fireclickdetector(Q[19].Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector, 1);
																	C[2] = 0;
																	repeat
																		C[2] = C[2] + 1;
																		Q[45].wt(1);
																	until C[2] >= 20 or Q[35].PlayerGui.Main.Timer.Visible;
																elseif Q[30] == 7449423635 then
																	Q[31](CFrame.new(-5034, 315, -2951), 1.5);
																	if ((CFrame.new(-5034, 315, -2951)).Position - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 3 then
																		if Q[35].Character.Humanoid.Health > 0 then
																			local C = {};
																			fireclickdetector(Q[19].Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector, 1);
																			C[1] = 0;
																			repeat
																				C[1] = C[1] + 1;
																				Q[45].wt(1);
																			until C[1] >= 20 or Q[35].PlayerGui.Main.Timer.Visible;
																		end;
																	end;
																end;
															end;
														else
															Quest = nil;
															Q[45].Status(Q[3]({ " Status : Auto Farm ", "Level" }));
															Q[39]();
														end;
													end;
												end;
											end;
										end;
									end;
								until Death_Step;
							end;
							return;
						end;
						if Dragon_Claw_C_M and (not Sharkman_Karate_C and Q[24].Value >= 1100) then
							if not Sharkman_Karate_C then
								repeat
									Q[45].wt();
									Q[14]();
									if Q[45].ffc(Q[35].Backpack, "Sharkman Karate") or Q[45].ffc(Q[35].Character, "Sharkman Karate") then
										Sharkman_Karate_C = true;
										return;
									end;
									if not Sharkman_Karate_C and Q[24].Value >= 1100 then
										if Q[17].Value >= 5000 then
											if Q[1].Value >= 2550000 and not Sharkman_Karate_C then
												Q[7].Remotes.CommF_:InvokeServer("BuySharkmanKarate");
												Sharkman_Karate_C = true;
												return;
											else
												Q[14]();
												Quest = nil;
												Q[45].Status(Q[3]({ " Status : Auto Farm ", "Level" }));
												Q[39]();
											end;
										elseif Q[17].Value < 5000 then
											if Q[35].PlayerGui.Main.TopHUDList.RaidTimer.Visible and (Q[17].Value < 5000 and not Sharkman_Karate_C) then
												Q[45].Status(" Status : Farm Raid");
												if #Q[45].GetMobRaid() == 0 then
													if Select_Map == "Magma" or Select_Map == "Flame" then
														for Q, C in pairs(Q[19]:GetDescendants()) do
															local h = {};
															h[1], h[3] = Q, C;
															if h[3].Name == "Lava" then
																h[3]:Destroy();
															end;
														end;
													end;
													if Q[45].GetRaid("Island 5", 2500) ~= nil then
														Q[31]((Q[45].GetRaid("Island 5", 2500)).CFrame * CFrame.new(0, 120, 0), 1.5);
													elseif Q[45].GetRaid("Island 4", 2500) ~= nil then
														Q[31]((Q[45].GetRaid("Island 4", 2500)).CFrame * CFrame.new(0, 120, 0), 1.5);
													elseif Q[45].GetRaid("Island 3", 2500) ~= nil then
														Q[31]((Q[45].GetRaid("Island 3", 2500)).CFrame * CFrame.new(0, 120, 0), 1.5);
													elseif Q[45].GetRaid("Island 2", 2500) ~= nil then
														Q[31]((Q[45].GetRaid("Island 2", 2500)).CFrame * CFrame.new(0, 120, 0), 1.5);
													elseif Q[45].GetRaid("Island 1", 2500) ~= nil then
														Q[31]((Q[45].GetRaid("Island 1", 2500)).CFrame * CFrame.new(0, 120, 0), 1.5);
													end;
												else
													for C, h in pairs(Q[40]:GetChildren()) do
														local y = {};
														y[3], y[1] = C, h;
														if y[1]:FindFirstChild("HumanoidRootPart") and (y[1]:FindFirstChild("Humanoid") and ((y[1]:FindFirstChild("Humanoid")).Health > 0 and (Q[35].Character.HumanoidRootPart.CFrame.Position - y[1].HumanoidRootPart.CFrame.Position).Magnitude <= 5000)) then
															repeat
																local C = {};
																Q[45].wt(.1);
																if Select_Map == "Magma" or Select_Map == "Flame" then
																	for Q, C in pairs(Q[19]:GetDescendants()) do
																		local h = {};
																		h[2], h[3] = Q, C;
																		if h[3].Name == "Lava" then
																			h[3]:Destroy();
																		end;
																	end;
																end;
																C[2] = math.random(1, 5);
																if C[2] == 1 then
																	C[3] = CFrame.new(0, 30, 1);
																elseif C[2] == 2 then
																	C[3] = CFrame.new(0, 30, 15);
																elseif C[2] == 3 then
																	C[3] = CFrame.new(1, 30, -15);
																elseif C[2] == 4 then
																	C[3] = CFrame.new(15, 30, 0);
																elseif C[2] == 5 then
																	C[3] = CFrame.new(-15, 30, 0);
																end;
																Q[31](y[1].HumanoidRootPart.CFrame * C[3], 1.5);
																if not Q[45].ffc(Q[35].Character, "HasBuso") then
																	Q[7].Remotes.CommF_:InvokeServer("Buso");
																end;
																Q[14]();
															until not y[1].Parent or y[1].Humanoid.Health <= 0 or #Q[45].GetMobRaid() == 0;
														end;
													end;
												end;
											else
												if Q[35].Data.DevilFruit.Value == "Dark-Dark" then
													Select_Map = "Dark";
												elseif Q[35].Data.DevilFruit.Value == "Sand-Sand" then
													Select_Map = "Sand";
												elseif Q[35].Data.DevilFruit.Value == "Magma-Magma" then
													Select_Map = "Magma";
												elseif Q[35].Data.DevilFruit.Value == "Rumble-Rumble" then
													Select_Map = "Rumble";
												elseif Q[35].Data.DevilFruit.Value == "Flame-Flame" then
													Select_Map = "Flame";
												elseif Q[35].Data.DevilFruit.Value == "Ice-Ice" then
													Select_Map = "Ice";
												elseif Q[35].Data.DevilFruit.Value == "Light-Light" then
													Select_Map = "Light";
												elseif Q[35].Data.DevilFruit.Value == "String-String" then
													Select_Map = "String";
												elseif Q[35].Data.DevilFruit.Value == "Quake-Quake" then
													Select_Map = "Quake";
												elseif Q[35].Data.DevilFruit.Value == "Buddha-Buddha" then
													Select_Map = "Buddha";
												else
													Select_Map = "Ice";
												end;
												Q[7].Remotes.CommF_:InvokeServer("RaidsNpc", "Select", Select_Map);
												Q[45].wt(.2);
												if Q[35].Backpack:FindFirstChild("Special Microchip") or Q[35].Character:FindFirstChild("Special Microchip") and Q[35].Character.Humanoid.Health > 0 then
													if Q[30] == 4442272183 and Q[35].Character.Humanoid.Health > 0 then
														local C = {};
														fireclickdetector(Q[19].Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector, 1);
														C[1] = 0;
														repeat
															C[1] = C[1] + 1;
															Q[45].wt(1);
														until C[1] >= 20 or Q[35].PlayerGui.Main.Timer.Visible;
													elseif Q[30] == 7449423635 then
														Q[31](CFrame.new(-5034, 315, -2951), 1.5);
														if ((CFrame.new(-5034, 315, -2951)).Position - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 3 then
															if Q[35].Character.Humanoid.Health > 0 then
																local C = {};
																fireclickdetector(Q[19].Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector, 1);
																C[2] = 0;
																repeat
																	C[2] = C[2] + 1;
																	Q[45].wt(1);
																until C[2] >= 20 or Q[35].PlayerGui.Main.Timer.Visible;
															end;
														end;
													end;
												else
													if not Q[35].PlayerGui.Main.TopHUDList.RaidTimer.Visible then
														if Q[1].Value >= 0 and Q[35].Data.Fragments.Value >= 5000 then
															print("nan");
															Q[7].Remotes.CommF_:InvokeServer("BuySharkmanKarate");
															Sharkman_Karate_C = true;
															return;
														end;
														table.sort(Q[45].GetFruits(), function(Q, C)
															local h = {};
															h[3], h[1] = Q, C;
															if h[3].Value < 100000 and h[3].Value < 100000 then
																return h[3].Value < h[1].Value;
															end;
														end);
														Q[45].wt(1);
														if #Q[45].GetFruits() > 0 and not Sharkman_Karate_C then
															Q[45].wt(2);
															if not Q[35].PlayerGui.Main.TopHUDList.RaidTimer.Visible then
																if Q[35].Character.Humanoid.Health > 0 and Q[35].Data.Fragments.Value < 5000 then
																	Q[7].Remotes.CommF_:InvokeServer("LoadFruit", (Q[45].GetFruits())[1].Name);
																elseif Q[17].Value < 5000 then
																	break;
																end;
																if Q[35].Data.DevilFruit.Value == "Dark-Dark" then
																	Select_Map = "Dark";
																elseif Q[35].Data.DevilFruit.Value == "Sand-Sand" then
																	Select_Map = "Sand";
																elseif Q[35].Data.DevilFruit.Value == "Magma-Magma" then
																	Select_Map = "Magma";
																elseif Q[35].Data.DevilFruit.Value == "Rumble-Rumble" then
																	Select_Map = "Rumble";
																elseif Q[35].Data.DevilFruit.Value == "Flame-Flame" then
																	Select_Map = "Flame";
																elseif Q[35].Data.DevilFruit.Value == "Ice-Ice" then
																	Select_Map = "Ice";
																elseif Q[35].Data.DevilFruit.Value == "Light-Light" then
																	Select_Map = "Light";
																elseif Q[35].Data.DevilFruit.Value == "String-String" then
																	Select_Map = "String";
																elseif Q[35].Data.DevilFruit.Value == "Quake-Quake" then
																	Select_Map = "Quake";
																elseif Q[35].Data.DevilFruit.Value == "Buddha-Buddha" then
																	Select_Map = "Buddha";
																else
																	Select_Map = "Ice";
																end;
																Q[7].Remotes.CommF_:InvokeServer("RaidsNpc", "Select", Select_Map);
																if Q[30] == 4442272183 and Q[35].Character.Humanoid.Health > 0 then
																	local C = {};
																	fireclickdetector(Q[19].Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector, 1);
																	C[1] = 0;
																	repeat
																		C[1] = C[1] + 1;
																		Q[45].wt(1);
																	until C[1] >= 20 or Q[35].PlayerGui.Main.Timer.Visible;
																elseif Q[30] == 7449423635 then
																	Q[31](CFrame.new(-5034, 315, -2951), 1.5);
																	if ((CFrame.new(-5034, 315, -2951)).Position - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 3 then
																		if Q[35].Character.Humanoid.Health > 0 then
																			local C = {};
																			fireclickdetector(Q[19].Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector, 1);
																			C[2] = 0;
																			repeat
																				C[2] = C[2] + 1;
																				Q[45].wt(1);
																			until C[2] >= 20 or Q[35].PlayerGui.Main.Timer.Visible;
																		end;
																	end;
																end;
															end;
														else
															Quest = nil;
															Q[45].Status(Q[3]({ " Status : Auto Farm ", "Level" }));
															Q[39]();
														end;
													end;
												end;
											end;
										end;
									end;
								until Sharkman_Karate_C;
							end;
							return;
						end;
						if Sharkman_Karate_C_M and (not Electric_Claw_C and Q[24].Value >= 1100) then
							if not Electric_Claw_C then
								repeat
									Q[45].wt();
									Q[14]();
									if Q[45].ffc(Q[35].Backpack, "Electric Claw") or Q[45].ffc(Q[35].Character, "Electric Claw") then
										Electric_Claw_C = true;
										return;
									end;
									if not Electric_Claw_C and Q[24].Value >= 1100 then
										if Q[17].Value >= 5000 then
											if Q[1].Value >= 3000000 then
												pcall(function()
													Q[7].Remotes.CommF_:InvokeServer("BuyElectricClaw");
													if Q[7].Remotes.CommF_:InvokeServer("BuyElectricClaw") == 1 or Q[7].Remotes.CommF_:InvokeServer("BuyElectricClaw") == 2 then
														Electric_Claw_C = true;
													end;
												end);
												if not Electric_Claw_C then
													Q[7].Remotes.CommF_:InvokeServer("BuyElectricClaw");
													if Q[7].Remotes.CommF_:InvokeServer("BuyElectricClaw") == 1 or Q[7].Remotes.CommF_:InvokeServer("BuyElectricClaw") == 2 then
														Electric_Claw_C = true;
													end;
												end;
												if Three_World and not Electric_Claw_C then
													Quest = "Quest Electric Claw";
												end;
												return;
											else
												Q[14]();
												Quest = nil;
												Q[45].Status(Q[3]({ " Status : Auto Farm ", "Level" }));
												Q[39]();
											end;
										elseif Q[17].Value < 5000 then
											if Q[35].PlayerGui.Main.TopHUDList.RaidTimer.Visible and (Q[17].Value < 5000 and not Electric_Claw_C) then
												Q[45].Status(" Status : Farm Raid");
												if #Q[45].GetMobRaid() == 0 then
													if Select_Map == "Magma" or Select_Map == "Flame" then
														for Q, C in pairs(Q[19]:GetDescendants()) do
															local h = {};
															h[2], h[1] = Q, C;
															if h[1].Name == "Lava" then
																h[1]:Destroy();
															end;
														end;
													end;
													if Q[45].GetRaid("Island 5", 2500) ~= nil then
														Q[31]((Q[45].GetRaid("Island 5", 2500)).CFrame * CFrame.new(0, 120, 0), 1.5);
													elseif Q[45].GetRaid("Island 4", 2500) ~= nil then
														Q[31]((Q[45].GetRaid("Island 4", 2500)).CFrame * CFrame.new(0, 120, 0), 1.5);
													elseif Q[45].GetRaid("Island 3", 2500) ~= nil then
														Q[31]((Q[45].GetRaid("Island 3", 2500)).CFrame * CFrame.new(0, 120, 0), 1.5);
													elseif Q[45].GetRaid("Island 2", 2500) ~= nil then
														Q[31]((Q[45].GetRaid("Island 2", 2500)).CFrame * CFrame.new(0, 120, 0), 1.5);
													elseif Q[45].GetRaid("Island 1", 2500) ~= nil then
														Q[31]((Q[45].GetRaid("Island 1", 2500)).CFrame * CFrame.new(0, 120, 0), 1.5);
													end;
												else
													for C, h in pairs(Q[40]:GetChildren()) do
														local y = {};
														y[1], y[2] = C, h;
														if y[2]:FindFirstChild("HumanoidRootPart") and (y[2]:FindFirstChild("Humanoid") and ((y[2]:FindFirstChild("Humanoid")).Health > 0 and (Q[35].Character.HumanoidRootPart.CFrame.Position - y[2].HumanoidRootPart.CFrame.Position).Magnitude <= 5000)) then
															repeat
																local C = {};
																Q[45].wt(.1);
																if Select_Map == "Magma" or Select_Map == "Flame" then
																	for Q, C in pairs(Q[19]:GetDescendants()) do
																		local h = {};
																		h[3], h[2] = Q, C;
																		if h[2].Name == "Lava" then
																			h[2]:Destroy();
																		end;
																	end;
																end;
																C[2] = math.random(1, 5);
																if C[2] == 1 then
																	C[1] = CFrame.new(0, 30, 1);
																elseif C[2] == 2 then
																	C[1] = CFrame.new(0, 30, 15);
																elseif C[2] == 3 then
																	C[1] = CFrame.new(1, 30, -15);
																elseif C[2] == 4 then
																	C[1] = CFrame.new(15, 30, 0);
																elseif C[2] == 5 then
																	C[1] = CFrame.new(-15, 30, 0);
																end;
																Q[31](y[2].HumanoidRootPart.CFrame * C[1], 1.5);
																if not Q[45].ffc(Q[35].Character, "HasBuso") then
																	Q[7].Remotes.CommF_:InvokeServer("Buso");
																end;
																Q[14]();
															until not y[2].Parent or y[2].Humanoid.Health <= 0 or #Q[45].GetMobRaid() == 0;
														end;
													end;
												end;
											else
												if Q[35].Data.DevilFruit.Value == "Dark-Dark" then
													Select_Map = "Dark";
												elseif Q[35].Data.DevilFruit.Value == "Sand-Sand" then
													Select_Map = "Sand";
												elseif Q[35].Data.DevilFruit.Value == "Magma-Magma" then
													Select_Map = "Magma";
												elseif Q[35].Data.DevilFruit.Value == "Rumble-Rumble" then
													Select_Map = "Rumble";
												elseif Q[35].Data.DevilFruit.Value == "Flame-Flame" then
													Select_Map = "Flame";
												elseif Q[35].Data.DevilFruit.Value == "Ice-Ice" then
													Select_Map = "Ice";
												elseif Q[35].Data.DevilFruit.Value == "Light-Light" then
													Select_Map = "Light";
												elseif Q[35].Data.DevilFruit.Value == "String-String" then
													Select_Map = "String";
												elseif Q[35].Data.DevilFruit.Value == "Quake-Quake" then
													Select_Map = "Quake";
												elseif Q[35].Data.DevilFruit.Value == "Buddha-Buddha" then
													Select_Map = "Buddha";
												else
													Select_Map = "Ice";
												end;
												Q[7].Remotes.CommF_:InvokeServer("RaidsNpc", "Select", Select_Map);
												Q[45].wt(.2);
												if Q[35].Backpack:FindFirstChild("Special Microchip") or Q[35].Character:FindFirstChild("Special Microchip") and Q[35].Character.Humanoid.Health > 0 then
													if Q[30] == 4442272183 and Q[35].Character.Humanoid.Health > 0 then
														local C = {};
														fireclickdetector(Q[19].Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector, 1);
														C[2] = 0;
														repeat
															C[2] = C[2] + 1;
															Q[45].wt(1);
														until C[2] >= 20 or Q[35].PlayerGui.Main.Timer.Visible;
													elseif Q[30] == 7449423635 then
														Q[31](CFrame.new(-5034, 315, -2951), 1.5);
														if ((CFrame.new(-5034, 315, -2951)).Position - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 3 then
															if Q[35].Character.Humanoid.Health > 0 then
																local C = {};
																fireclickdetector(Q[19].Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector, 1);
																C[2] = 0;
																repeat
																	C[2] = C[2] + 1;
																	Q[45].wt(1);
																until C[2] >= 20 or Q[35].PlayerGui.Main.Timer.Visible;
															end;
														end;
													end;
												else
													if not Q[35].PlayerGui.Main.TopHUDList.RaidTimer.Visible then
														if Q[35].Data.Fragments.Value >= 5000 then
															if Q[35].Data.Beli.Value >= 3000000 then
																Q[7].Remotes.CommF_:InvokeServer("BuyElectricClaw");
																if Q[7].Remotes.CommF_:InvokeServer("BuyElectricClaw") == 1 or Q[7].Remotes.CommF_:InvokeServer("BuyElectricClaw") == 2 then
																	Electric_Claw_C = true;
																end;
																return;
															end;
															return;
														end;
														table.sort(Q[45].GetFruits(), function(Q, C)
															local h = {};
															h[2], h[3] = Q, C;
															if h[2].Value < 100000 and h[2].Value < 100000 then
																return h[2].Value < h[3].Value;
															end;
														end);
														Q[45].wt(1);
														if #Q[45].GetFruits() > 0 and not Electric_Claw_C then
															warn();
															Q[45].wt(2);
															if not Q[35].PlayerGui.Main.TopHUDList.RaidTimer.Visible then
																if Q[35].Character.Humanoid.Health > 0 and Q[35].Data.Fragments.Value < 5000 then
																	Q[7].Remotes.CommF_:InvokeServer("LoadFruit", (Q[45].GetFruits())[1].Name);
																elseif Q[17].Value < 5000 then
																	break;
																end;
																if Q[35].Data.DevilFruit.Value == "Dark-Dark" then
																	Select_Map = "Dark";
																elseif Q[35].Data.DevilFruit.Value == "Sand-Sand" then
																	Select_Map = "Sand";
																elseif Q[35].Data.DevilFruit.Value == "Magma-Magma" then
																	Select_Map = "Magma";
																elseif Q[35].Data.DevilFruit.Value == "Rumble-Rumble" then
																	Select_Map = "Rumble";
																elseif Q[35].Data.DevilFruit.Value == "Flame-Flame" then
																	Select_Map = "Flame";
																elseif Q[35].Data.DevilFruit.Value == "Ice-Ice" then
																	Select_Map = "Ice";
																elseif Q[35].Data.DevilFruit.Value == "Light-Light" then
																	Select_Map = "Light";
																elseif Q[35].Data.DevilFruit.Value == "String-String" then
																	Select_Map = "String";
																elseif Q[35].Data.DevilFruit.Value == "Quake-Quake" then
																	Select_Map = "Quake";
																elseif Q[35].Data.DevilFruit.Value == "Buddha-Buddha" then
																	Select_Map = "Buddha";
																else
																	Select_Map = "Ice";
																end;
																Q[7].Remotes.CommF_:InvokeServer("RaidsNpc", "Select", Select_Map);
																if Q[30] == 4442272183 and Q[35].Character.Humanoid.Health > 0 then
																	local C = {};
																	fireclickdetector(Q[19].Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector, 1);
																	C[2] = 0;
																	repeat
																		C[2] = C[2] + 1;
																		Q[45].wt(1);
																	until C[2] >= 20 or Q[35].PlayerGui.Main.Timer.Visible;
																elseif Q[30] == 7449423635 then
																	Q[31](CFrame.new(-5034, 315, -2951), 1.5);
																	if ((CFrame.new(-5034, 315, -2951)).Position - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 3 then
																		if Q[35].Character.Humanoid.Health > 0 then
																			local C = {};
																			fireclickdetector(Q[19].Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector, 1);
																			C[2] = 0;
																			repeat
																				C[2] = C[2] + 1;
																				Q[45].wt(1);
																			until C[2] >= 20 or Q[35].PlayerGui.Main.Timer.Visible;
																		end;
																	end;
																end;
															end;
														else
															Quest = nil;
															Q[45].Status(Q[3]({ " Status : Auto Farm ", "Level" }));
															Q[39]();
														end;
													end;
												end;
											end;
										end;
									end;
								until Electric_Claw_C;
							end;
							return;
						end;
						if Electric_Claw_C_M and (not Dragon_Talon_C and Q[24].Value >= 1100) then
							if not Dragon_Talon_C then
								repeat
									Q[45].wt();
									Q[14]();
									if Q[45].ffc(Q[35].Backpack, "Dragon Talon") or Q[45].ffc(Q[35].Character, "Dragon Talon") then
										Dragon_Talon_C = true;
										return;
									end;
									if not Dragon_Talon_C and Q[24].Value >= 1100 then
										if Q[17].Value >= 5000 then
											if Q[1].Value >= 3000000 then
												Quest = nil;
												Q[45].Status(Q[3]({ " Status : Auto Farm ", "Bone" }));
												Q[45].FarmBone(true);
											else
												Q[14]();
												Quest = nil;
												Q[45].Status(Q[3]({ " Status : Auto Farm ", "Level" }));
												Q[39]();
											end;
										elseif Q[17].Value < 5000 then
											if Q[35].PlayerGui.Main.TopHUDList.RaidTimer.Visible and (Q[17].Value < 5000 and not Dragon_Talon_C) then
												Q[45].Status(" Status : Farm Raid");
												if #Q[45].GetMobRaid() == 0 then
													if Select_Map == "Magma" or Select_Map == "Flame" then
														for Q, C in pairs(Q[19]:GetDescendants()) do
															local h = {};
															h[1], h[3] = Q, C;
															if h[3].Name == "Lava" then
																h[3]:Destroy();
															end;
														end;
													end;
													if Q[45].GetRaid("Island 5", 2500) ~= nil then
														Q[31]((Q[45].GetRaid("Island 5", 2500)).CFrame * CFrame.new(0, 120, 0), 1.5);
													elseif Q[45].GetRaid("Island 4", 2500) ~= nil then
														Q[31]((Q[45].GetRaid("Island 4", 2500)).CFrame * CFrame.new(0, 120, 0), 1.5);
													elseif Q[45].GetRaid("Island 3", 2500) ~= nil then
														Q[31]((Q[45].GetRaid("Island 3", 2500)).CFrame * CFrame.new(0, 120, 0), 1.5);
													elseif Q[45].GetRaid("Island 2", 2500) ~= nil then
														Q[31]((Q[45].GetRaid("Island 2", 2500)).CFrame * CFrame.new(0, 120, 0), 1.5);
													elseif Q[45].GetRaid("Island 1", 2500) ~= nil then
														Q[31]((Q[45].GetRaid("Island 1", 2500)).CFrame * CFrame.new(0, 120, 0), 1.5);
													end;
												else
													for C, h in pairs(Q[40]:GetChildren()) do
														local y = {};
														y[2], y[3] = C, h;
														if y[3]:FindFirstChild("HumanoidRootPart") and (y[3]:FindFirstChild("Humanoid") and ((y[3]:FindFirstChild("Humanoid")).Health > 0 and (Q[35].Character.HumanoidRootPart.CFrame.Position - y[3].HumanoidRootPart.CFrame.Position).Magnitude <= 5000)) then
															repeat
																local C = {};
																Q[45].wt(.1);
																if Select_Map == "Magma" or Select_Map == "Flame" then
																	for Q, C in pairs(Q[19]:GetDescendants()) do
																		local h = {};
																		h[3], h[1] = Q, C;
																		if h[1].Name == "Lava" then
																			h[1]:Destroy();
																		end;
																	end;
																end;
																C[1] = math.random(1, 5);
																if C[1] == 1 then
																	C[2] = CFrame.new(0, 30, 1);
																elseif C[1] == 2 then
																	C[2] = CFrame.new(0, 30, 15);
																elseif C[1] == 3 then
																	C[2] = CFrame.new(1, 30, -15);
																elseif C[1] == 4 then
																	C[2] = CFrame.new(15, 30, 0);
																elseif C[1] == 5 then
																	C[2] = CFrame.new(-15, 30, 0);
																end;
																Q[31](y[3].HumanoidRootPart.CFrame * C[2], 1.5);
																if not Q[45].ffc(Q[35].Character, "HasBuso") then
																	Q[7].Remotes.CommF_:InvokeServer("Buso");
																end;
																Q[14]();
															until not y[3].Parent or y[3].Humanoid.Health <= 0 or #Q[45].GetMobRaid() == 0;
														end;
													end;
												end;
											else
												if Q[35].Data.DevilFruit.Value == "Dark-Dark" then
													Select_Map = "Dark";
												elseif Q[35].Data.DevilFruit.Value == "Sand-Sand" then
													Select_Map = "Sand";
												elseif Q[35].Data.DevilFruit.Value == "Magma-Magma" then
													Select_Map = "Magma";
												elseif Q[35].Data.DevilFruit.Value == "Rumble-Rumble" then
													Select_Map = "Rumble";
												elseif Q[35].Data.DevilFruit.Value == "Flame-Flame" then
													Select_Map = "Flame";
												elseif Q[35].Data.DevilFruit.Value == "Ice-Ice" then
													Select_Map = "Ice";
												elseif Q[35].Data.DevilFruit.Value == "Light-Light" then
													Select_Map = "Light";
												elseif Q[35].Data.DevilFruit.Value == "String-String" then
													Select_Map = "String";
												elseif Q[35].Data.DevilFruit.Value == "Quake-Quake" then
													Select_Map = "Quake";
												elseif Q[35].Data.DevilFruit.Value == "Buddha-Buddha" then
													Select_Map = "Buddha";
												else
													Select_Map = "Ice";
												end;
												Q[7].Remotes.CommF_:InvokeServer("RaidsNpc", "Select", Select_Map);
												Q[45].wt(.2);
												if Q[35].Backpack:FindFirstChild("Special Microchip") or Q[35].Character:FindFirstChild("Special Microchip") and Q[35].Character.Humanoid.Health > 0 then
													if Q[30] == 4442272183 and Q[35].Character.Humanoid.Health > 0 then
														local C = {};
														fireclickdetector(Q[19].Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector, 1);
														C[1] = 0;
														repeat
															C[1] = C[1] + 1;
															Q[45].wt(1);
														until C[1] >= 20 or Q[35].PlayerGui.Main.Timer.Visible;
													elseif Q[30] == 7449423635 then
														Q[31](CFrame.new(-5034, 315, -2951), 1.5);
														if ((CFrame.new(-5034, 315, -2951)).Position - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 3 then
															if Q[35].Character.Humanoid.Health > 0 then
																local C = {};
																fireclickdetector(Q[19].Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector, 1);
																C[2] = 0;
																repeat
																	C[2] = C[2] + 1;
																	Q[45].wt(1);
																until C[2] >= 20 or Q[35].PlayerGui.Main.Timer.Visible;
															end;
														end;
													end;
												else
													if not Q[35].PlayerGui.Main.TopHUDList.RaidTimer.Visible then
														if Q[35].Data.Fragments.Value >= 5000 then
															if Q[35].Data.Beli.Value >= 3000000 then
																Q[7].Remotes.CommF_:InvokeServer("BuyDragonTalon");
																Dragon_Talon_C = true;
																return;
															end;
															return;
														end;
														table.sort(Q[45].GetFruits(), function(Q, C)
															local h = {};
															h[1], h[2] = Q, C;
															if h[1].Value < 100000 and h[1].Value < 100000 then
																return h[1].Value < h[2].Value;
															end;
														end);
														Q[45].wt(1);
														if #Q[45].GetFruits() > 0 and not Dragon_Talon_C then
															warn();
															Q[45].wt(2);
															if not Q[35].PlayerGui.Main.TopHUDList.RaidTimer.Visible then
																if Q[35].Character.Humanoid.Health > 0 and Q[35].Data.Fragments.Value < 5000 then
																	Q[7].Remotes.CommF_:InvokeServer("LoadFruit", (Q[45].GetFruits())[1].Name);
																elseif Q[17].Value < 5000 then
																	break;
																end;
																if Q[35].Data.DevilFruit.Value == "Dark-Dark" then
																	Select_Map = "Dark";
																elseif Q[35].Data.DevilFruit.Value == "Sand-Sand" then
																	Select_Map = "Sand";
																elseif Q[35].Data.DevilFruit.Value == "Magma-Magma" then
																	Select_Map = "Magma";
																elseif Q[35].Data.DevilFruit.Value == "Rumble-Rumble" then
																	Select_Map = "Rumble";
																elseif Q[35].Data.DevilFruit.Value == "Flame-Flame" then
																	Select_Map = "Flame";
																elseif Q[35].Data.DevilFruit.Value == "Ice-Ice" then
																	Select_Map = "Ice";
																elseif Q[35].Data.DevilFruit.Value == "Light-Light" then
																	Select_Map = "Light";
																elseif Q[35].Data.DevilFruit.Value == "String-String" then
																	Select_Map = "String";
																elseif Q[35].Data.DevilFruit.Value == "Quake-Quake" then
																	Select_Map = "Quake";
																elseif Q[35].Data.DevilFruit.Value == "Buddha-Buddha" then
																	Select_Map = "Buddha";
																else
																	Select_Map = "Ice";
																end;
																Q[7].Remotes.CommF_:InvokeServer("RaidsNpc", "Select", Select_Map);
																if Q[30] == 4442272183 and Q[35].Character.Humanoid.Health > 0 then
																	local C = {};
																	fireclickdetector(Q[19].Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector, 1);
																	C[2] = 0;
																	repeat
																		C[2] = C[2] + 1;
																		Q[45].wt(1);
																	until C[2] >= 20 or Q[35].PlayerGui.Main.Timer.Visible;
																elseif Q[30] == 7449423635 then
																	Q[31](CFrame.new(-5034, 315, -2951), 1.5);
																	if ((CFrame.new(-5034, 315, -2951)).Position - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 3 then
																		if Q[35].Character.Humanoid.Health > 0 then
																			local C = {};
																			fireclickdetector(Q[19].Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector, 1);
																			C[1] = 0;
																			repeat
																				C[1] = C[1] + 1;
																				Q[45].wt(1);
																			until C[1] >= 20 or Q[35].PlayerGui.Main.Timer.Visible;
																		end;
																	end;
																end;
															end;
														else
															Quest = nil;
															Q[45].Status(Q[3]({ " Status : Auto Farm ", "Level" }));
															Q[39]();
														end;
													end;
												end;
											end;
										end;
									end;
								until Dragon_Talon_C;
							end;
							return;
						end;
						if Dragon_Talon_C_M and (not God_Human_C and Q[24].Value >= 1100) then
							if not God_Human_C then
								repeat
									Q[45].wt();
									Q[14]();
									if Q[45].ffc(Q[35].Backpack, "Godhuman") or Q[45].ffc(Q[35].Character, "Godhuman") then
										God_Human_C = true;
										return;
									end;
									if not God_Human_C and Q[24].Value >= 1100 then
										if Q[17].Value >= 5000 then
											if Q[1].Value >= 5000000 then
												Quest = "Godhuman";
											else
												Q[14]();
												Quest = nil;
												Q[45].Status(Q[3]({ " Status : Auto Farm ", "Level" }));
												Q[39]();
											end;
										elseif Q[17].Value < 5000 then
											if Q[35].PlayerGui.Main.TopHUDList.RaidTimer.Visible and (Q[17].Value < 5000 and not God_Human_C) then
												Q[45].Status(" Status : Farm Raid");
												if #Q[45].GetMobRaid() == 0 then
													if Select_Map == "Magma" or Select_Map == "Flame" then
														for Q, C in pairs(Q[19]:GetDescendants()) do
															local h = {};
															h[3], h[1] = Q, C;
															if h[1].Name == "Lava" then
																h[1]:Destroy();
															end;
														end;
													end;
													if Q[45].GetRaid("Island 5", 2500) ~= nil then
														Q[31]((Q[45].GetRaid("Island 5", 2500)).CFrame * CFrame.new(0, 120, 0), 1.5);
													elseif Q[45].GetRaid("Island 4", 2500) ~= nil then
														Q[31]((Q[45].GetRaid("Island 4", 2500)).CFrame * CFrame.new(0, 120, 0), 1.5);
													elseif Q[45].GetRaid("Island 3", 2500) ~= nil then
														Q[31]((Q[45].GetRaid("Island 3", 2500)).CFrame * CFrame.new(0, 120, 0), 1.5);
													elseif Q[45].GetRaid("Island 2", 2500) ~= nil then
														Q[31]((Q[45].GetRaid("Island 2", 2500)).CFrame * CFrame.new(0, 120, 0), 1.5);
													elseif Q[45].GetRaid("Island 1", 2500) ~= nil then
														Q[31]((Q[45].GetRaid("Island 1", 2500)).CFrame * CFrame.new(0, 120, 0), 1.5);
													end;
												else
													for C, h in pairs(Q[40]:GetChildren()) do
														local y = {};
														y[2], y[1] = C, h;
														if y[1]:FindFirstChild("HumanoidRootPart") and (y[1]:FindFirstChild("Humanoid") and ((y[1]:FindFirstChild("Humanoid")).Health > 0 and (Q[35].Character.HumanoidRootPart.CFrame.Position - y[1].HumanoidRootPart.CFrame.Position).Magnitude <= 5000)) then
															repeat
																local C = {};
																Q[45].wt(.1);
																if Select_Map == "Magma" or Select_Map == "Flame" then
																	for Q, C in pairs(Q[19]:GetDescendants()) do
																		local h = {};
																		h[2], h[1] = Q, C;
																		if h[1].Name == "Lava" then
																			h[1]:Destroy();
																		end;
																	end;
																end;
																C[2] = math.random(1, 5);
																if C[2] == 1 then
																	C[1] = CFrame.new(0, 30, 1);
																elseif C[2] == 2 then
																	C[1] = CFrame.new(0, 30, 15);
																elseif C[2] == 3 then
																	C[1] = CFrame.new(1, 30, -15);
																elseif C[2] == 4 then
																	C[1] = CFrame.new(15, 30, 0);
																elseif C[2] == 5 then
																	C[1] = CFrame.new(-15, 30, 0);
																end;
																Q[31](y[1].HumanoidRootPart.CFrame * C[1], 1.5);
																if not Q[45].ffc(Q[35].Character, "HasBuso") then
																	Q[7].Remotes.CommF_:InvokeServer("Buso");
																end;
																Q[14]();
															until not y[1].Parent or y[1].Humanoid.Health <= 0 or #Q[45].GetMobRaid() == 0;
														end;
													end;
												end;
											else
												if Q[35].Data.DevilFruit.Value == "Dark-Dark" then
													Select_Map = "Dark";
												elseif Q[35].Data.DevilFruit.Value == "Sand-Sand" then
													Select_Map = "Sand";
												elseif Q[35].Data.DevilFruit.Value == "Magma-Magma" then
													Select_Map = "Magma";
												elseif Q[35].Data.DevilFruit.Value == "Rumble-Rumble" then
													Select_Map = "Rumble";
												elseif Q[35].Data.DevilFruit.Value == "Flame-Flame" then
													Select_Map = "Flame";
												elseif Q[35].Data.DevilFruit.Value == "Ice-Ice" then
													Select_Map = "Ice";
												elseif Q[35].Data.DevilFruit.Value == "Light-Light" then
													Select_Map = "Light";
												elseif Q[35].Data.DevilFruit.Value == "String-String" then
													Select_Map = "String";
												elseif Q[35].Data.DevilFruit.Value == "Quake-Quake" then
													Select_Map = "Quake";
												elseif Q[35].Data.DevilFruit.Value == "Buddha-Buddha" then
													Select_Map = "Buddha";
												else
													Select_Map = "Ice";
												end;
												Q[7].Remotes.CommF_:InvokeServer("RaidsNpc", "Select", Select_Map);
												Q[45].wt(.2);
												if Q[35].Backpack:FindFirstChild("Special Microchip") or Q[35].Character:FindFirstChild("Special Microchip") and Q[35].Character.Humanoid.Health > 0 then
													if Q[30] == 4442272183 and Q[35].Character.Humanoid.Health > 0 then
														local C = {};
														fireclickdetector(Q[19].Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector, 1);
														C[2] = 0;
														repeat
															C[2] = C[2] + 1;
															Q[45].wt(1);
														until C[2] >= 20 or Q[35].PlayerGui.Main.Timer.Visible;
													elseif Q[30] == 7449423635 then
														Q[31](CFrame.new(-5034, 315, -2951), 1.5);
														if ((CFrame.new(-5034, 315, -2951)).Position - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 3 then
															if Q[35].Character.Humanoid.Health > 0 then
																local C = {};
																fireclickdetector(Q[19].Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector, 1);
																C[1] = 0;
																repeat
																	C[1] = C[1] + 1;
																	Q[45].wt(1);
																until C[1] >= 20 or Q[35].PlayerGui.Main.Timer.Visible;
															end;
														end;
													end;
												else
													if not Q[35].PlayerGui.Main.TopHUDList.RaidTimer.Visible then
														if Q[35].Data.Fragments.Value >= 5000 then
															if Q[35].Data.Beli.Value >= 3000000 then
																Q[7].Remotes.CommF_:InvokeServer("BuyGodHuman");
																God_Human_C = true;
																return;
															end;
															return;
														end;
														table.sort(Q[45].GetFruits(), function(Q, C)
															local h = {};
															h[2], h[1] = Q, C;
															if h[2].Value < 100000 and h[2].Value < 100000 then
																return h[2].Value < h[1].Value;
															end;
														end);
														Q[45].wt(1);
														if #Q[45].GetFruits() > 0 and not God_Human_C then
															warn();
															Q[45].wt(2);
															if not Q[35].PlayerGui.Main.TopHUDList.RaidTimer.Visible then
																if Q[35].Character.Humanoid.Health > 0 and Q[35].Data.Fragments.Value < 5000 then
																	Q[7].Remotes.CommF_:InvokeServer("LoadFruit", (Q[45].GetFruits())[1].Name);
																elseif Q[17].Value < 5000 then
																	break;
																end;
																if Q[35].Data.DevilFruit.Value == "Dark-Dark" then
																	Select_Map = "Dark";
																elseif Q[35].Data.DevilFruit.Value == "Sand-Sand" then
																	Select_Map = "Sand";
																elseif Q[35].Data.DevilFruit.Value == "Magma-Magma" then
																	Select_Map = "Magma";
																elseif Q[35].Data.DevilFruit.Value == "Rumble-Rumble" then
																	Select_Map = "Rumble";
																elseif Q[35].Data.DevilFruit.Value == "Flame-Flame" then
																	Select_Map = "Flame";
																elseif Q[35].Data.DevilFruit.Value == "Ice-Ice" then
																	Select_Map = "Ice";
																elseif Q[35].Data.DevilFruit.Value == "Light-Light" then
																	Select_Map = "Light";
																elseif Q[35].Data.DevilFruit.Value == "String-String" then
																	Select_Map = "String";
																elseif Q[35].Data.DevilFruit.Value == "Quake-Quake" then
																	Select_Map = "Quake";
																elseif Q[35].Data.DevilFruit.Value == "Buddha-Buddha" then
																	Select_Map = "Buddha";
																else
																	Select_Map = "Ice";
																end;
																Q[7].Remotes.CommF_:InvokeServer("RaidsNpc", "Select", Select_Map);
																if Q[30] == 4442272183 and Q[35].Character.Humanoid.Health > 0 then
																	local C = {};
																	fireclickdetector(Q[19].Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector, 1);
																	C[2] = 0;
																	repeat
																		C[2] = C[2] + 1;
																		Q[45].wt(1);
																	until C[2] >= 20 or Q[35].PlayerGui.Main.Timer.Visible;
																elseif Q[30] == 7449423635 then
																	Q[31](CFrame.new(-5034, 315, -2951), 1.5);
																	if ((CFrame.new(-5034, 315, -2951)).Position - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 3 then
																		if Q[35].Character.Humanoid.Health > 0 then
																			local C = {};
																			fireclickdetector(Q[19].Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector, 1);
																			C[1] = 0;
																			repeat
																				C[1] = C[1] + 1;
																				Q[45].wt(1);
																			until C[1] >= 20 or Q[35].PlayerGui.Main.Timer.Visible;
																		end;
																	end;
																end;
															end;
														else
															Quest = nil;
															Q[45].Status(Q[3]({ " Status : Auto Farm ", "Level" }));
															Q[39]();
														end;
													end;
												end;
											end;
										end;
									end;
								until God_Human_C;
							end;
							return;
						end;
						if Q[24].Value >= 700 and (not New_World and not Three_World) then
							Quest = "World 2";
							return;
						end;
						if New_World and (CheckFindWaterKey and (Q[24].Value >= 1500 and (Q[7].Remotes.CommF_:InvokeServer("TalkTrevor", "1") == 0 and (not Q[45].IsHall() and Q[45].IsHeavenly())))) then
							Quest = "TravelZou";
							return;
						end;
						Quest = nil;
						Q[45].Status(Q[3]({ " Status : Auto Farm ", "Level" }));
						Q[39]();
					end;
				end;
			end;
		end, warn);
	end;
end);
task.spawn(function()
	while Q[45].wt() do
		xpcall(function()
			if Quest ~= nil then
				Q[45].Status(" Status : " .. Quest);
			end;
			if Quest == "Saber" then
				local h = {};
				if not old_World then
					Q[7].Remotes.CommF_:InvokeServer("TravelMain");
				end;
				h[2] = Q[7].Remotes.CommF_:InvokeServer("ProQuestProgress");
				if h[2].UsedTorch == false then
					for C, h in pairs((game:GetService("Workspace")).Map.Jungle.QuestPlates:GetChildren()) do
						local y = {};
						y[3], y[2] = C, h;
						if table.find({
							"Plate1",
							"Plate2",
							"Plate3",
							"Plate4",
							"Plate5",
						}, y[2].Name) then
							y[2].Button.CFrame = Q[35].Character.HumanoidRootPart.CFrame;
						end;
					end;
					Q[7].Remotes.CommF_:InvokeServer("ProQuestProgress", "GetTorch");
					Q[45].Equip("Torch");
					Q[7].Remotes.CommF_:InvokeServer("ProQuestProgress", "DestroyTorch");
				elseif h[2].UsedCup == false then
					Q[7].Remotes.CommF_:InvokeServer("ProQuestProgress", "GetCup");
					Q[45].Equip("Cup");
					Q[7].Remotes.CommF_:InvokeServer("ProQuestProgress", "FillCup", (game:GetService("Players")).LocalPlayer.Character.Cup);
					Q[7].Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan");
				elseif h[2].KilledMob == false then
					local C = {};
					Q[7].Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon");
					C[2] = Q[45].ffc(Q[40], "Mob Leader");
					if C[2] then
						for C, h in pairs(Q[40]:GetChildren()) do
							local y = {};
							y[2], y[3] = C, h;
							if y[3].Name == "Mob Leader" then
								repeat
									Q[45].wt();
									Q[31](y[3].HumanoidRootPart.CFrame * CFrame.new(0, 20, 0), 1.5);
									if not Q[45].ffc(Q[35].Character, "HasBuso") then
										Q[7].Remotes.CommF_:InvokeServer("Buso");
									end;
									Q[14]();
								until not y[3].Parent or y[3].Humanoid.Health <= 0 or Q[45].gi("Saber");
								Q[7].Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon");
							end;
						end;
					else
						Q[31](CFrame.new(-2848.59399, 7.4272871, 5342.44043), 1.5);
					end;
				elseif h[2].UsedRelic == false then
					Q[7].Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon");
					Q[45].Equip("Relic");
					Q[31](CFrame.new(-1406.60925, 29.8520069, 4.5805192), 1.5);
				else
					if Q[45].ffc(Q[40], "Saber Expert") then
						for C, h in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							local y = {};
							y[1], y[3] = C, h;
							if y[3].Name == "Saber Expert" then
								repeat
									Q[45].wt();
									Q[31](y[3].HumanoidRootPart.CFrame * CFrame.new(0, 25, 0), 1.5);
									if not Q[45].ffc(Q[35].Character, "HasBuso") then
										Q[7].Remotes.CommF_:InvokeServer("Buso");
									end;
									Q[14]();
								until not y[3].Parent or y[3].Humanoid.Health <= 0 or Q[45].gi("Saber");
							end;
						end;
					else
						Q[31](CFrame.new(-1458.89502, 29.8870335, -50.633564, .858821094, 1.13848939e-008, .512275636, -4.85649254e-009, 1, -1.40823326e-008, -0.512275636, 9.6063415e-009, .858821094), 1.5);
						if ((CFrame.new(-1458.89502, 29.8870335, -50.633564, .858821094, 1.13848939e-008, .512275636, -4.85649254e-009, 1, -1.40823326e-008, -0.512275636, 9.6063415e-009, .858821094)).Position - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 3 then
							Q[45].wt(.5);
							if not Q[45].ffc(Q[40], "Saber Expert") then
								C:Notify({
									Title = "TiroX Neo",
									Content = "Hopping...",
									Duration = 8,
									Icon = "rbxassetid://82615711497774",
								});
								Q[45].wt(.1);
								Q[10]:Teleport(Q[30], Q[35]);
							end;
						end;
					end;
				end;
			elseif Quest == "World 2" then
				local C = {};
				C[1] = Q[7].Remotes.CommF_:InvokeServer(Q[3]({ "DressrosaQuestProgre", "ss" }));
				if C[1].UsedKey == false then
					Q[31](CFrame.new(1347.32947, 37.349369, -1325.44922, .538348913, 8.57539106e-008, .842722058, 8.61935634e-010, 1, -1.0230886e-007, -0.842722058, 5.58042359e-008, .538348913), 1.5);
					Q[7].Remotes.CommF_:InvokeServer(Q[3]({ "DressrosaQuestProgre", "ss" }), "Detective");
					Q[45].Equip("Key");
				elseif C[1].KilledIceBoss == false then
					if Q[45].ffc(Q[40], "Ice Admiral") then
						for h, y in pairs(Q[40]:GetChildren()) do
							local r = {};
							r[1], r[2] = h, y;
							if r[2].Name == "Ice Admiral" and r[2].Humanoid.Health > 0 then
								repeat
									Q[45].wt(.1);
									Q[31](r[2].HumanoidRootPart.CFrame * CFrame.new(0, 20, 0), 1.5);
									if not Q[45].ffc(Q[35].Character, "HasBuso") then
										Q[7].Remotes.CommF_:InvokeServer("Buso");
									end;
									Q[14]();
								until not r[2].Parent or r[2].Humanoid.Health <= 0 or not (getgenv()).AutoFarm or C[1].KilledIceBoss;
								Q[45].wt(2);
								Q[7].Remotes.CommF_:InvokeServer("TravelDressrosa");
								TleP = true;
								Q[45].wt(25);
							end;
						end;
					elseif Q[45].ffc(Q[7], "Ice Admiral") then
						Q[31](CFrame.new(1144.5270996094, 7.3292083740234, -1164.7322998047), 1.5);
					end;
				elseif C[1].KilledIceBoss == true then
					Q[7].Remotes.CommF_:InvokeServer("TravelDressrosa");
					TleP = true;
					Q[45].wt(25);
				end;
			elseif Quest == "Pole (1st Form)" then
				if not Q[45].CheckBoss("Thunder God") then
					return;
				end;
				repeat
					Q[45].wt();
					if Q[45].ffc(Q[40], "Thunder God") then
						for C, h in pairs(Q[40]:GetChildren()) do
							local y = {};
							y[3], y[1] = C, h;
							if y[1].Name == "Thunder God" and y[1].Humanoid.Health > 0 then
								repeat
									Q[45].wt();
									if ((CFrame.new(-7894.6181640625, 5547.1420898438, -380.29098510742)).Position - Q[35].Character.HumanoidRootPart.Position).Magnitude >= 7500 then
										((Q[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector.create(-7894.6181640625, 5547.1420898438, -380.29098510742));
									end;
									Q[31](y[1].HumanoidRootPart.CFrame * CFrame.new(0, 40, 0), 1.5);
									if not Q[45].ffc(Q[35].Character, "HasBuso") then
										Q[7].Remotes.CommF_:InvokeServer("Buso");
									end;
									Q[14]();
								until not y[1].Parent or y[1].Humanoid.Health <= 0 or not (getgenv()).AutoFarm or not Q[45].CheckBoss("Thunder God");
							end;
						end;
					elseif Q[45].ffc(Q[7], "Thunder God") then
						for C, h in pairs(Q[7]:GetChildren()) do
							local y = {};
							y[2], y[3] = C, h;
							if y[3].Name == "Thunder God" and y[3].Humanoid.Health > 0 then
								repeat
									Q[45].wt();
									if ((CFrame.new(-7894.6181640625, 5547.1420898438, -380.29098510742)).Position - Q[35].Character.HumanoidRootPart.Position).Magnitude >= 7500 then
										((Q[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector.create(-7894.6181640625, 5547.1420898438, -380.29098510742));
									end;
									Q[31](y[3].HumanoidRootPart.CFrame * CFrame.new(0, 40, 0), 1.5);
									if not Q[45].ffc(Q[35].Character, "HasBuso") then
										Q[7].Remotes.CommF_:InvokeServer("Buso");
									end;
									Q[14]();
								until not y[3].Parent or y[3].Humanoid.Health <= 0 or not (getgenv()).AutoFarm or not Q[45].CheckBoss("Thunder God");
							end;
						end;
					end;
				until not Q[45].CheckBoss("Thunder God");
			elseif Quest == "Shark Saw" then
				if not Q[45].CheckBoss("The Saw") then
					return;
				end;
				repeat
					Q[45].wt();
					if Q[45].ffc(Q[40], "The Saw") then
						for C, h in pairs(Q[40]:GetChildren()) do
							local y = {};
							y[1], y[3] = C, h;
							if y[3].Name == "The Saw" and y[3].Humanoid.Health > 0 then
								repeat
									Q[45].wt();
									if ((CFrame.new(-7894.6181640625, 5547.1420898438, -380.29098510742)).Position - Q[35].Character.HumanoidRootPart.Position).Magnitude >= 7500 then
										((Q[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector.create(-7894.6181640625, 5547.1420898438, -380.29098510742));
									end;
									Q[31](y[3].HumanoidRootPart.CFrame * CFrame.new(0, 40, 0), 1.5);
									if not Q[45].ffc(Q[35].Character, "HasBuso") then
										Q[7].Remotes.CommF_:InvokeServer("Buso");
									end;
									Q[14]();
								until not y[3].Parent or y[3].Humanoid.Health <= 0 or not (getgenv()).AutoFarm or not Q[45].CheckBoss("The Saw");
							end;
						end;
					elseif Q[45].ffc(Q[7], "The Saw") then
						for C, h in pairs(Q[7]:GetChildren()) do
							local y = {};
							y[1], y[3] = C, h;
							if y[3].Name == "The Saw" and y[3].Humanoid.Health > 0 then
								repeat
									Q[45].wt();
									if ((CFrame.new(-7894.6181640625, 5547.1420898438, -380.29098510742)).Position - Q[35].Character.HumanoidRootPart.Position).Magnitude >= 7500 then
										((Q[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector.create(-7894.6181640625, 5547.1420898438, -380.29098510742));
									end;
									Q[31](y[3].HumanoidRootPart.CFrame * CFrame.new(0, 40, 0), 1.5);
									if not Q[45].ffc(Q[35].Character, "HasBuso") then
										Q[7].Remotes.CommF_:InvokeServer("Buso");
									end;
									Q[14]();
								until not y[3].Parent or y[3].Humanoid.Health <= 0 or not (getgenv()).AutoFarm or not Q[45].CheckBoss("The Saw");
							end;
						end;
					end;
				until not Q[45].CheckBoss("The Saw");
			elseif Quest == "Flail" then
				if not Q[45].CheckBoss("Smoke Admiral") then
					return;
				end;
				repeat
					Q[45].wt();
					if Q[45].ffc(Q[40], "Smoke Admiral") then
						for C, h in pairs(Q[40]:GetChildren()) do
							local y = {};
							y[2], y[1] = C, h;
							if y[1].Name == "Smoke Admiral" and y[1].Humanoid.Health > 0 then
								repeat
									Q[45].wt();
									if ((CFrame.new(-7894.6181640625, 5547.1420898438, -380.29098510742)).Position - Q[35].Character.HumanoidRootPart.Position).Magnitude >= 7500 then
										((Q[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector.create(-7894.6181640625, 5547.1420898438, -380.29098510742));
									end;
									Q[31](y[1].HumanoidRootPart.CFrame * CFrame.new(0, 40, 0), 1.5);
									if not Q[45].ffc(Q[35].Character, "HasBuso") then
										Q[7].Remotes.CommF_:InvokeServer("Buso");
									end;
									Q[14]();
								until not y[1].Parent or y[1].Humanoid.Health <= 0 or not (getgenv()).AutoFarm or not Q[45].CheckBoss("Smoke Admiral");
							end;
						end;
					elseif Q[45].ffc(Q[7], "Smoke Admiral") then
						for C, h in pairs(Q[7]:GetChildren()) do
							local y = {};
							y[1], y[2] = C, h;
							if y[2].Name == "Smoke Admiral" and y[2].Humanoid.Health > 0 then
								repeat
									Q[45].wt();
									if ((CFrame.new(-7894.6181640625, 5547.1420898438, -380.29098510742)).Position - Q[35].Character.HumanoidRootPart.Position).Magnitude >= 7500 then
										((Q[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector.create(-7894.6181640625, 5547.1420898438, -380.29098510742));
									end;
									Q[31](y[2].HumanoidRootPart.CFrame * CFrame.new(0, 40, 0), 1.5);
									if not Q[45].ffc(Q[35].Character, "HasBuso") then
										Q[7].Remotes.CommF_:InvokeServer("Buso");
									end;
									Q[14]();
								until not y[2].Parent or y[2].Humanoid.Health <= 0 or not (getgenv()).AutoFarm or not Q[45].CheckBoss("Smoke Admiral");
							end;
						end;
					end;
				until not Q[45].CheckBoss("Smoke Admiral");
			elseif Quest == "Wardens Sword" then
				if not Q[45].CheckBoss("Chief Warden") then
					return;
				end;
				repeat
					Q[45].wt();
					if Q[45].ffc(Q[40], "Chief Warden") then
						for C, h in pairs(Q[40]:GetChildren()) do
							local y = {};
							y[2], y[1] = C, h;
							if y[1].Name == "Chief Warden" and y[1].Humanoid.Health > 0 then
								repeat
									Q[45].wt();
									if ((CFrame.new(-7894.6181640625, 5547.1420898438, -380.29098510742)).Position - Q[35].Character.HumanoidRootPart.Position).Magnitude >= 7500 then
										((Q[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector.create(-7894.6181640625, 5547.1420898438, -380.29098510742));
									end;
									Q[31](y[1].HumanoidRootPart.CFrame * CFrame.new(0, 40, 0), 1.5);
									if not Q[45].ffc(Q[35].Character, "HasBuso") then
										Q[7].Remotes.CommF_:InvokeServer("Buso");
									end;
									Q[14]();
								until not y[1].Parent or y[1].Humanoid.Health <= 0 or not (getgenv()).AutoFarm or not Q[45].CheckBoss("Chief Warden");
							end;
						end;
					elseif Q[45].ffc(Q[7], "Chief Warden") then
						for C, h in pairs(Q[7]:GetChildren()) do
							local y = {};
							y[1], y[2] = C, h;
							if y[2].Name == "Chief Warden" and y[2].Humanoid.Health > 0 then
								repeat
									Q[45].wt();
									if ((CFrame.new(-7894.6181640625, 5547.1420898438, -380.29098510742)).Position - Q[35].Character.HumanoidRootPart.Position).Magnitude >= 7500 then
										((Q[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector.create(-7894.6181640625, 5547.1420898438, -380.29098510742));
									end;
									Q[31](y[2].HumanoidRootPart.CFrame * CFrame.new(0, 40, 0), 1.5);
									if not Q[45].ffc(Q[35].Character, "HasBuso") then
										Q[7].Remotes.CommF_:InvokeServer("Buso");
									end;
									Q[14]();
								until not y[2].Parent or y[2].Humanoid.Health <= 0 or not (getgenv()).AutoFarm or not Q[45].CheckBoss("Chief Warden");
							end;
						end;
					end;
				until not Q[45].CheckBoss("The Saw");
			elseif Quest == "Magma Blaster" then
				if not Q[45].CheckBoss("Magma Admiral") then
					return;
				end;
				repeat
					Q[45].wt();
					if Q[45].ffc(Q[40], "Magma Admiral") then
						for C, h in pairs(Q[40]:GetChildren()) do
							local y = {};
							y[1], y[2] = C, h;
							if y[2].Name == "Magma Admiral" and y[2].Humanoid.Health > 0 then
								repeat
									Q[45].wt();
									if ((CFrame.new(-7894.6181640625, 5547.1420898438, -380.29098510742)).Position - Q[35].Character.HumanoidRootPart.Position).Magnitude >= 7500 then
										((Q[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector.create(-7894.6181640625, 5547.1420898438, -380.29098510742));
									end;
									Q[31](y[2].HumanoidRootPart.CFrame * CFrame.new(0, 40, 0), 1.5);
									if not Q[45].ffc(Q[35].Character, "HasBuso") then
										Q[7].Remotes.CommF_:InvokeServer("Buso");
									end;
									Q[14]();
								until not y[2].Parent or y[2].Humanoid.Health <= 0 or not (getgenv()).AutoFarm or not Q[45].CheckBoss("Magma Admiral");
							end;
						end;
					elseif Q[45].ffc(Q[7], "Magma Admiral") then
						for C, h in pairs(Q[7]:GetChildren()) do
							local y = {};
							y[2], y[3] = C, h;
							if y[3].Name == "Magma Admiral" and y[3].Humanoid.Health > 0 then
								repeat
									Q[45].wt();
									if ((CFrame.new(-7894.6181640625, 5547.1420898438, -380.29098510742)).Position - Q[35].Character.HumanoidRootPart.Position).Magnitude >= 7500 then
										((Q[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector.create(-7894.6181640625, 5547.1420898438, -380.29098510742));
									end;
									Q[31](y[3].HumanoidRootPart.CFrame * CFrame.new(0, 40, 0), 1.5);
									if not Q[45].ffc(Q[35].Character, "HasBuso") then
										Q[7].Remotes.CommF_:InvokeServer("Buso");
									end;
									Q[14]();
								until not y[3].Parent or y[3].Humanoid.Health <= 0 or not (getgenv()).AutoFarm or not Q[45].CheckBoss("Magma Admiral");
							end;
						end;
					end;
				until not Q[45].CheckBoss("Magma Admiral");
			elseif Quest == "Bazooka" then
				if not Q[45].CheckBoss("Wysper") then
					return;
				end;
				repeat
					Q[45].wt();
					if Q[45].ffc(Q[40], "Wysper") then
						for C, h in pairs(Q[40]:GetChildren()) do
							local y = {};
							y[3], y[2] = C, h;
							if y[2].Name == "Wysper" and y[2].Humanoid.Health > 0 then
								repeat
									Q[45].wt();
									if ((CFrame.new(-7894.6181640625, 5547.1420898438, -380.29098510742)).Position - Q[35].Character.HumanoidRootPart.Position).Magnitude >= 7500 then
										((Q[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector.create(-7894.6181640625, 5547.1420898438, -380.29098510742));
									end;
									Q[31](y[2].HumanoidRootPart.CFrame * CFrame.new(0, 40, 0), 1.5);
									if not Q[45].ffc(Q[35].Character, "HasBuso") then
										Q[7].Remotes.CommF_:InvokeServer("Buso");
									end;
									Q[14]();
								until not y[2].Parent or y[2].Humanoid.Health <= 0 or not (getgenv()).AutoFarm or not Q[45].CheckBoss("Wysper");
							end;
						end;
					elseif Q[45].ffc(Q[7], "Wysper") then
						for C, h in pairs(Q[7]:GetChildren()) do
							local y = {};
							y[3], y[1] = C, h;
							if y[1].Name == "Wysper" and y[1].Humanoid.Health > 0 then
								repeat
									Q[45].wt();
									if ((CFrame.new(-7894.6181640625, 5547.1420898438, -380.29098510742)).Position - Q[35].Character.HumanoidRootPart.Position).Magnitude >= 7500 then
										((Q[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector.create(-7894.6181640625, 5547.1420898438, -380.29098510742));
									end;
									Q[31](y[1].HumanoidRootPart.CFrame * CFrame.new(0, 40, 0), 1.5);
									if not Q[45].ffc(Q[35].Character, "HasBuso") then
										Q[7].Remotes.CommF_:InvokeServer("Buso");
									end;
									Q[14]();
								until not y[1].Parent or y[1].Humanoid.Health <= 0 or not (getgenv()).AutoFarm or not Q[45].CheckBoss("Wysper");
							end;
						end;
					end;
				until not Q[45].CheckBoss("Wysper");
			elseif Quest == "Twin Hooks" then
				if not Q[45].CheckBoss("Captain Elephant") then
					return;
				end;
				repeat
					Q[45].wt();
					if Q[45].ffc(Q[40], "Captain Elephant") then
						for C, h in pairs(Q[40]:GetChildren()) do
							local y = {};
							y[2], y[3] = C, h;
							if y[3].Name == "Captain Elephant" and y[3].Humanoid.Health > 0 then
								repeat
									Q[45].wt();
									if ((CFrame.new(-7894.6181640625, 5547.1420898438, -380.29098510742)).Position - Q[35].Character.HumanoidRootPart.Position).Magnitude >= 7500 then
										((Q[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector.create(-7894.6181640625, 5547.1420898438, -380.29098510742));
									end;
									Q[31](y[3].HumanoidRootPart.CFrame * CFrame.new(0, 40, 0), 1.5);
									if not Q[45].ffc(Q[35].Character, "HasBuso") then
										Q[7].Remotes.CommF_:InvokeServer("Buso");
									end;
									Q[14]();
								until not y[3].Parent or y[3].Humanoid.Health <= 0 or not (getgenv()).AutoFarm or not Q[45].CheckBoss("Captain Elephant");
							end;
						end;
					elseif Q[45].ffc(Q[7], "Captain Elephant") then
						for C, h in pairs(Q[7]:GetChildren()) do
							local y = {};
							y[1], y[2] = C, h;
							if y[2].Name == "Captain Elephant" and y[2].Humanoid.Health > 0 then
								repeat
									Q[45].wt();
									if ((CFrame.new(-7894.6181640625, 5547.1420898438, -380.29098510742)).Position - Q[35].Character.HumanoidRootPart.Position).Magnitude >= 7500 then
										((Q[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector.create(-7894.6181640625, 5547.1420898438, -380.29098510742));
									end;
									Q[31](y[2].HumanoidRootPart.CFrame * CFrame.new(0, 40, 0), 1.5);
									if not Q[45].ffc(Q[35].Character, "HasBuso") then
										Q[7].Remotes.CommF_:InvokeServer("Buso");
									end;
									Q[14]();
								until not y[2].Parent or y[2].Humanoid.Health <= 0 or not (getgenv()).AutoFarm or not Q[45].CheckBoss("Captain Elephant");
							end;
						end;
					end;
				until not Q[45].CheckBoss("Wysper");
			elseif Quest == "Gravity Blade" then
				if not Q[45].CheckBoss("Orbitus") then
					return;
				end;
				repeat
					Q[45].wt();
					if Q[45].ffc(Q[40], "Orbitus") then
						for C, h in pairs(Q[40]:GetChildren()) do
							local y = {};
							y[2], y[1] = C, h;
							if y[1].Name == "Orbitus" and y[1].Humanoid.Health > 0 then
								repeat
									Q[45].wt();
									Q[31](y[1].HumanoidRootPart.CFrame * CFrame.new(0, 40, 0), 1.5);
									if not Q[45].ffc(Q[35].Character, "HasBuso") then
										Q[7].Remotes.CommF_:InvokeServer("Buso");
									end;
									Q[14]();
								until not y[1].Parent or y[1].Humanoid.Health <= 0 or not (getgenv()).AutoFarm or not Q[45].CheckBoss("Orbitus");
							end;
						end;
					elseif Q[45].ffc(Q[7], "Orbitus") then
						for C, h in pairs(Q[7]:GetChildren()) do
							local y = {};
							y[3], y[2] = C, h;
							if y[2].Name == "Orbitus" and y[2].Humanoid.Health > 0 then
								repeat
									Q[45].wt();
									Q[31](y[2].HumanoidRootPart.CFrame * CFrame.new(0, 40, 0), 1.5);
									if not Q[45].ffc(Q[35].Character, "HasBuso") then
										Q[7].Remotes.CommF_:InvokeServer("Buso");
									end;
									Q[14]();
								until not y[2].Parent or y[2].Humanoid.Health <= 0 or not (getgenv()).AutoFarm or not Q[45].CheckBoss("Orbitus");
							end;
						end;
					end;
				until not Q[45].CheckBoss("Orbitus");
			elseif Quest == "Longsword" then
				if not Q[45].CheckBoss("Diamond") then
					return;
				end;
				repeat
					Q[45].wt();
					if Q[45].ffc(Q[40], "Diamond") then
						for C, h in pairs(Q[40]:GetChildren()) do
							local y = {};
							y[3], y[2] = C, h;
							if y[2].Name == "Diamond" and y[2].Humanoid.Health > 0 then
								repeat
									Q[45].wt();
									Q[31](y[2].HumanoidRootPart.CFrame * CFrame.new(0, 40, 0), 1.5);
									if not Q[45].ffc(Q[35].Character, "HasBuso") then
										Q[7].Remotes.CommF_:InvokeServer("Buso");
									end;
									Q[14]();
								until not y[2].Parent or y[2].Humanoid.Health <= 0 or not (getgenv()).AutoFarm or not Q[45].CheckBoss("Diamond");
							end;
						end;
					elseif Q[45].ffc(Q[7], "Diamond") then
						for C, h in pairs(Q[7]:GetChildren()) do
							local y = {};
							y[2], y[3] = C, h;
							if y[3].Name == "Diamond" and y[3].Humanoid.Health > 0 then
								repeat
									Q[45].wt();
									Q[31](y[3].HumanoidRootPart.CFrame * CFrame.new(0, 40, 0), 1.5);
									if not Q[45].ffc(Q[35].Character, "HasBuso") then
										Q[7].Remotes.CommF_:InvokeServer("Buso");
									end;
									Q[14]();
								until not y[3].Parent or y[3].Humanoid.Health <= 0 or not (getgenv()).AutoFarm or not Q[45].CheckBoss("Diamond");
							end;
						end;
					end;
				until not Q[45].CheckBoss("Diamond");
			elseif Quest == "Rengoku" then
				if not Q[45].CheckBoss("Awakened Ice Admiral") then
					return;
				end;
				repeat
					Q[45].wt();
					if Q[45].ffc(Q[40], "Awakened Ice Admiral") then
						for C, h in pairs(Q[40]:GetChildren()) do
							local y = {};
							y[3], y[2] = C, h;
							if y[2].Name == "Awakened Ice Admiral" and y[2].Humanoid.Health > 0 then
								repeat
									Q[45].wt();
									Q[31](y[2].HumanoidRootPart.CFrame * CFrame.new(0, 40, 0), 1.5);
									if not Q[45].ffc(Q[35].Character, "HasBuso") then
										Q[7].Remotes.CommF_:InvokeServer("Buso");
									end;
									Q[14]();
								until not y[2].Parent or y[2].Humanoid.Health <= 0 or not (getgenv()).AutoFarm or not Q[45].CheckBoss("Awakened Ice Admiral");
							end;
						end;
					elseif Q[45].ffc(Q[7], "Awakened Ice Admiral") then
						for C, h in pairs(Q[7]:GetChildren()) do
							local y = {};
							y[3], y[2] = C, h;
							if y[2].Name == "Awakened Ice Admiral" and y[2].Humanoid.Health > 0 then
								repeat
									Q[45].wt();
									Q[31](y[2].HumanoidRootPart.CFrame * CFrame.new(0, 40, 0), 1.5);
									if not Q[45].ffc(Q[35].Character, "HasBuso") then
										Q[7].Remotes.CommF_:InvokeServer("Buso");
									end;
									Q[14]();
								until not y[2].Parent or y[2].Humanoid.Health <= 0 or not (getgenv()).AutoFarm or not Q[45].CheckBoss("Awakened Ice Admiral");
							end;
						end;
					end;
				until not Q[45].CheckBoss("Awakened Ice Admiral");
			elseif Quest == "BartiloQuest" then
				if New_World then
					local C = {};
					C[1] = Q[7].Remotes.CommF_:InvokeServer("BartiloQuestProgress");
					if C[1].KilledBandits == false then
						if Q[35].PlayerGui.Main.Quest.Visible and (Q[45].sf(Q[35].PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and Q[45].sf(Q[35].PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50")) then
							if Q[45].ffc(Q[40], "Swan Pirate") then
								for C, h in pairs(Q[40]:GetChildren()) do
									local y = {};
									y[1], y[2] = C, h;
									if y[2].Name == "Swan Pirate" and y[2].Humanoid.Health > 0 then
										Q[7].Remotes.CommF_:InvokeServer("SetSpawnPoint");
										repeat
											Q[45].wt();
											Q[45].BN(y[2].Name);
											Q[31](y[2].HumanoidRootPart.CFrame * CFrame.new(0, 30, 0), 1.5);
											if not Q[45].ffc(Q[35].Character, "HasBuso") then
												Q[7].Remotes.CommF_:InvokeServer("Buso");
											end;
											Q[14]();
										until (y[2].HumanoidRootPart.Position - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 50 or y[2].Humanoid.Health <= 0 or not (getgenv()).AutoFarm;
									end;
								end;
							else
								Q[31](CFrame.new(976.467651, 111.174057, 1229.1084), 1.5);
							end;
						else
							Q[7].Remotes.CommF_:InvokeServer("StartQuest", "BartiloQuest", 1);
						end;
					elseif C[1].KilledSpring == false then
						if Q[45].ffc(Q[40], "Jeremy") then
							for C, h in pairs(Q[40]:GetChildren()) do
								local y = {};
								y[3], y[1] = C, h;
								if y[1].Name == "Jeremy" then
									repeat
										Q[45].wt();
										Q[31](y[1].HumanoidRootPart.CFrame * CFrame.new(0, 30, 0), 1.5);
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											Q[7].Remotes.CommF_:InvokeServer("Buso");
										end;
										Q[14]();
									until not y[1].Parent or y[1].Humanoid.Health <= 0 or not (getgenv()).AutoFarm;
								end;
							end;
						elseif Q[45].ffc(Q[7], "Jeremy") then
							Q[31]((Q[7]:FindFirstChild("Jeremy")).HumanoidRootPart.CFrame * CFrame.new(0, 30, 0), 1.5);
						elseif not Q[45].ffc(Q[40], "Jeremy") and not Q[45].ffc(Q[7], "Jeremy") then
							Q[39]();
						end;
					elseif C[1].DidPlates == false then
						repeat
							Q[45].wt(.3);
							Q[31](CFrame.new(-1836, 11, 1714), 1.5);
						until (Vector3.new(-1836, 11, 1714) - Q[35].Character.HumanoidRootPart.Position).Magnitude < 10;
						Q[45].wt(1);
						Q[7].Remotes.CommF_:InvokeServer("BartiloQuestProgress", "DidPlates");
					end;
				else
					Q[7].Remotes.CommF_:InvokeServer("TravelDressrosa");
				end;
			elseif Quest == "Find Water Key" then
				if New_World then
					if Q[35].Backpack:FindFirstChild("Water Key") or Q[45].ffc(Q[35].Character, "Water Key") then
						Q[45].Status(Q[3]({ " Status : Use Water ", "Key" }));
						Q[45].Equip("Water Key");
						Q[45].wait(0);
						Q[46].Remotes.CommF_:InvokeServer("BuySharkmanKarate", true);
						CheckFindWaterKey = true;
					elseif not Q[45].ffc(Q[35].Backpack, "Water Key") and not Q[45].ffc(Q[35].Character, "Water Key") then
						if Q[45].ffc(Q[40], "Tide Keeper") then
							for C, h in pairs(Q[40]:GetChildren()) do
								local y = {};
								y[1], y[2] = C, h;
								if y[2].Name == "Tide Keeper" and (y[2]:FindFirstChild("Humanoid") and (y[2]:FindFirstChild("Humanoid")).Health > 0) then
									repeat
										task.wait();
										Q[31](y[2].HumanoidRootPart.CFrame * CFrame.new(0, 30, 0), 1.5);
										if not Q[45].ffc(Q[35].Character, "HasBuso") then
											Q[7].Remotes.CommF_:InvokeServer("Buso");
										end;
										Q[14]();
									until not y[2].Parent or y[2].Humanoid.Health <= 0 or not (getgenv()).AutoFarm;
								end;
							end;
						elseif Q[45].ffc(Q[7], "Tide Keeper") then
							for C, h in pairs(Q[7]:GetChildren()) do
								local y = {};
								y[1], y[2] = C, h;
								if y[2].Name == "Tide Keeper" and (y[2]:FindFirstChild("Humanoid") and (y[2]:FindFirstChild("Humanoid")).Health > 0) then
									repeat
										Q[45].wt();
										Q[31](y[2].HumanoidRootPart.CFrame * CFrame.new(0, 30, 0), 1.5);
										if not Q[45].ffc(Q[35].Character, "HasBuso") then
											Q[7].Remotes.CommF_:InvokeServer("Buso");
										end;
										Q[14]();
									until not y[2].Parent or y[2].Humanoid.Health <= 0 or not (getgenv()).AutoFarm;
								end;
							end;
						else
							Q[35]:Kick("Hop");
							Q[45].wt(.1);
							Q[10]:Teleport(Q[30], Q[35]);
						end;
					end;
				else
					Q[7].Remotes.CommF_:InvokeServer("TravelDressrosa");
				end;
			elseif Quest == "Evo Race V1" then
				if New_World then
					if Start_Quest_Evo_V1 then
						if not Q[45].ffc(Q[35].Backpack, "Flower 3") and not Q[45].ffc(Q[35].Character, "Flower 3") then
							if (Q[35].Character.HumanoidRootPart.Position - Vector3.new(976.467651, 111.174057, 1229.1084)).Magnitude <= 800 then
								for C, h in pairs(Q[40]:GetChildren()) do
									local y = {};
									y[2], y[1] = C, h;
									if y[1].Humanoid.Health > 0 and (y[1].HumanoidRootPart.Position - Vector3.new(976.467651, 111.174057, 1229.1084)).Magnitude <= 800 then
										repeat
											Q[45].wt();
											Q[31](y[1].HumanoidRootPart.CFrame * CFrame.new(0, 30, 0), 1.5);
											if not Q[45].ffc(Q[35].Character, "HasBuso") then
												Q[7].Remotes.CommF_:InvokeServer("Buso");
											end;
											Q[14]();
										until not y[1].Parent or y[1].Humanoid.Health <= 0 or Q[45].ffc(Q[35].Backpack, "Flower 3") or Q[45].ffc(Q[35].Character, "Flower 3") or not (getgenv()).AutoFarm;
									end;
								end;
							else
								Q[31](CFrame.new(976.467651, 111.174057, 1229.1084), 1.5);
							end;
						elseif not Q[45].ffc(Q[35].Backpack, "Flower 2") and not Q[45].ffc(Q[35].Character, "Flower 2") then
							if Q[45].ffc(Q[19], "Flower2") then
								Q[31](Q[19].Flower2.CFrame, 1.5);
								if (Q[35].Character.HumanoidRootPart.Position - Q[19].Flower2.Position).Magnitude <= 5 then
									Q[2]:SendKeyEvent(true, "Space", false, game);
									Q[45].wt(.5);
									Q[2]:SendKeyEvent(false, "Space", false, game);
								end;
							end;
						elseif not Q[45].ffc(Q[35].Backpack, "Flower 1") and not Q[45].ffc(Q[35].Character, "Flower 1") then
							Q[31](Q[19].Flower1.CFrame, 1.5);
							if (Q[35].Character.HumanoidRootPart.Position - Q[19].Flower1.Position).Magnitude <= 5 and Q[19].Flower1.Transparency == 0 then
								Q[2]:SendKeyEvent(true, "Space", false, game);
								Q[45].wt(.5);
								Q[2]:SendKeyEvent(false, "Space", false, game);
							end;
							Q[45].wt(1);
						else
							Q[7].Remotes.CommF_:InvokeServer("Alchemist", "3");
						end;
					else
						if Q[7].Remotes.CommF_:InvokeServer("Alchemist", "1") == 1 or Q[7].Remotes.CommF_:InvokeServer("Alchemist", "1") == 2 then
							Start_Quest_Evo_V1 = true;
						end;
						Q[7].Remotes.CommF_:InvokeServer("Alchemist", "2");
					end;
				else
					Q[7].Remotes.CommF_:InvokeServer("TravelDressrosa");
				end;
			elseif Quest == "Evo Race V2" then
				if New_World then
					if Q[35].Data.Race.Value == "Human" then
						if Quest_Start_Evo_Human_V3 then
							if not Q[45].ffc(Q[40], "Orbitus") and (not Q[45].ffc(Q[7], "Orbitus") and not Kill_Orbitus) then
								Q[45].HopLowServer(4);
								wait(.2);
								Q[35]:Kick("Hop");
								Q[45].wt(.1);
								Q[10]:Teleport(Q[30], Q[35]);
							end;
							if not Q[45].ffc(Q[40], "Jeremy") and (not Q[45].ffc(Q[7], "Jeremy") and not Kill_Jeremy) then
								Q[45].HopLowServer(4);
								wait(.2);
								Q[35]:Kick("Hop");
								Q[45].wt(.1);
								Q[10]:Teleport(Q[30], Q[35]);
							end;
							if not Q[45].ffc(Q[40], "Diamond") and (not Q[45].ffc(Q[7], "Diamond") and not Kill_Diamond) then
								Q[45].HopLowServer(4);
								wait(.2);
								Q[35]:Kick("Hop");
								Q[45].wt(.1);
								Q[10]:Teleport(Q[30], Q[35]);
							end;
							if not Kill_Orbitus then
								repeat
									Q[45].wt();
									pcall(function()
										if Q[45].ffc(Q[40], "Orbitus") or Q[45].ffc(Q[7], "Orbitus") then
											if Q[45].ffc(Q[40], "Orbitus") then
												for C, h in pairs(Q[40]:GetChildren()) do
													local y = {};
													y[3], y[1] = C, h;
													if y[1].Name == "Orbitus" and y[1].Humanoid.Health > 0 then
														repeat
															Q[45].wt();
															if y[1]:FindFirstChild("HumanoidRootPart") then
																Q[31](y[1].HumanoidRootPart.CFrame * CFrame.new(0, 30, 0), 1.5);
																if not Q[45].ffc(Q[35].Character, "HasBuso") then
																	Q[7].Remotes.CommF_:InvokeServer("Buso");
																end;
																Q[14]();
															else
																Kill_Orbitus = true;
																break;
															end;
														until not y[1].Parent or y[1].Humanoid.Health <= 0 or not (getgenv()).AutoFarm;
														Kill_Orbitus = true;
													end;
												end;
											elseif Q[45].ffc(Q[7], "Orbitus") then
												Q[31](Q[7].Orbitus.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0), 1.5);
											end;
										end;
									end);
								until Kill_Orbitus;
							end;
							if not Kill_Jeremy then
								repeat
									Q[45].wt();
									pcall(function()
										if Q[45].ffc(Q[40], "Jeremy") or Q[45].ffc(Q[7], "Jeremy") then
											if Q[45].ffc(Q[40], "Jeremy") then
												for C, h in pairs(Q[40]:GetChildren()) do
													local y = {};
													y[2], y[3] = C, h;
													if y[3].Name == "Jeremy" and y[3].Humanoid.Health > 0 then
														repeat
															Q[45].wt();
															if y[3]:FindFirstChild("HumanoidRootPart") then
																Q[31](y[3].HumanoidRootPart.CFrame * CFrame.new(0, 30, 0), 1.5);
																if not Q[45].ffc(Q[35].Character, "HasBuso") then
																	Q[7].Remotes.CommF_:InvokeServer("Buso");
																end;
																Q[14]();
															else
																Kill_Jeremy = true;
																break;
															end;
														until not y[3].Parent or y[3].Humanoid.Health <= 0 or not y[3]:FindFirstChild("HumanoidRootPart") or not (getgenv()).AutoFarm;
														Kill_Jeremy = true;
													end;
												end;
											elseif Q[45].ffc(Q[7], "Jeremy") then
												Q[31](Q[7].Jeremy.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0), 1.5);
											end;
										end;
									end);
								until Kill_Orbitus;
							end;
							if not Kill_Diamond then
								repeat
									Q[45].wt();
									pcall(function()
										if Q[45].ffc(Q[40], "Diamond") or Q[45].ffc(Q[7], "Diamond") then
											if Q[45].ffc(Q[40], "Diamond") then
												for C, h in pairs(Q[40]:GetChildren()) do
													local y = {};
													y[2], y[1] = C, h;
													if y[1].Name == "Diamond" and y[1].Humanoid.Health > 0 then
														repeat
															Q[45].wt();
															if y[1]:FindFirstChild("HumanoidRootPart") then
																Q[31](y[1].HumanoidRootPart.CFrame * CFrame.new(0, 30, 0), 1.5);
																if not Q[45].ffc(Q[35].Character, "HasBuso") then
																	Q[7].Remotes.CommF_:InvokeServer("Buso");
																end;
																Q[14]();
															else
																Kill_Diamond = true;
																break;
															end;
														until not y[1].Parent or y[1].Humanoid.Health <= 0 or not (getgenv()).AutoFarm;
														Kill_Diamond = true;
													end;
												end;
											elseif Q[45].ffc(Q[7], "Diamond") then
												Q[31](Q[7].Diamond.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0), 1.5);
											end;
										end;
									end);
								until Kill_Diamond;
							end;
						else
							Q[7].Remotes.CommF_:InvokeServer("Wenlocktoad", "1");
							Q[45].wt(1);
							Q[7].Remotes.CommF_:InvokeServer("Wenlocktoad", "2");
							warn();
							if Q[7].Remotes.CommF_:InvokeServer("Wenlocktoad", "1") == 1 or Q[7].Remotes.CommF_:InvokeServer("Wenlocktoad", "1") == 2 then
								Quest_Start_Evo_Human_V3 = true;
							end;
						end;
					elseif Q[35].Data.Race.Value == "Fishman" then
						if Quest_Start_Evo_Fishman_V3 then
							local C = {};
							C[1] = false;
							C[3] = false;
							for h, y in pairs(Q[19].SeaBeasts:GetChildren()) do
								local r = {};
								r[2], r[3] = h, y;
								if r[3]:FindFirstChild("Health") and (r[3].Health.Value > 0 and (Vector3.new(-3823.9206542969, 76.979339599609, -11685.7734375) - r[3].HumanoidRootPart.Position).Magnitude >= 1500) then
									C[1] = true;
									Q[7].Remotes.CommF_:InvokeServer("BuyFishmanKarate");
									Tejao = true;
									PositionSkillMasteryDevilFruit = r[3].HumanoidRootPart.CFrame;
									Q[35].Character.Humanoid.Sit = false;
									wait(1);
									if Q[35].Character.Humanoid.Sit == false then
										Boat = nil;
									end;
									repeat
										wait();
										Q[31](r[3].HumanoidRootPart.CFrame * CFrame.new(0, 3, 0), 1.5);
									until (r[3].HumanoidRootPart.Position - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 5 or not (getgenv()).AutoFarm;
									repeat
										wait();
										Q[45].Equip("Fishman Karate");
										if Q[35].PlayerGui.Main.Skills:FindFirstChild("Fishman Karate") and (tostring(Q[35].PlayerGui.Main.Skills["Fishman Karate"].Z.Title.TextColor) == "Institutional white" and Q[35].PlayerGui.Main.Skills["Fishman Karate"].Z.Cooldown.AbsoluteSize.X == 0) then
											Q[45].Equip("Fishman Karate");
											Q[31](r[3].HumanoidRootPart.CFrame * CFrame.new(0, 3, 0), 1.5);
											wait(.5);
											PositionSkillMasteryDevilFruit = r[3].HumanoidRootPart.Position;
											if r[3].Health.Value > 0 then
												Q[2]:SendKeyEvent(true, "Z", false, game);
												wait(.5);
												Q[2]:SendKeyEvent(false, "Z", false, game);
												wait(.2);
											end;
										elseif Q[35].PlayerGui.Main.Skills:FindFirstChild("Fishman Karate") and (tostring(Q[35].PlayerGui.Main.Skills["Fishman Karate"].X.Title.TextColor) == "Institutional white" and Q[35].PlayerGui.Main.Skills["Fishman Karate"].X.Cooldown.AbsoluteSize.X == 0) then
											Q[45].Equip("Fishman Karate");
											Q[31](r[3].HumanoidRootPart.CFrame * CFrame.new(0, 3, 0), 1.5);
											wait(.5);
											PositionSkillMasteryDevilFruit = r[3].HumanoidRootPart.Position;
											if r[3].Health.Value > 0 then
												Q[2]:SendKeyEvent(true, "X", false, game);
												wait(.5);
												Q[2]:SendKeyEvent(false, "X", false, game);
												wait(.2);
											end;
										elseif Q[35].PlayerGui.Main.Skills:FindFirstChild("Fishman Karate") and (tostring(Q[35].PlayerGui.Main.Skills["Fishman Karate"].C.Title.TextColor) == "Institutional white" and Q[35].PlayerGui.Main.Skills["Fishman Karate"].C.Cooldown.AbsoluteSize.X == 0) then
											Q[45].Equip("Fishman Karate");
											Q[31](r[3].HumanoidRootPart.CFrame * CFrame.new(0, 3, 0), 1.5);
											wait(.5);
											PositionSkillMasteryDevilFruit = r[3].HumanoidRootPart.Position;
											if r[3].Health.Value > 0 then
												Q[2]:SendKeyEvent(true, "C", false, game);
												wait(.5);
												Q[2]:SendKeyEvent(false, "C", false, game);
												wait(.2);
											end;
										end;
									until not r[3].Parent or r[3].Health.Value <= 0 or not (getgenv()).AutoFarm;
									Tejao = false;
									Q[7].Remotes.CommF_:InvokeServer("Wenlocktoad", "3");
									wait(1);
								end;
							end;
							if not C[1] then
								for h, y in pairs(Q[19].Boats:GetChildren()) do
									local r = {};
									r[3], r[1] = h, y;
									if r[1].Name == "Dinghy" and tostring(r[1].Owner.Value) == Q[35].Name then
										C[3] = true;
										if (Vector3.new(3017.2006835938, -4.25, -2686.3325195312) - r[1].VehicleSeat.Position).Magnitude >= 30 then
											if Q[35].Character.Humanoid.Sit then
												Boat = "Bit";
												TPBoat(CFrame.new(1550, -4.25, -2759), r[1].VehicleSeat, 200);
											elseif (Q[35].Character.HumanoidRootPart.Position - r[1].VehicleSeat.Position).Magnitude >= 10 then
												Boat = nil;
												Q[31](r[1].VehicleSeat.CFrame, 1.5);
											else
												Boat = "Bit";
												Q[35].Character.HumanoidRootPart.CFrame = r[1].VehicleSeat.CFrame * CFrame.new(0, 1, 0);
												wait(3);
											end;
										else
											if Q[35].Character.Humanoid.Sit then
												vu:Button1Down(Vector2.new(1280, 600));
												wait(1);
											elseif (Q[35].Character.HumanoidRootPart.Position - r[1].VehicleSeat.Position).Magnitude >= 10 then
												Boat = nil;
												Q[31](r[1].VehicleSeat.CFramem, 1.5);
											else
												Boat = "Bit";
												Q[35].Character.HumanoidRootPart.CFrame = r[1].VehicleSeat.CFrame * CFrame.new(0, 1, 0);
												wait(3);
											end;
										end;
									end;
								end;
							end;
							if not C[3] and not C[1] then
								Q[31](CFrame.new(-1935, 6, -2564), 1.5);
								if (Vector3.new(-1935, 6, -2564) - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 3 then
									Q[7].Remotes.CommF_:InvokeServer("BuyBoat", "Dinghy");
									wait(1);
									Boat = "bit";
								end;
							end;
						else
							Q[7].Remotes.CommF_:InvokeServer("Wenlocktoad", "1");
							wait(1);
							Q[7].Remotes.CommF_:InvokeServer("Wenlocktoad", "2");
							if Q[7].Remotes.CommF_:InvokeServer("Wenlocktoad", "1") == 1 or Q[7].Remotes.CommF_:InvokeServer("Wenlocktoad", "1") == 2 then
								Quest_Start_Evo_Fishman_V3 = true;
							end;
						end;
					end;
				else
					Q[7].Remotes.CommF_:InvokeServer("TravelDressrosa");
				end;
			elseif Quest == "Don Swan" then
				repeat
					Q[45].wt();
					if Q[45].ffc(Q[40], "Don Swan") then
						for C, h in pairs(Q[40]:GetChildren()) do
							local y = {};
							y[1], y[2] = C, h;
							if y[2].Name == "Don Swan" and y[2].Humanoid.Health > 0 then
								repeat
									Q[45].wt();
									Q[31](y[2].HumanoidRootPart.CFrame * CFrame.new(0, 40, 0), 1.5);
									if not Q[45].ffc(Q[35].Character, "HasBuso") then
										Q[7].Remotes.CommF_:InvokeServer("Buso");
									end;
									Q[14]();
								until not y[2].Parent or y[2].Humanoid.Health <= 0 or not (getgenv()).AutoFarm or not Q[45].CheckBoss("Don Swan");
							end;
						end;
					elseif Q[45].ffc(Q[7], "Don Swan") then
						for C, h in pairs(Q[7]:GetChildren()) do
							local y = {};
							y[3], y[1] = C, h;
							if y[1].Name == "Don Swan" and y[1].Humanoid.Health > 0 then
								repeat
									Q[45].wt();
									Q[31](y[1].HumanoidRootPart.CFrame * CFrame.new(0, 40, 0), 1.5);
									if not Q[45].ffc(Q[35].Character, "HasBuso") then
										Q[7].Remotes.CommF_:InvokeServer("Buso");
									end;
									Q[14]();
								until not y[1].Parent or y[1].Humanoid.Health <= 0 or not (getgenv()).AutoFarm or not Q[45].CheckBoss("Don Swan");
							end;
						end;
					else
						Q[45].HopLowServer(3);
						Q[45].wt(.2);
						Q[35]:Kick("Hop");
						Q[45].wt(.1);
						Q[10]:Teleport(Q[30], Q[35]);
					end;
				until not Q[45].CheckBoss("Don Swan");
			elseif Quest == "TravelZou" then
				if Q[7].Remotes.CommF_:InvokeServer("ZQuestProgress", "Check") == 1 then
					Q[7].Remotes.CommF_:InvokeServer("TravelZou");
				end;
				if Kill_Don then
					if Q[45].ffc(Q[40], "rip_indra") then
						for C, h in pairs(Q[40]:GetChildren()) do
							local y = {};
							y[1], y[3] = C, h;
							if y[3].Name == "rip_indra" and y[3].Humanoid.Health > 0 then
								if Q[45].ffc(y[3].Humanoid, "Animator") then
									y[3].Humanoid.Animator:Destroy();
								end;
								repeat
									Q[45].wt(.1);
									Q[14]();
									Q[31](y[3].HumanoidRootPart.CFrame * CFrame.new(0, 30, 0), 1.5);
								until y[3].Humanoid.Health <= 0 or not y[3].Parent or Q[7].Remotes.CommF_:InvokeServer("ZQuestProgress", "Check") == 1;
								if Q[7].Remotes.CommF_:InvokeServer("ZQuestProgress", "Check") == 1 then
									Q[7].Remotes.CommF_:InvokeServer("TravelZou");
									TleP = true;
									Q[45].wt(30);
								end;
							end;
						end;
					elseif Q[7].Remotes.CommF_:InvokeServer("ZQuestProgress", "Check") == 1 then
						Q[7].Remotes.CommF_:InvokeServer("TravelZou");
						TleP = true;
						Q[45].wt(30);
					elseif not (game:GetService("Workspace")).Enemies:FindFirstChild("rip_indra") then
						Q[7].Remotes.CommF_:InvokeServer("ZQuestProgress", "Check");
						Q[7].Remotes.CommF_:InvokeServer("ZQuestProgress", "Begin");
						Q[45].wt(3);
					end;
				elseif not okokok then
					Q[7].Remotes.CommF_:InvokeServer("ZQuestProgress", "Check");
					Q[7].Remotes.CommF_:InvokeServer("ZQuestProgress", "Begin");
					Q[45].wt(3);
					for Q, C in pairs(Q[40]:GetChildren()) do
						local h = {};
						h[1], h[3] = Q, C;
						if h[3].Name == "rip_indra" then
							Kill_Don = true;
						end;
					end;
					okokok = true;
				else
					Q[14]();
					Quest = nil;
					Q[45].Status(Q[3]({ " Status : Auto Farm ", "Level" }));
					Q[39]();
				end;
			elseif Quest == "Yama" then
				if (Q[19].Map.Waterfall.SealedKatana.Hitbox.Position - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 300 then
					if Q[45].ffc(Q[40], "Ghost") then
						for C, h in pairs(Q[40]:GetChildren()) do
							local y = {};
							y[2], y[3] = C, h;
							if y[3].Name == "Ghost" and y[3].Humanoid.Health > 0 then
								if Q[45].ffc(y[3].Humanoid, "Animator") then
									y[3].Humanoid.Animator:Destroy();
								end;
								repeat
									wait(.1);
									Q[14]();
									y[3].HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									Q[31](y[3].HumanoidRootPart.CFrame * CFrame.new(0, 15, 0), 1.5);
									Q[33]:Button1Down(Vector2.new(1280, 600));
								until not y[3].Parent or y[3].Humanoid.Health <= 0;
							end;
						end;
					elseif Q[45].ffc(Q[7], "Ghost") then
						Q[31]((Q[7]:FindFirstChild("Ghost")).HumanoidRootPart.CFrame, 1.5);
					elseif not Q[45].ffc(Q[40], "Ghost") and not Q[45].ffc(Q[7], "Ghost") then
						Q[31](Q[19].Map.Waterfall.SealedKatana.Hitbox.CFrame, 1.5);
						for C, h in pairs(Q[35].Character:GetChildren()) do
							local y = {};
							y[2], y[3] = C, h;
							if y[3]:IsA("Tool") then
								y[3].Parent = Q[35].Backpack;
							end;
						end;
						fireclickdetector(Q[19].Map.Waterfall.SealedKatana.Hitbox.ClickDetector, 1);
					end;
				else
					Q[31](Q[19].Map.Waterfall.SealedKatana.Hitbox.CFrame, 1.5);
				end;
			elseif Quest == "Quest Electric Claw" then
				if Q[7].Remotes.CommF_:InvokeServer("BuyElectricClaw", true) == "Nah." or Q[7].Remotes.CommF_:InvokeServer("BuyElectricClaw", true) == 4 then
					Q[7].Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
					Q[35].Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481);
				elseif Q[7].Remotes.CommF_:InvokeServer("BuyElectricClaw", true) == 3 or Q[7].Remotes.CommF_:InvokeServer("BuyElectricClaw", true) == 0 then
					Electric_Claw_C = true;
				end;
			elseif Quest == "Venom Bow" then
				if not Q[45].CheckBoss("Hydra Leader") then
					return;
				end;
				repeat
					Q[45].wt();
					if Q[45].ffc(Q[40], "Hydra Leader") then
						for C, h in pairs(Q[40]:GetChildren()) do
							local y = {};
							y[2], y[1] = C, h;
							if y[1].Name == "Hydra Leader" and y[1].Humanoid.Health > 0 then
								repeat
									Q[45].wt();
									Q[31](y[1].HumanoidRootPart.CFrame * CFrame.new(0, 40, 0), 1.5);
									if not Q[45].ffc(Q[35].Character, "HasBuso") then
										Q[7].Remotes.CommF_:InvokeServer("Buso");
									end;
									Q[14]();
								until not y[1].Parent or y[1].Humanoid.Health <= 0 or not (getgenv()).AutoFarm or not Q[45].CheckBoss("Hydra Leader");
							end;
						end;
					elseif Q[45].ffc(Q[7], "Hydra Leader") then
						for C, h in pairs(Q[7]:GetChildren()) do
							local y = {};
							y[1], y[2] = C, h;
							if y[2].Name == "Hydra Leader" and y[2].Humanoid.Health > 0 then
								repeat
									Q[45].wt();
									Q[31](y[2].HumanoidRootPart.CFrame * CFrame.new(0, 40, 0), 1.5);
									if not Q[45].ffc(Q[35].Character, "HasBuso") then
										Q[7].Remotes.CommF_:InvokeServer("Buso");
									end;
									Q[14]();
								until not y[2].Parent or y[2].Humanoid.Health <= 0 or not (getgenv()).AutoFarm or not Q[45].CheckBoss("Hydra Leader");
							end;
						end;
					end;
				until not Q[45].CheckBoss("Hydra Leader");
			elseif Quest == "Godhuman" then
				if Q[45].CheckItem("Fish Tail") >= 20 and (Q[45].CheckItem("Magma Ore") >= 20 and (Q[45].CheckItem("Mystic Droplet") >= 10 and Q[45].CheckItem("Dragon Scale") >= 10)) then
					Q[7].Remotes.CommF_:InvokeServer("BuyGodhuman", true);
					Godhuman = true;
				elseif Q[45].CheckItem("Fish Tail") < 20 or Q[45].CheckItem("Magma Ore") < 20 or Q[45].CheckItem("Mystic Droplet") < 10 or Q[45].CheckItem("Dragon Scale") < 10 then
					local C = {};
					C[5] = nil;
					C[4] = nil;
					C[3] = nil;
					C[2] = nil;
					if Q[45].CheckItem("Fish Tail") < 20 then
						C[5] = "Fishman Warrior";
						C[4] = "Fishman Commando";
						C[3] = CFrame.new(60946.6094, 65.6735229, 1525.91687);
						C[2] = CFrame.new(61902.7383, 32.4828358, 1478.33936);
						if ((CFrame.new(61164, 12, 1820)).Position - Q[35].Character.HumanoidRootPart.Position).Magnitude >= 2000 then
							Q[35].Character.HumanoidRootPart.CFrame = CFrame.new(61164, 12, 1820);
						end;
						if not Old_World then
							Q[7].Remotes.CommF_:InvokeServer("TravelMain");
							TleP = true;
							Q[45].wt(50);
						end;
					elseif Q[45].CheckItem("Magma Ore") < 20 then
						C[5] = "Magma Ninja";
						C[4] = "Lava Pirate";
						C[3] = CFrame.new(-5466.06445, 77.6952019, -5837.42822);
						C[2] = CFrame.new(-5169.71729, 54.1234779, -4669.73633);
						if not New_World then
							Q[7].Remotes.CommF_:InvokeServer("TravelDressrosa");
							TleP = true;
							Q[45].wt(50);
						end;
					elseif Q[45].CheckItem("Mystic Droplet") < 10 then
						C[5] = "Sea Soldier";
						C[4] = "Water Fighter";
						C[3] = CFrame.new(-3115.78223, 63.8785706, -9808.38574);
						C[2] = CFrame.new(-3212.99683, 263.809296, -10551.8799);
						if not New_World then
							Q[7].Remotes.CommF_:InvokeServer("TravelDressrosa");
							TleP = true;
							Q[45].wt(50);
						end;
					elseif Q[45].CheckItem("Dragon Scale") < 10 then
						C[5] = "Dragon Crew Warrior";
						C[4] = "Dragon Crew Archer";
						C[3] = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516);
						C[2] = CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715);
						if not Three_World then
							Q[7].Remotes.CommF_:InvokeServer("TravelZou");
							TleP = true;
							Q[45].wt(50);
						end;
					end;
					if C[5] ~= nil then
						repeat
							Q[45].wt();
							Q[31](C[3]);
						until (C[3].Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3;
						if Q[45].ffc(Q[40], C[5]) then
							for h, y in pairs(game.Workspace.Enemies:GetChildren()) do
								local r = {};
								r[2], r[3] = h, y;
								if r[3].Name == C[5] and r[3].Humanoid.Health > 0 then
									StatrMagnet = true;
									repeat
										Q[45].wt();
										Q[31](r[3].HumanoidRootPart.CFrame * CFrame.new(0, 20, 0), 1.5);
										Q[14]();
										Q[45].BN(r[3].Name);
									until not r[3].Parent or r[3].Humanoid.Health <= 0;
									StatrMagnet = false;
								end;
							end;
						end;
					end;
					if C[4] ~= nil then
						repeat
							Q[45].wt();
							Q[31](C[2], 1.5);
						until (C[2].Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3;
						if game.Workspace.Enemies:FindFirstChild(C[4]) then
							for h, y in pairs(game.Workspace.Enemies:GetChildren()) do
								local r = {};
								r[2], r[3] = h, y;
								if r[3].Name == C[4] and r[3].Humanoid.Health > 0 then
									StatrMagnet = true;
									repeat
										Q[45].wt();
										Q[31](r[3].HumanoidRootPart.CFrame * CFrame.new(0, 20, 0), 1.5);
										Q[14]();
										Q[45].BN(r[3].Name);
									until not r[3].Parent or r[3].Humanoid.Health <= 0;
									StatrMagnet = false;
								end;
							end;
						end;
					end;
				end;
			elseif Quest == "Longma" then
				repeat
					Q[45].wt();
					if Q[45].ffc(Q[40], "Longma") then
						for C, h in pairs(Q[40]:GetChildren()) do
							local y = {};
							y[3], y[2] = C, h;
							if y[2].Name == "Longma" and y[2].Humanoid.Health > 0 then
								repeat
									Q[45].wt();
									Q[31](y[2].HumanoidRootPart.CFrame * CFrame.new(0, 40, 0), 1.5);
									if not Q[45].ffc(Q[35].Character, "HasBuso") then
										Q[7].Remotes.CommF_:InvokeServer("Buso");
									end;
									Q[14]();
								until not y[2].Parent or y[2].Humanoid.Health <= 0 or not (getgenv()).AutoFarm or not Q[45].CheckBoss("Longma");
							end;
						end;
					elseif Q[45].ffc(Q[7], "Longma") then
						for C, h in pairs(Q[7]:GetChildren()) do
							local y = {};
							y[2], y[3] = C, h;
							if y[3].Name == "Longma" and y[3].Humanoid.Health > 0 then
								repeat
									Q[45].wt();
									Q[31](y[3].HumanoidRootPart.CFrame * CFrame.new(0, 40, 0), 1.5);
									if not Q[45].ffc(Q[35].Character, "HasBuso") then
										Q[7].Remotes.CommF_:InvokeServer("Buso");
									end;
									Q[14]();
								until not y[3].Parent or y[3].Humanoid.Health <= 0 or not (getgenv()).AutoFarm or not Q[45].CheckBoss("Longma");
							end;
						end;
					else
						Q[45].HopLowServer(3);
						Q[45].wt(.2);
						Q[35]:Kick("Hop");
						Q[45].wt(.1);
						Q[10]:Teleport(Q[30], Q[35]);
					end;
				until not Q[45].CheckBoss("Longma");
			elseif Quest == "Soul Guitar" then
				if Q[45].CheckItem("Bones") < 500 then
					if Three_World then
						Q[45].FarmBone(false);
					else
						Q[7].Remotes.CommF_:InvokeServer("TravelZou");
						TleP = true;
						wait(50);
					end;
				elseif Q[45].CheckItem("Ectoplasm") < 250 then
					if New_World then
						if (Q[35].Character.HumanoidRootPart.Position - Vector3.new(921.30249023438, 125.400390625, 32937.34375)).Magnitude >= 3000 then
							repeat
								Q[45].wt();
								Q[31](CFrame.new(921.30249023438, 125.400390625, 32937.34375), 1.5);
							until (Q[35].Character.HumanoidRootPart.Position - Vector3.new(921.30249023438, 125.400390625, 32937.34375)).Magnitude <= 3;
						elseif (Q[35].Character.HumanoidRootPart.Position - Vector3.new(921.30249023438, 125.400390625, 32937.34375)).Magnitude < 3000 then
							Monster = nil;
							for C = 1500, 0, -300 do
								local h = {};
								h[2] = C;
								Q[45].GetMonster(h[2]);
							end;
							if Monster ~= nil and Monster.Humanoid.Health > 0 then
								PosMon_X = Monster.HumanoidRootPart.CFrame;
								StatrMagnet = true;
								repeat
									wait();
									Q[31](Monster.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0), 1.5);
									Q[14]();
								until not Monster.Parent or Monster.Humanoid.Health <= 0;
								StatrMagnet = false;
							elseif Monster == nil then
								for C = 1500, 0, -300 do
									local h = {};
									h[2] = C;
									Q[45].GetMonster(h[2]);
								end;
								if Monster == nil then
									Q[31](CFrame.new(921.30249023438, 125.400390625, 32937.34375), 1.5);
								end;
							end;
						end;
					else
						Q[7].Remotes.CommF_:InvokeServer("TravelDressrosa");
						TleP = true;
						wait(50);
					end;
				elseif not Three_World then
					Q[7].Remotes.CommF_:InvokeServer("TravelZou");
					TleP = true;
					wait(50);
				else
					if tostring((game:GetService("Workspace")).Map["Haunted Castle"].SwampWater.BrickColor) == "Maroon" then
						if Q[7].Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Check") ~= nil and (Q[7].Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Check")).Swamp == false then
							repeat
								wait();
								Q[31](CFrame.new(-10147.779296875, 138.6266784668, 5939.5600585938), 1.5);
							until (Vector3.new(-10147.779296875, 138.6266784668, 5939.5600585938) - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 3;
							wait(1);
							get_mon = {};
							Q[45].GetMon_Soul();
							if #get_mon >= 6 then
								for C, h in pairs(Q[35].Character:GetChildren()) do
									local y = {};
									y[3], y[2] = C, h;
									if y[2]:IsA("Tool") then
										y[2].Parent = Q[35].Backpack;
									end;
								end;
								Q[31](CFrame.new(-10147.779296875, 158.6266784668, 5939.5600585938), 1.5);
								for C, h in next, (game:GetService("Workspace")).Enemies:GetChildren() do
									local y = {};
									y[2], y[1] = C, h;
									if (y[1].HumanoidRootPart.Position - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 500 then
										y[1].HumanoidRootPart.CFrame = Q[35].Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 20);
										sethiddenproperty(Q[35], "SimulationRadius", math.huge);
									end;
								end;
								wait(1);
								Q[14]();
								wait(2);
							end;
						end;
					elseif Q[7].Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Check") ~= nil then
						local C = {};
						C[2] = Q[7].Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Check");
						if not Quest_Soul_Guitar then
							repeat
								wait(.1);
								Q[31](CFrame.new(-9680.7412109375, 6.1591067314148, 6346.1552734375), 1.5);
							until (Vector3.new(-9680.7412109375, 6.1591067314148, 6346.1552734375) - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 5;
							wait(1);
							for C, h in pairs(Q[7].Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Check")) do
								local y = {};
								y[3], y[1] = C, h;
								if y[1] == false then
									Q[7].Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", y[3]);
								end;
							end;
							wait(2);
							for C, h in pairs(Q[7].Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Check")) do
								local y = {};
								y[3], y[1] = C, h;
								if y[1] == false then
									Q[7].Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", y[3]);
								end;
							end;
							wait(1);
							Quest_Soul_Guitar = true;
						end;
					elseif tostring((game:GetService("Workspace")).Map["Haunted Castle"].SwampWater.BrickColor) ~= "Maroon" then
						if Q[7].Remotes.CommF_:InvokeServer("gravestoneEvent", 2) == true then
							Q[7].Remotes.CommF_:InvokeServer("gravestoneEvent", 2, true);
						else
							Q[31](CFrame.new(-8652.6416015625, 141.10939025879, 6168.810546875), 1.5);
						end;
					end;
				end;
			elseif Quest == "RGB" then
				local C = {};
				C[1] = nil;
				if Q[7].Remotes.CommF_:InvokeServer("HornedMan", "Bet") == nil then
					if Q[35].PlayerGui.Main.Quest.Visible then
						local h = {};
						h[1] = (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
						if string.find(h[1], "Stone") then
							if Q[45].ffc(Q[40], "Stone") or Q[45].ffc(Q[7], "Stone") then
								C[1] = "Stone";
							end;
						end;
						if string.find(h[1], "Hydra Leader") then
							if Q[45].ffc(Q[40], "Hydra Leader") or Q[45].ffc(Q[7], "Hydra Leader") then
								C[1] = "Hydra Leader";
							end;
						end;
						if string.find(h[1], "Kilo Admiral") then
							if Q[45].ffc(Q[40], "Kilo Admiral") or Q[45].ffc(Q[7], "Kilo Admiral") then
								C[1] = "Kilo Admiral";
							end;
						end;
						if string.find(h[1], "Captain Elephant") then
							if Q[45].ffc(Q[40], "Captain Elephant") or Q[45].ffc(Q[7], "Captain Elephant") then
								C[1] = "Captain Elephant";
							end;
						end;
						if string.find(h[1], "Beautiful Pirate") then
							if Q[45].ffc(Q[40], "Beautiful Pirate") or Q[45].ffc(Q[7], "Beautiful Pirate") then
								C[1] = "Beautiful Pirate";
							end;
						end;
						if C[1] ~= nil then
							if Q[45].ffc(Q[40], C[1]) then
								for h, y in pairs(Q[40]:GetChildren()) do
									local r = {};
									r[2], r[3] = h, y;
									if r[3].Name == C[1] and r[3].Humanoid.Health > 0 then
										repeat
											Q[45].wt();
											Q[31](r[3].HumanoidRootPart.CFrame * CFrame.new(0, 40, 0), 1.5);
											if not Q[45].ffc(Q[35].Character, "HasBuso") then
												Q[7].Remotes.CommF_:InvokeServer("Buso");
											end;
											Q[14]();
										until not r[3].Parent or r[3].Humanoid.Health <= 0 or not (getgenv()).AutoFarm;
									end;
								end;
							elseif Q[45].ffc(Q[7], C[1]) then
								for h, y in pairs(Q[7]:GetChildren()) do
									local r = {};
									r[3], r[1] = h, y;
									if r[1].Name == C[1] and r[1].Humanoid.Health > 0 then
										repeat
											Q[45].wt();
											Q[31](r[1].HumanoidRootPart.CFrame * CFrame.new(0, 40, 0), 1.5);
											if not Q[45].ffc(Q[35].Character, "HasBuso") then
												Q[7].Remotes.CommF_:InvokeServer("Buso");
											end;
											Q[14]();
										until not r[1].Parent or r[1].Humanoid.Health <= 0 or not (getgenv()).AutoFarm;
									end;
								end;
							end;
						else
							if Q[7].Remotes.CommF_:InvokeServer("HornedMan", "Bet") == 1 then
								return;
							else
								Q[35]:Kick("Hop");
								Q[45].wt(.1);
								Q[10]:Teleport(Q[30], Q[35]);
							end;
						end;
					end;
				elseif Q[7].Remotes.CommF_:InvokeServer("HornedMan", "Bet") == 1 then
					return;
				end;
			elseif Quest == "Pull Lerver" then
				if not ExSeb then
					if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("RaceV4Progress", "Check") == 1 then
						local Q = {};
						Q[1] = { [1] = "RaceV4Progress", [2] = "Check" };
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(Q[1]));
						Q[3] = { [1] = "RaceV4Progress", [2] = "Begin" };
						(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer(unpack(Q[3]));
					elseif (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("RaceV4Progress", "Check") == 2 then
						local Q = {};
						Q[1] = { [1] = "RaceV4Progress", [2] = "Check" };
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(Q[1]));
						repeat
							local Q = {};
							wait();
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2959.87231, 2282.42139, -7216.23193);
							Q[1] = { [1] = "RaceV4Progress", [2] = "Teleport" };
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(Q[1]));
						until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(28286.35546875, 14896.5078125, 102.62469482422)).Magnitude <= 15;
					elseif (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("RaceV4Progress", "Check") == 3 then
						ExSeb = true;
						if not ujihfdg then
							local Q = {};
							Q[3] = { [1] = "RaceV4Progress", [2] = "Check" };
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(Q[3]));
							wait(1);
							Q[2] = { [1] = "RaceV4Progress", [2] = "Continue" };
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(Q[2]));
							ujihfdg = true;
						end;
					elseif (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("RaceV4Progress", "Check") == 4 then
						ExSeb = true;
					end;
				else
					if (game:GetService("Workspace")).Map:FindFirstChild("MysticIsland") then
						if Q[35].Character.Humanoid.Sit == true then
							Q[35].Character.Humanoid.Sit = false;
							wait(.5);
							Q[35].Character.HumanoidRootPart.CFrame = Q[35].Character.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0);
							wait(1);
						else
							local C = {};
							C[1] = ((game:GetService("Workspace")).Map:FindFirstChild("MysticIsland")).WorldPivot * CFrame.new(0, 500, 0);
							if (C[1].Position - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 25 then
								task.spawn(function()
									repeat
										wait(.2);
										Q[19].CurrentCamera.CFrame = CFrame.lookAt(Q[19].CurrentCamera.CFrame.Position, Q[16]:GetMoonDirection() + Q[19].CurrentCamera.CFrame.Position);
									until StopCamera or not (game:GetService("Workspace")).Map:FindFirstChild("MysticIsland") or Q[7].Remotes.CommF_:InvokeServer("CheckTempleDoor");
								end);
								((Q[7]:WaitForChild("Remotes")):WaitForChild("CommE")):FireServer("ActivateAbility");
								wait(17);
								for C, h in pairs((game:GetService("Workspace")).Map.MysticIsland:GetChildren()) do
									local y = {};
									y[3], y[1] = C, h;
									if y[1].ClassName == "MeshPart" and (y[1].Name == "Part" and y[1].Transparency == 0) then
										repeat
											wait(.2);
											StopCamera = true;
											Q[31](y[1].CFrame, 1.5);
											wait(.5);
											Q[2]:SendKeyEvent(true, "Space", false, game);
											wait(.5);
											Q[2]:SendKeyEvent(false, "Space", false, game);
										until y[1].Transparency == 1 or not (game:GetService("Workspace")).Map:FindFirstChild("MysticIsland") or Q[7].Remotes.CommF_:InvokeServer("CheckTempleDoor");
										wait(.5);
									end;
								end;
							else
								Q[31](C[1], 1.5);
							end;
						end;
					end;
				end;
			elseif Quest == "Cursed Dual Katana" then
				if Q[7].Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor") == "opened" then
					local C = {};
					C[2] = Q[7].Remotes.CommF_:InvokeServer("CDKQuest", "Progress");
					if C[2].Good == 0 or C[2].Good == -3 then
						CDK_Q_S_C = 3;
						if C[2].Good == 0 then
							Q[45].GetQuest("Good");
						elseif C[2].Good == -3 then
							repeat
								wait();
								Q[31](CFrame.new(-4600.37, 15.1245, -2881.18), 1.5);
								if (Q[35].Character.HumanoidRootPart.Position - Vector3.new(-4600.37, 15.1245, -2881.18)).Magnitude <= 3 then
									wait(1);
									Q[7].Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", Q[25].NPCs:FindFirstChild("Luxury Boat Dealer"), "Check");
									Q[7].Remotes.CommF_:InvokeServer("GetUnlockables");
									Q[7].Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", Q[25].NPCs:FindFirstChild("Luxury Boat Dealer"));
									wait(.5);
									Q_Boat_1 = true;
								end;
							until Q_Boat_1;
							repeat
								wait();
								Q[31](CFrame.new(-2068.63, 3.37222, -9887.08), 1.5);
								if (Q[35].Character.HumanoidRootPart.Position - Vector3.new(-2068.63, 3.37222, -9887.08)).Magnitude <= 3 then
									wait(1);
									Q[7].Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", Q[25].NPCs:FindFirstChild("Luxury Boat Dealer"), "Check");
									Q[7].Remotes.CommF_:InvokeServer("GetUnlockables");
									Q[7].Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", Q[25].NPCs:FindFirstChild("Luxury Boat Dealer"));
									wait(.5);
									Q_Boat_2 = true;
								end;
							until Q_Boat_2;
							repeat
								wait();
								Q[31](CFrame.new(-9531.19, 5.91675, -8377.75), 1.5);
								if (Q[35].Character.HumanoidRootPart.Position - Vector3.new(-9531.19, 5.91675, -8377.75)).Magnitude <= 3 then
									wait(1);
									Q[7].Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", Q[25].NPCs:FindFirstChild("Luxury Boat Dealer"), "Check");
									Q[7].Remotes.CommF_:InvokeServer("GetUnlockables");
									Q[7].Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", Q[25].NPCs:FindFirstChild("Luxury Boat Dealer"));
									wait(.5);
									Q_Boat_3 = true;
								end;
							until Q_Boat_3;
							Q_Boat_1 = false;
							Q_Boat_2 = false;
							Q_Boat_3 = false;
						end;
					elseif C[2].Evil == 0 or C[2].Evil == -3 then
						CDK_Q_S_C = 4;
						if C[2].Evil == 0 then
							Q[45].GetQuest("Evil");
						elseif C[2].Evil == -3 then
							Stop_Fast_Attack = true;
							for C, h in pairs(Q[40]:GetChildren()) do
								local y = {};
								y[2], y[3] = C, h;
								if y[3]:FindFirstChild("HumanoidRootPart") and (y[3].HumanoidRootPart.Position - Vector3.new(-13347.6982, 332.378143, -7652.27783)).Magnitude > 10 then
									y[3].HumanoidRootPart.CFrame = CFrame.new(-13347.6982, 332.378143, -7652.27783);
									sethiddenproperty(Q[35], "SimulationRadius", math.huge);
								end;
							end;
							Q[31](CFrame.new(-13347.6982, 332.378143, -7652.27783, -0.97929436, 4.50812898e-008, -0.202441484, 4.58302409e-008, 1, 9.8789521e-010, .202441484, -8.31050162e-009, -0.97929436), 1.5);
						end;
					elseif C[2].Evil == 1 or C[2].Evil == -4 then
						Stop_Fast_Attack = false;
						CDK_Q_S_C = 5;
						if C[2].Evil == 1 then
							Q[45].GetQuest("Evil");
						elseif C[2].Evil == -4 then
							if Q[45].ffc(Q[35], "QuestHaze") then
								if Quest_Kill == nil then
									for Q, C in pairs(Q[35].QuestHaze:GetChildren()) do
										local h = {};
										h[2], h[1] = Q, C;
										if tonumber(h[1].Value) > 0 and Quest_Kill == nil then
											SelectMonster = h[1].Name;
											CFrameMon = nil;
											CheckLevel2();
											if CFrameMon ~= nil then
												Quest_Kill = h[1].Name;
											end;
										end;
									end;
								elseif Q[45].ffc(Q[35].QuestHaze, Quest_Kill) and tonumber((Q[35].QuestHaze:FindFirstChild(Quest_Kill)).Value) <= 0 then
									Quest_Kill = nil;
								elseif Q[45].ffc(Q[35].QuestHaze, Quest_Kill) and tonumber((Q[35].QuestHaze:FindFirstChild(Quest_Kill)).Value) > 0 then
									for C, h in pairs(Q[40]:GetChildren()) do
										local y = {};
										y[1], y[2] = C, h;
										if y[2]:FindFirstChild("Humanoid") and (y[2].Humanoid.Health > 0 and y[2]:FindFirstChild("HazeESP")) then
											repeat
												wait(.1);
												Q[31](y[2].HumanoidRootPart.CFrame * CFrame.new(0, 25, 0), 1.5);
												Q[14]();
											until not y[2].Parent or y[2].Humanoid.Health <= 0;
										end;
									end;
									Q[31](CFrameMon, 1.5);
								else
									Quest_Kill = nil;
								end;
							end;
						end;
					elseif C[2].Good == 1 or C[2].Good == -4 then
						CDK_Q_S_C = 6;
						if C[2].Good == 1 then
							Q[45].GetQuest("Good");
						elseif C[2].Good == -4 then
							Q[31](CFrame.new(-5543.0805664062, 313.76550292969, -2969.4846191406), 1.5);
							if (Vector3.new(-5543.0805664062, 313.76550292969, -2969.4846191406) - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 1500 then
								for C, h in pairs(Q[40]:GetChildren()) do
									local y = {};
									y[3], y[1] = C, h;
									if y[1]:FindFirstChild("Humanoid") and (y[1].Humanoid.Health > 0 and (y[1].HumanoidRootPart.Position - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 1500) then
										repeat
											wait(.3);
											Q[14]();
											Q[31](y[1].HumanoidRootPart.CFrame * CFrame.new(0, 30, 0), 1.5);
										until not y[1].Parent or y[1].Humanoid.Health <= 0;
									end;
								end;
							end;
						end;
					elseif C[2].Good == 2 or C[2].Good == -5 then
						CDK_Q_S_C = 7;
						if C[2].Good == 2 then
							Q[45].GetQuest("Good");
						elseif C[2].Good == -5 then
							if not Kill_Boss_Cake then
								if Q[45].ffc(Q[40], "Cake Queen") then
									for C, h in pairs(Q[40]:GetChildren()) do
										local y = {};
										y[3], y[2] = C, h;
										if y[2].Name == "Cake Queen" and (y[2].Humanoid.Health > 0 and not Kill_Boss_Cake) then
											repeat
												wait(.3);
												if Q[45].ffc(y[2], "HumanoidRootPart") then
													Q[31](y[2].HumanoidRootPart.CFrame * CFrame.new(0, 30, 0), 1.5);
													Q[14]();
												else
													break;
												end;
											until not y[2].Parent or y[2].Humanoid.Health <= 0;
											Kill_Boss_Cake = true;
											wait(1);
										end;
									end;
								else
									Q[31](CFrame.new(-714.643066, 381.565613, -11021.0566), 1.5);
								end;
							else
								if Q[19].Map:FindFirstChild("HeavenlyDimension") then
									if not Ceyma_HeavenlyDimension then
										repeat
											wait(.1);
											Q[31]((Q[19].Map:FindFirstChild("HeavenlyDimension")).WorldPivot, 1.5);
										until ((Q[19].Map:FindFirstChild("HeavenlyDimension")).WorldPivot.Position - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 5;
										wait(1);
										Ceyma_HeavenlyDimension = true;
									elseif Ceyma_HeavenlyDimension then
										Q[14]();
										if Q[40]:FindFirstChildOfClass("Model") then
											for C, h in pairs(Q[40]:GetChildren()) do
												local y = {};
												y[3], y[2] = C, h;
												if y[2]:FindFirstChild("HumanoidRootPart") and (y[2]:FindFirstChild("Humanoid") and ((Q[19].Map:FindFirstChild("HeavenlyDimension")).WorldPivot.Position - y[2].HumanoidRootPart.Position).Magnitude <= 1000) then
													if y[2].Humanoid.Health > 0 then
														repeat
															wait();
															Q[31](y[2].HumanoidRootPart.CFrame * CFrame.new(0, 30, 0), 1.5);
															Q[14]();
														until not y[2].Parent or y[2].Humanoid.Health <= 0;
													end;
												end;
											end;
										elseif not Q[40]:FindFirstChildOfClass("Model") then
											Q[45].GetTorch("Torch1");
											if not Q[40]:FindFirstChildOfClass("Model") then
												Q[45].GetTorch("Torch2");
												if not Q[40]:FindFirstChildOfClass("Model") then
													Q[45].GetTorch("Torch3");
													if not Q[40]:FindFirstChildOfClass("Model") and Q[19].Map:FindFirstChild("HeavenlyDimension") then
														Q[19].Map.HeavenlyDimension.Exit.CFrame = Q[35].Character.HumanoidRootPart.CFrame;
														wait(1);
													end;
												end;
											end;
										end;
									end;
								elseif not Q[19].Map:FindFirstChild("HeavenlyDimension") then
									wait(5);
									if not Q[19].Map:FindFirstChild("HeavenlyDimension") then
										Kill_Boss_Cake = false;
									end;
								end;
							end;
						end;
					elseif C[2].Evil == 2 or C[2].Evil == -5 then
						CDK_Q_S_C = 8;
						if C[2].Evil == 2 then
							Q[45].GetQuest("Evil");
						elseif C[2].Evil == -5 then
							if Q[19].Map:FindFirstChild("HellDimension") then
								if ((Q[19].Map:FindFirstChild("HellDimension")).WorldPivot.Position - Q[35].Character.HumanoidRootPart.Position).Magnitude > 1200 then
									repeat
										wait(.1);
										Q[31]((Q[19].Map:FindFirstChild("HellDimension")).WorldPivot, 1.5);
									until ((Q[19].Map:FindFirstChild("HellDimension")).WorldPivot.Position - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 10;
									wait(1);
								elseif ((Q[19].Map:FindFirstChild("HellDimension")).WorldPivot.Position - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 1200 then
									Q[14]();
									if Q[40]:FindFirstChildOfClass("Model") then
										for C, h in pairs(Q[40]:GetChildren()) do
											local y = {};
											y[2], y[1] = C, h;
											if y[1]:FindFirstChild("HumanoidRootPart") and (y[1]:FindFirstChild("Humanoid") and ((Q[19].Map:FindFirstChild("HellDimension")).WorldPivot.Position - y[1].HumanoidRootPart.Position).Magnitude <= 1000) then
												if y[1].Humanoid.Health > 0 then
													repeat
														wait();
														Q[31](y[1].HumanoidRootPart.CFrame * CFrame.new(0, 30, 0), 1.5);
														Q[14]();
													until not y[1].Parent or y[1].Humanoid.Health <= 0;
												end;
											end;
										end;
									elseif not Q[40]:FindFirstChildOfClass("Model") then
										Q[45].GetTorchX("Torch1");
										if not Q[40]:FindFirstChildOfClass("Model") then
											Q[45].GetTorchX("Torch2");
											if not Q[40]:FindFirstChildOfClass("Model") then
												Q[45].GetTorchX("Torch3");
												if not Q[40]:FindFirstChildOfClass("Model") and Q[19].Map:FindFirstChild("HellDimension") then
													Q[19].Map.HellDimension.Exit.CFrame = Q[35].Character.HumanoidRootPart.CFrame;
													wait(1);
												end;
											end;
										end;
									end;
								end;
							elseif not Q[19].Map:FindFirstChild("HellDimension") then
								if Q[40]:FindFirstChild("Soul Reaper") or game.ReplicatedStorage:FindFirstChild("Soul Reaper") then
									Stop_Fast_Attack = true;
									if not Q[40]:FindFirstChild("Soul Reaper") and game.ReplicatedStorage:FindFirstChild("Soul Reaper") then
										repeat
											wait(.2);
											Q[31]((game.ReplicatedStorage:FindFirstChild("Soul Reaper")).HumanoidRootPart.CFrame * CFrame.new(0, 30, 0), 1.5);
										until Q[40]:FindFirstChild("Soul Reaper");
										wait(1);
									end;
									if Q[40]:FindFirstChild("Soul Reaper") then
										Q[31]((Q[40]:FindFirstChild("Soul Reaper")).HumanoidRootPart.CFrame * CFrame.new(0, 0, 2), 1.5);
										wait(1);
									end;
								elseif Q[7].Remotes.CommF_:InvokeServer("Bones", "Check") > 0 and Q[45].CheckItem("Bones") > 500 then
									repeat
										wait(.2);
										Q[7].Remotes.CommF_:InvokeServer("Bones", "Check");
										Q[7].Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1);
									until Q[7].Remotes.CommF_:InvokeServer("Bones", "Check") == 0;
									wait(1);
									if not Dragon_Talon_C then
										if Q[45].ffc(Q[35].Backpack, "Fire Essence") or Q[45].ffc(Q[35].Character, "Fire Essence") then
											repeat
												Q[45].Status(Q[3]({ " Status : Use Fire E", "ssence" }));
												Q[45].Equip("Fire Essence");
												Q[45].wt(.5);
												Q[7].Remotes.CommF_:InvokeServer("BuyDragonTalon", true);
												Q[7].Remotes.CommF_:InvokeServer("BuyDragonTalon");
											until not Q[45].ffc(Q[35].Backpack, "Fire Essence") and not Q[45].ffc(Q[35].Character, "Fire Essence");
											Q[7].Remotes.CommF_:InvokeServer("BuyDragonTalon");
											Dragon_Talon_C = true;
										end;
									end;
									if Q[45].ffc(Q[35].Backpack, "Hallow Essence") or Q[45].ffc(Q[35].Character, "Hallow Essence") then
										repeat
											Q[45].Status(Q[3]({ " Status : Use Hallow", " Essence" }));
											Q[45].Equip("Hallow Essence");
											Q[31](CFrame.new(-8932.86, 143.258, 6063.31), 1.5);
										until not Q[45].ffc(Q[35].Backpack, "Hallow Essence") and not Q[45].ffc(Q[35].Character, "Hallow Essence");
									end;
								elseif not Q[40]:FindFirstChild("Soul Reaper") and not Q[7]:FindFirstChild("Soul Reaper") then
									Q[45].FarmBone();
								end;
							end;
						end;
					elseif C[2].Evil == 3 then
						repeat
							wait();
							Q[31](CFrame.new(-12392.2637, 603.319763, -6503.27832), 1.5);
						until (Vector3.new(-12392.2637, 603.319763, -6503.27832) - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 2;
						if Q[4]:FindFirstChild("     ") then
							Q[4]["     "].Enabled = false;
						end;
						wait(1);
						Q[2]:SendKeyEvent(true, "E", false, game);
						wait(1);
						Q[2]:SendKeyEvent(false, "E", false, game);
						wait(1);
						Q[45].click(Q[35].PlayerGui.Main.Dialogue);
					elseif C[2].Good == 3 then
						repeat
							wait();
							Q[31](CFrame.new(-12392.5068, 603.319763, -6596.00586), 1.5);
						until (Vector3.new(-12392.5068, 603.319763, -6596.00586) - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 2;
						if Q[4]:FindFirstChild("     ") then
							Q[4]["     "].Enabled = false;
						end;
						wait(1);
						Q[2]:SendKeyEvent(true, "E", false, game);
						wait(1);
						Q[2]:SendKeyEvent(false, "E", false, game);
						wait(1);
						Q[45].click(Q[35].PlayerGui.Main.Dialogue);
					elseif C[2].Good == 4 and (C[2].Evil == 4 and Q[19].Map.Turtle.Cursed.BossDoor.Position.Y > 584) then
						Q[14]();
						repeat
							wait(.1);
							Q[31](CFrame.new(-12359.1719, 603.319702, -6550.59717, .481593847, 0, -0.87639451, 0, 1, 0, .87639451, 0, .481593847), 1.5);
						until (Vector3.new(-12359.1719, 603.319702, -6550.59717) - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 3;
						if Q[4]:FindFirstChild("     ") then
							Q[4]["     "].Enabled = false;
						end;
						wait(1);
						Q[2]:SendKeyEvent(true, "E", false, game);
						wait(1);
						Q[2]:SendKeyEvent(false, "E", false, game);
						wait(1);
						Q[45].click(Q[35].PlayerGui.Main.Dialogue);
					elseif Q[19].Map.Turtle.Cursed.BossDoor.Position.Y <= 584 then
						local C = {};
						if Q[4]:FindFirstChild("     ") then
							Q[4]["     "].Enabled = true;
						end;
						C[1] = Q[7].Remotes.CommF_:InvokeServer("getInventory");
						for Q, C in pairs(C[1]) do
							local h = {};
							h[1], h[3] = Q, C;
							if h[3].Type == "Sword" then
								if h[3].Name == "Cursed Dual Katana" then
									return;
								end;
							end;
						end;
						CDK_Q_S_C = 10;
						if (Vector3.new(-12297.5605, 598.726013, -6532.96436) - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 100 then
							repeat
								wait();
								Q[31](CFrame.new(-12379.1406, 601.433167, -6543.60742), 1.5);
							until Boss_Extant or (Vector3.new(-12379.1406, 601.433167, -6543.60742) - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 3;
							repeat
								wait();
								Q[31](CFrame.new(-12330.197265625, 603.31982421875, -6549.1186523438), 1.5);
								for C, h in pairs(Q[40]:GetChildren()) do
									local y = {};
									y[2], y[3] = C, h;
									if y[3].Name == "Cursed Skeleton Boss" then
										Boss_Extant = true;
										Q[35].Character.HumanoidRootPart.CFrame = y[3].HumanoidRootPart.CFrame * CFrame.new(0, 30, 0);
									end;
								end;
							until Boss_Extant or (Vector3.new(-12330.197265625, 603.31982421875, -6549.1186523438) - Q[35].Character.HumanoidRootPart.Position).Magnitude <= 3;
							wait(1);
							for h, y in pairs(Q[40]:GetChildren()) do
								local r = {};
								r[2], r[3] = h, y;
								if r[3].Name == "Cursed Skeleton Boss" then
									repeat
										wait(.1);
										Q[45].Get_Item_Inventory("Tushita");
										Q[45].Equip("Tushita");
										Q[31](r[3].HumanoidRootPart.CFrame * CFrame.new(0, 30, 0), 1.5);
									until not r[3].Parent or r[3].Humanoid.Health <= 0;
									for Q, C in pairs(C[1]) do
										local h = {};
										h[2], h[1] = Q, C;
										if h[1].Type == "Sword" then
											if h[1].Name == "Cursed Dual Katana" then
												return;
											end;
										end;
									end;
								end;
							end;
						elseif (Vector3.new(-12297.5605, 598.726013, -6532.96436) - Q[35].Character.HumanoidRootPart.Position).Magnitude > 100 then
							Q[31](CFrame.new(-12297.5605, 598.726013, -6532.96436), 1.5);
						end;
					end;
				else
					Q[7].Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor", true);
				end;
			end;
		end, warn);
	end;
end);
task.spawn(function()
	while Q[45].wt() do
		xpcall(function()
			for C, h in pairs(Q[40]:GetChildren()) do
				local y = {};
				y[2], y[1] = C, h;
				if Q[45].ffc(y[1], "Humanoid") and (y[1].Humanoid.Health <= 0 and Q[45].ffc(y[1], "HumanoidRootPart")) then
					if y[1].Humanoid.Health <= 0 then
						y[1]:Destroy();
					end;
				end;
			end;
			if Q[45].ffc(Q[35].Character, "Black Leg") then
				Q[2]:SendKeyEvent(true, "V", false, game);
				Q[45].wt(.1);
				Q[2]:SendKeyEvent(false, "V", false, game);
			end;
			if Q[45].ffc(Q[35].Character, "HumanoidRootPart") and not Q[45].ffc(Q[35].Character.HumanoidRootPart, "Lock") then
				local C = {};
				C[1] = Q[35].Character:FindFirstChild("Humanoid");
				if C[1] and C[1].Sit then
					C[1].Sit = false;
				end;
				C[2] = Instance.new("BodyVelocity");
				C[2].Name = "Lock";
				C[2].MaxForce = Vector3.new(1000000000, 1000000000, 1000000000);
				C[2].Velocity = Vector3.new(0, 0, 0);
				C[2].P = 10000;
				C[2].Parent = Q[35].Character.HumanoidRootPart;
			end;
		end, warn);
	end;
end);
task.spawn(function()
	while Q[45].wt(1) do
		pcall(function()
			if not Q[45].ffc(Q[35].Character, "Highlight") then
				local C = {};
				C[1] = Instance.new("Highlight");
				C[1].Name = "Highlight";
				C[1].FillColor = Color3.fromRGB(0, 0, 0);
				C[1].OutlineColor = Color3.fromRGB(255, 255, 255);
				C[1].FillTransparency = .5;
				C[1].OutlineTransparency = .2;
				C[1].Adornee = Q[35].Character;
				C[1].Parent = Q[35].Character;
			end;
		end);
	end;
end);
redeem = {
		"Sub2Fer999",
		"Enyu_is_Pro",
		"JCWK",
		"StarcodeHEO",
		"MagicBUS",
		"KittGaming",
		"Sub2CaptainMaui",
		"Sub2OfficialNoobie",
		"TheGreatAce",
		"Sub2NoobMaster123",
		"Sub2Daigrock",
		"Axiore",
		"StrawHatMaine",
		"TantaiGaming",
		"Bluxxy",
		"SUB2GAMERROBOT_EXP1",
		"GAMER_ROBOT_1M",
		"SUBGAMERROBOT_RESET",
		"RESET_5B",
		Q[3]({ "SUB2GAMERROBOT_RESET", "1" }),
		"Sub2UncleKizaru",
		"ADMIN_TROLL ",
		"DRAGONABUSE ",
		"DEVSCOOKING ",
	};
task.spawn(function()
	for C, h in pairs(redeem) do
		local y = {};
		y[2], y[1] = C, h;
		Q[46].Remotes.Redeem:InvokeServer(y[1]);
	end;
end);
task.spawn(function()
	while Q[45].wt(150) do
		Q[2]:SendKeyEvent(true, "Space", false, game);
		wait(.5);
		Q[2]:SendKeyEvent(false, "Space", false, game);
	end;
end);
Q[9] = game:GetService("Players");
Q[37] = Q[9].LocalPlayer;
Q[44] = function()
		while not Q[37].Character or not Q[37].Character:FindFirstChild("HumanoidRootPart") do
			task.wait(.5);
		end;
		return Q[37].Character:WaitForChild("HumanoidRootPart");
	end;
Q[18] = (Q[44]()).Position;
Q[28] = 0;
Q[36] = 1;
task.spawn(function()
	while task.wait() do
		if Quest ~= "Cursed Dual Katana" and (Quest ~= "Evo Race V2" and (Quest ~= "Evo Race V1" and not SROP)) then
			local C = {};
			task.wait(Q[36]);
			C[2] = (Q[44]()).Position;
			C[1] = (C[2] - Q[18]).Magnitude;
			if C[1] <= 1 then
				Q[28] = Q[28] + Q[36];
				if Q[28] >= 30 and (Quest ~= "Cursed Dual Katana" and (Quest ~= "Evo Race V2" and (Quest ~= "Evo Race V1" and not SROP))) then
					Q[45].HopLowServer(9);
				end;
			else
				Q[28] = 0;
				Q[18] = C[2];
			end;
		end;
	end;
end);
task.spawn(function()
	while task.wait() do
		if Q[25].Map:FindFirstChild("Heavenly") then
			fireproximityprompt(Q[25].Map.HeavenlyDimension.Torch1.ProximityPrompt);
			fireproximityprompt(Q[25].Map.HeavenlyDimension.Torch2.ProximityPrompt);
			fireproximityprompt(Q[25].Map.HeavenlyDimension.Torch3.ProximityPrompt);
		end;
		if Q[25].Map:FindFirstChild("HellDimension") then
			fireproximityprompt(Q[25].Map.HellDimension.Torch1.ProximityPrompt);
			fireproximityprompt(Q[25].Map.HellDimension.Torch2.ProximityPrompt);
			fireproximityprompt(Q[25].Map.HellDimension.Torch3.ProximityPrompt);
		end;
	end;
end);
Q[37].PlayerGui.Notifications.Enabled = false;
task.spawn(function()
	while task.wait() do
		pcall(function()
			if not (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Lock") then
				local Q = {};
				if (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == true then
					(game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit = false;
				end;
				Q[2] = Instance.new("BodyVelocity");
				Q[2].Name = "Lock";
				Q[2].Parent = (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart;
				Q[2].MaxForce = Vector3.new(9000000000, 9000000000, 9000000000);
				Q[2].Velocity = Vector3.new(0, 0, 0);
			end;
		end);
	end;
end);
Q[45].wt(5);
_G.Ew = false;
Ewx = false;
task.spawn(function()
	while Q[45].wt() do
		pcall(function()
			if Q[1].Value >= 2500000 and New_World then
				Q[7].Remotes.CommF_:InvokeServer("LegendarySwordDealer", "1");
				Q[7].Remotes.CommF_:InvokeServer("LegendarySwordDealer", "2");
				Q[7].Remotes.CommF_:InvokeServer("LegendarySwordDealer", "3");
			end;
			if Q[45].tf(Configs.Gun, "Kabucha") and (Q[17].Value >= 10000 and not Q[45].gi("Kabucha")) then
				Q[7].Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "2");
			end;
			if Q[1].Value >= 3000000 then
				if Q[45].tf(Configs.Sword, "Bisento") and not Q[45].gi("Bisento") then
					Q[7].Remotes.CommF_:InvokeServer("BuyItem", "Bisento");
				end;
				if Q[45].tf(Configs.Sword, "Cutlass") and not Q[45].gi("Cutlass") then
					Q[7].Remotes.CommF_:InvokeServer("BuyItem", "Cutlass");
				end;
				if Q[45].tf(Configs.Sword, "Katana") and not Q[45].gi("Katana") then
					Q[7].Remotes.CommF_:InvokeServer("BuyItem", "Katana");
				end;
				if Q[45].tf(Configs.Sword, "Dual Katana") and not Q[45].gi("Dual Katana") then
					Q[7].Remotes.CommF_:InvokeServer("BuyItem", "Dual Katana");
				end;
				if Q[45].tf(Configs.Sword, "Soul Cane") and not Q[45].gi("Soul Cane") then
					Q[7].Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane");
				end;
				if Q[45].tf(Configs.Sword, "Triple Katana") and not Q[45].gi("Triple Katana") then
					Q[7].Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana");
				end;
				if Q[45].tf(Configs.Sword, "Iron Mace") and not Q[45].gi("Iron Mace") then
					Q[7].Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace");
				end;
				if Q[45].tf(Configs.Sword, "Pipe") and not Q[45].gi("Pipe") then
					Q[7].Remotes.CommF_:InvokeServer("BuyItem", "Pipe");
				end;
				if Q[45].tf(Configs.Sword, "Dual-Headed Blade") and not Q[45].gi("Dual-Headed Blade") then
					Q[7].Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade");
				end;
				if Q[45].tf(Configs.Gun, "Musket") and not Q[45].gi("Musket") then
					Q[7].Remotes.CommF_:InvokeServer("BuyItem", "Musket");
				end;
				if Q[45].tf(Configs.Gun, "Flintlock") and not Q[45].gi("Flintlock") then
					Q[7].Remotes.CommF_:InvokeServer("BuyItem", "Flintlock");
				end;
				if Q[45].tf(Configs.Gun, "Refined Slingshot") and not Q[45].gi("Refined Slingshot") then
					Q[7].Remotes.CommF_:InvokeServer("BuyItem", "Refined Slingshot");
				end;
				if Q[45].tf(Configs.Gun, "Dual Flintlock") and not Q[45].gi("Dual Flintlock") then
					Q[7].Remotes.CommF_:InvokeServer("BuyItem", "Dual Flintlock");
				end;
				if Q[45].tf(Configs.Gun, "Cannon") and not Q[45].gi("Cannon") then
					Q[7].Remotes.CommF_:InvokeServer("BuyItem", "Cannon");
				end;
			end;
			if Q[45].tf(Configs.Sword, "Midnight Blade") and (Q[7].Remotes.CommF_:InvokeServer("Ectoplasm", "Check") >= 100 and not Q[45].gi("Midnight Blade")) then
				Q[7].Remotes.CommF_:InvokeServer("Ectoplasm", "Buy", 3);
			end;
			if not klmdlkgf and Q[24].Value >= 2000 then
				Q[7].Remotes.CommF_:InvokeServer("BuyHaki", "Geppo");
				Q[7].Remotes.CommF_:InvokeServer("BuyHaki", "Soru");
				Q[7].Remotes.CommF_:InvokeServer("KenTalk", "Buy");
				klmdlkgf = true;
			end;
			if not klmdlkgfx and Q[24].Value >= 1000 then
				Q[7].Remotes.CommF_:InvokeServer("BuyHaki", "Buso");
				klmdlkgfx = true;
			end;
			Q[45].wt(100);
		end);
	end;
end);

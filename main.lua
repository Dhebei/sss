-- BananaHub Remake by SpaceX_Hub

if not game:IsLoaded() then
    game.Loaded:Wait()
end
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VirtualUser = game:GetService("VirtualUser")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local Player = Players.LocalPlayer
local Remotes = ReplicatedStorage:WaitForChild("Remotes", 5)
local CommF = Remotes:WaitForChild("CommF_", 5) 
local PlayerGui = Player:WaitForChild("PlayerGui", 5)
local MainGui = PlayerGui:WaitForChild("Main", 5)
local lastNotificationTime = 0
local notificationCooldown = 10
local currentTime = tick()
if currentTime - lastNotificationTime >= notificationCooldown then
    lastNotificationTime = currentTime
end
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local EffectContainer = ReplicatedStorage:FindFirstChild("Effect") and ReplicatedStorage.Effect:FindFirstChild("Container")
if EffectContainer then
    local Death = EffectContainer:FindFirstChild("Death")
    if Death then
        local success, result = pcall(require, Death)
        if success and type(result) == "function" then
            hookfunction(result, function() end)
        end
    end
    local Respawn = EffectContainer:FindFirstChild("Respawn")
    if Respawn then
        local success, result = pcall(require, Respawn)
        if success and type(result) == "function" then
            hookfunction(result, function() end)
        end
    end
end
local GuideModule = ReplicatedStorage:FindFirstChild("GuideModule")
if GuideModule then
    local success, module = pcall(require, GuideModule)
    if success and module and type(module.ChangeDisplayedNPC) == "function" then
        hookfunction(module.ChangeDisplayedNPC, function() end)
    end
end
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Util = ReplicatedStorage:WaitForChild("Util", 5)
if Util then
    local CameraShaker = Util:FindFirstChild("CameraShaker")
    if CameraShaker then
        require(CameraShaker):Stop()
    end
end
local placeId = game.PlaceId
local worldMap = {
    [2753915549] = true,
    [4442272183] = true,
    [7449423635] = true
}
if worldMap[placeId] then
    if placeId == 2753915549 then
        World1 = true
    elseif placeId == 4442272183 then
        World2 = true
    elseif placeId == 7449423635 then
        World3 = true
    end
else
    game.Players.LocalPlayer:Kick("Unsupported Game.")
end

repeat
    wait()
until game.Players.LocalPlayer.Character
function CheckQuest() 
    MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
    if World1 then
        if MyLevel >= 1 and MyLevel <= 9 then
            Mon = "Bandit"
            LevelQuest = 1
            NameQuest = "BanditQuest1"
            NameMon = "Bandit"
            CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
            CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
        elseif MyLevel >= 10 and MyLevel <= 14 then
            Mon = "Monkey"
            LevelQuest = 1
            NameQuest = "JungleQuest"
            NameMon = "Monkey"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)
        elseif MyLevel >= 15 and MyLevel <= 29 then
            Mon = "Gorilla"
            LevelQuest = 2
            NameQuest = "JungleQuest"
            NameMon = "Gorilla"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)
        elseif MyLevel >= 30 and MyLevel <= 39 then
            Mon = "Pirate"
            LevelQuest = 1
            NameQuest = "BuggyQuest1"
            NameMon = "Pirate"
            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)
        elseif MyLevel >= 40 and MyLevel <= 59 then
            Mon = "Brute"
            LevelQuest = 2
            NameQuest = "BuggyQuest1"
            NameMon = "Brute"
            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)
        elseif MyLevel >= 60 and MyLevel <= 74 then
            Mon = "Desert Bandit"
            LevelQuest = 1
            NameQuest = "DesertQuest"
            NameMon = "Desert Bandit"
            CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
        elseif MyLevel >= 75 and MyLevel <= 89 then
            Mon = "Desert Officer"
            LevelQuest = 2
            NameQuest = "DesertQuest"
            NameMon = "Desert Officer"
            CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)
        elseif MyLevel >= 90 and MyLevel <= 99 then
            Mon = "Snow Bandit"
            LevelQuest = 1
            NameQuest = "SnowQuest"
            NameMon = "Snow Bandit"
            CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125)
        elseif MyLevel >= 100 and MyLevel <= 119 then
            Mon = "Snowman"
            LevelQuest = 2
            NameQuest = "SnowQuest"
            NameMon = "Snowman"
            CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
        elseif MyLevel >= 120 and MyLevel <= 149 then
            Mon = "Chief Petty Officer"
            LevelQuest = 1
            NameQuest = "MarineQuest2"
            NameMon = "Chief Petty Officer"
            CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
        elseif MyLevel >= 150 and MyLevel <= 174 then
            Mon = "Sky Bandit"
            LevelQuest = 1
            NameQuest = "SkyQuest"
            NameMon = "Sky Bandit"
            CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)
        elseif MyLevel >= 175 and MyLevel <= 189 then
            Mon = "Dark Master"
            LevelQuest = 2
            NameQuest = "SkyQuest"
            NameMon = "Dark Master"
            CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
        elseif MyLevel >= 190 and MyLevel <= 209 then
            Mon = "Prisoner"
            LevelQuest = 1
            NameQuest = "PrisonerQuest"
            NameMon = "Prisoner"
            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
        elseif MyLevel >= 210 and MyLevel <= 249 then
            Mon = "Dangerous Prisoner"
            LevelQuest = 2
            NameQuest = "PrisonerQuest"
            NameMon = "Dangerous Prisoner"
            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
        elseif MyLevel >= 250 and MyLevel <= 274 then
            Mon = "Toga Warrior"
            LevelQuest = 1
            NameQuest = "ColosseumQuest"
            NameMon = "Toga Warrior"
            CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
            CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
        elseif MyLevel >= 275 and MyLevel <= 299 then
            Mon = "Gladiator"
            LevelQuest = 2
            NameQuest = "ColosseumQuest"
            NameMon = "Gladiator"
            CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
            CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
        elseif MyLevel >= 300 and MyLevel <= 324 then
            Mon = "Military Soldier"
            LevelQuest = 1
            NameQuest = "MagmaQuest"
            NameMon = "Military Soldier"
            CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
            CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
        elseif MyLevel >= 325 and MyLevel <= 374 then
            Mon = "Military Spy"
            LevelQuest = 2
            NameQuest = "MagmaQuest"
            NameMon = "Military Spy"
            CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
            CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
        elseif MyLevel >= 375 and MyLevel <= 399 then
            Mon = "Fishman Warrior"
            LevelQuest = 1
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Warrior"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif MyLevel >= 400 and MyLevel <= 449 then
            Mon = "Fishman Commando"
            LevelQuest = 2
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Commando"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif MyLevel >= 450 and MyLevel <= 474 then
            Mon = "God's Guard"
            LevelQuest = 1
            NameQuest = "SkyExp1Quest"
            NameMon = "God's Guard"
            CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
            CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
            end
        elseif MyLevel >= 475 and MyLevel <= 524 then
            Mon = "Shanda"
            LevelQuest = 2
            NameQuest = "SkyExp1Quest"
            NameMon = "Shanda"
            CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
            CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
            end
        elseif MyLevel >= 525 and MyLevel <= 549 then
            Mon = "Royal Squad"
            LevelQuest = 1
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Squad"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
        elseif MyLevel >= 550 and MyLevel <= 624 then
            Mon = "Royal Soldier"
            LevelQuest = 2
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Soldier"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
        elseif MyLevel >= 625 and MyLevel <= 649 then
            Mon = "Galley Pirate"
            LevelQuest = 1
            NameQuest = "FountainQuest"
            NameMon = "Galley Pirate"
            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
        elseif MyLevel >= 650 then
            Mon = "Galley Captain"
            LevelQuest = 2
            NameQuest = "FountainQuest"
            NameMon = "Galley Captain"
            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
        end
    elseif World2 then
        if MyLevel >= 700 and MyLevel <= 724 then
            Mon = "Raider"
            LevelQuest = 1
            NameQuest = "Area1Quest"
            NameMon = "Raider"
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            CFrameMon = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125)
        elseif MyLevel >= 725 and MyLevel <= 774 then
            Mon = "Mercenary"
            LevelQuest = 2
            NameQuest = "Area1Quest"
            NameMon = "Mercenary"
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
        elseif MyLevel >= 775 and MyLevel <= 799 then
            Mon = "Swan Pirate"
            LevelQuest = 1
            NameQuest = "Area2Quest"
            NameMon = "Swan Pirate"
            CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
            CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)
        elseif MyLevel >= 800 and MyLevel <= 874 then
            Mon = "Factory Staff"
            NameQuest = "Area2Quest"
            LevelQuest = 2
            NameMon = "Factory Staff"
            CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
            CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
        elseif MyLevel >= 875 and MyLevel <= 899 then
            Mon = "Marine Lieutenant"
            LevelQuest = 1
            NameQuest = "MarineQuest3"
            NameMon = "Marine Lieutenant"
            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125)
        elseif MyLevel >= 900 and MyLevel <= 949 then
            Mon = "Marine Captain"
            LevelQuest = 2
            NameQuest = "MarineQuest3"
            NameMon = "Marine Captain"
            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
        elseif MyLevel >= 950 and MyLevel <= 974 then
            Mon = "Zombie"
            LevelQuest = 1
            NameQuest = "ZombieQuest"
            NameMon = "Zombie"
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
        elseif MyLevel >= 975 and MyLevel <= 999 then
            Mon = "Vampire"
            LevelQuest = 2
            NameQuest = "ZombieQuest"
            NameMon = "Vampire"
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
        elseif MyLevel >= 1000 and MyLevel <= 1049 then
            Mon = "Snow Trooper"
            LevelQuest = 1
            NameQuest = "SnowMountainQuest"
            NameMon = "Snow Trooper"
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
        elseif MyLevel >= 1050 and MyLevel <= 1099 then
            Mon = "Winter Warrior"
            LevelQuest = 2
            NameQuest = "SnowMountainQuest"
            NameMon = "Winter Warrior"
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
        elseif MyLevel >= 1100 and MyLevel <= 1124 then
            Mon = "Lab Subordinate"
            LevelQuest = 1
            NameQuest = "IceSideQuest"
            NameMon = "Lab Subordinate"
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
        elseif MyLevel >= 1125 and MyLevel <= 1174 then
            Mon = "Horned Warrior"
            LevelQuest = 2
            NameQuest = "IceSideQuest"
            NameMon = "Horned Warrior"
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
        elseif MyLevel >= 1175 and MyLevel <= 1199 then
            Mon = "Magma Ninja"
            LevelQuest = 1
            NameQuest = "FireSideQuest"
            NameMon = "Magma Ninja"
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
        elseif MyLevel >= 1200 and MyLevel <= 1249 then
            Mon = "Lava Pirate"
            LevelQuest = 2
            NameQuest = "FireSideQuest"
            NameMon = "Lava Pirate"
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
        elseif MyLevel >= 1250 and MyLevel <= 1274 then
            Mon = "Ship Deckhand"
            LevelQuest = 1
            NameQuest = "ShipQuest1"
            NameMon = "Ship Deckhand"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)         
            CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)    
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel >= 1275 and MyLevel <= 1299 then
            Mon = "Ship Engineer"
            LevelQuest = 2
            NameQuest = "ShipQuest1"
            NameMon = "Ship Engineer"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)   
            CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)   
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end             
        elseif MyLevel >= 1300 and MyLevel <= 1324 then
            Mon = "Ship Steward"
            LevelQuest = 1
            NameQuest = "ShipQuest2"
            NameMon = "Ship Steward"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)         
            CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625)      
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel >= 1325 and MyLevel <= 1349 then
            Mon = "Ship Officer"
            LevelQuest = 2
            NameQuest = "ShipQuest2"
            NameMon = "Ship Officer"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
            CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel >= 1350 and MyLevel <= 1374 then
            Mon = "Arctic Warrior"
            LevelQuest = 1
            NameQuest = "FrostQuest"
            NameMon = "Arctic Warrior"
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
            end
        elseif MyLevel >= 1375 and MyLevel <= 1424 then
            Mon = "Snow Lurker"
            LevelQuest = 2
            NameQuest = "FrostQuest"
            NameMon = "Snow Lurker"
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
        elseif MyLevel >= 1425 and MyLevel <= 1449 then
            Mon = "Sea Soldier"
            LevelQuest = 1
            NameQuest = "ForgottenQuest"
            NameMon = "Sea Soldier"
            CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
            CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
        elseif MyLevel >= 1450 then
            Mon = "Water Fighter"
            LevelQuest = 2
            NameQuest = "ForgottenQuest"
            NameMon = "Water Fighter"
            CFrameQuest = CFrame.new(-3054, 240, -10146)
            CFrameMon = CFrame.new(-3291, 252, -10501)
        end
    elseif World3 then
        if MyLevel >= 1500 and MyLevel <= 1524 then
            Mon = "Pirate Millionaire"
            LevelQuest = 1
            NameQuest = "PiratePortQuest"
            NameMon = "Pirate Millionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
        elseif MyLevel >= 1525 and MyLevel <= 1574 then
            Mon = "Pistol Billionaire"
            LevelQuest = 2
            NameQuest = "PiratePortQuest"
            NameMon = "Pistol Billionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875)
        elseif MyLevel >= 1575 and MyLevel <= 1599 then
            Mon = "Dragon Crew Warrior"
            LevelQuest = 1
            NameQuest = "DragonCrewQuest"
            NameMon = "Dragon Crew Warrior"
            CFrameQuest = CFrame.new(6738.96142578125, 127.81645965576172, -713.511474609375)
            CFrameMon = CFrame.new(6920.71435546875, 56.15597152709961, -942.5044555664062)
        elseif MyLevel >= 1600 and MyLevel <= 1624 then 
            Mon = "Dragon Crew Archer"
            NameQuest = "DragonCrewQuest"
            LevelQuest = 2
            NameMon = "Dragon Crew Archer"
            CFrameQuest = CFrame.new(6738.96142578125, 127.81645965576172, -713.511474609375)
            CFrameMon = CFrame.new(6817.91259765625, 484.804443359375, 513.4141235351562)
        elseif MyLevel >= 1625 and MyLevel <= 1649 then
            Mon = "Hydra Enforcer"
            NameQuest = "VenomCrewQuest"
            LevelQuest = 1
            NameMon = "Hydra Enforcer"
            CFrameQuest = CFrame.new(5213.8740234375, 1004.5042724609375, 758.6944580078125)
            CFrameMon = CFrame.new(4584.69287109375, 1002.6435546875, 705.7958984375)
        elseif MyLevel >= 1650 and MyLevel <= 1699 then 
            Mon = "Venomous Assailant"
            NameQuest = "VenomCrewQuest"
            LevelQuest = 2
            NameMon = "Venomous Assailant"
            CFrameQuest = CFrame.new(5213.8740234375, 1004.5042724609375, 758.6944580078125)
            CFrameMon = CFrame.new(4638.78564453125, 1078.94091796875, 881.8002319335938)        
        elseif MyLevel >= 1700 and MyLevel <= 1724 then
            Mon = "Marine Commodore"
            LevelQuest = 1
            NameQuest = "MarineTreeIsland"
            NameMon = "Marine Commodore"
            CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
            CFrameMon = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125)
        elseif MyLevel >= 1725 and MyLevel <= 1774 then
            Mon = "Marine Rear Admiral"
            NameMon = "Marine Rear Admiral"
            NameQuest = "MarineTreeIsland"
            LevelQuest = 2
            CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
            CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125)
        elseif MyLevel >= 1775 and MyLevel <= 1799 then
            Mon = "Fishman Raider"
            LevelQuest = 1
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Raider"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
            CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
        elseif MyLevel >= 1800 and MyLevel <= 1824 then
            Mon = "Fishman Captain"
            LevelQuest = 2
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Captain"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
            CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625) 
        elseif MyLevel >= 1825 and MyLevel <= 1849 then
            Mon = "Forest Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland"
            NameMon = "Forest Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
            CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
        elseif MyLevel >= 1850 and MyLevel <= 1899 then
            Mon = "Mythological Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland"
            NameMon = "Mythological Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)   
            CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
        elseif MyLevel >= 1900 and MyLevel <= 1924 then
            Mon = "Jungle Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland2"
            NameMon = "Jungle Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
        elseif MyLevel >= 1925 and MyLevel <= 1974 then
            Mon = "Musketeer Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland2"
            NameMon = "Musketeer Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
        elseif MyLevel >= 1975 and MyLevel <= 1999 then
            Mon = "Reborn Skeleton"
            LevelQuest = 1
            NameQuest = "HauntedQuest1"
            NameMon = "Reborn Skeleton"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
        elseif MyLevel >= 2000 and MyLevel <= 2024 then
            Mon = "Living Zombie"
            LevelQuest = 2
            NameQuest = "HauntedQuest1"
            NameMon = "Living Zombie"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
        elseif MyLevel >= 2025 and MyLevel <= 2049 then
            Mon = "Demonic Soul"
            LevelQuest = 1
            NameQuest = "HauntedQuest2"
            NameMon = "Demonic Soul"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
            CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
        elseif MyLevel >= 2050 and MyLevel <= 2074 then
            Mon = "Posessed Mummy"
            LevelQuest = 2
            NameQuest = "HauntedQuest2"
            NameMon = "Posessed Mummy"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
        elseif MyLevel >= 2075 and MyLevel <= 2099 then
            Mon = "Peanut Scout"
            LevelQuest = 1
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut Scout"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
        elseif MyLevel >= 2100 and MyLevel <= 2124 then
            Mon = "Peanut President"
            LevelQuest = 2
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut President"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
        elseif MyLevel >= 2125 and MyLevel <= 2149 then
            Mon = "Ice Cream Chef"
            LevelQuest = 1
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Chef"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
        elseif MyLevel >= 2150 and MyLevel <= 2199 then
            Mon = "Ice Cream Commander"
            LevelQuest = 2
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Commander"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
        elseif MyLevel >= 2200 and MyLevel <= 2224 then
            Mon = "Cookie Crafter"
            LevelQuest = 1
            NameQuest = "CakeQuest1"
            NameMon = "Cookie Crafter"
            CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
            CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
        elseif MyLevel >= 2225 and MyLevel <= 2249 then
            Mon = "Cake Guard"
            LevelQuest = 2
            NameQuest = "CakeQuest1"
            NameMon = "Cake Guard"
            CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
            CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
        elseif MyLevel >= 2250 and MyLevel <= 2274 then
            Mon = "Baking Staff"
            LevelQuest = 1
            NameQuest = "CakeQuest2"
            NameMon = "Baking Staff"
            CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
            CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
        elseif MyLevel >= 2275 and MyLevel <= 2299 then
            Mon = "Head Baker"
            LevelQuest = 2
            NameQuest = "CakeQuest2"
            NameMon = "Head Baker"
            CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
            CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
        elseif MyLevel >= 2300 and MyLevel <= 2324 then
            Mon = "Cocoa Warrior"
            LevelQuest = 1
            NameQuest = "ChocQuest1"
            NameMon = "Cocoa Warrior"
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
        elseif MyLevel >= 2325 and MyLevel <= 2349 then
            Mon = "Chocolate Bar Battler"
            LevelQuest = 2
            NameQuest = "ChocQuest1"
            NameMon = "Chocolate Bar Battler"
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
        elseif MyLevel >= 2350 and MyLevel <= 2374 then
            Mon = "Sweet Thief"
            LevelQuest = 1
            NameQuest = "ChocQuest2"
            NameMon = "Sweet Thief"
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
        elseif MyLevel >= 2375 and MyLevel <= 2399 then
            Mon = "Candy Rebel"
            LevelQuest = 2
            NameQuest = "ChocQuest2"
            NameMon = "Candy Rebel"
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)
        elseif MyLevel >= 2400 and MyLevel <= 2424 then
            Mon = "Candy Pirate"
            LevelQuest = 1
            NameQuest = "CandyQuest1"
            NameMon = "Candy Pirate"
            CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
            CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
        elseif MyLevel >= 2425 and MyLevel <= 2449 then
            Mon = "Snow Demon"
            LevelQuest = 2
            NameQuest = "CandyQuest1"
            NameMon = "Snow Demon"
            CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
            CFrameMon = CFrame.new(-880.2006225585938, 71.24776458740234, -14538.609375)            
        elseif MyLevel >= 2450 and MyLevel <= 2474 then
            Mon = "Isle Outlaw"
            LevelQuest = 1
            NameQuest = "TikiQuest1"
            NameMon = "Isle Outlaw"
            CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
            CFrameMon = CFrame.new(-16442.814453125, 116.13899993896484, -264.4637756347656)
        elseif MyLevel >= 2475 and MyLevel <= 2524 then
            Mon = "Island Boy"
            LevelQuest = 2
            NameQuest = "TikiQuest1"
            NameMon = "Island Boy"
            CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
            CFrameMon = CFrame.new(-16901.26171875, 84.06756591796875, -192.88906860351562)
        elseif MyLevel >= 2525 and MyLevel <= 2550 then
            Mon = "Isle Champion"
            LevelQuest = 2
            NameQuest = "TikiQuest2"
            NameMon = "Isle Champion"
            CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
            CFrameMon = CFrame.new(-16641.6796875, 235.7825469970703, 1031.282958984375)
        elseif MyLevel >= 2550 and MyLevel <= 2574 then
            Mon = "Serpent Hunter"
            LevelQuest = 1
            NameQuest = "TikiQuest3"
            NameMon = "Serpent Hunter"
            CFrameQuest = CFrame.new(-16665.1914, 104.596405, 1579.69434, 0.951068401, -0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401)
            CFrameMon = CFrame.new(-16521.0625, 106.09285, 1488.78467, 0.469467044, 0, 0.882950008, 0, 1, 0, -0.882950008, 0, 0.469467044)
        elseif MyLevel >= 2575 then
            Mon = "Skull Slayer"
            LevelQuest = 2
            NameQuest = "TikiQuest3"
            NameMon = "Skull Slayer"
            CFrameQuest = CFrame.new(-16665.1914, 104.596405, 1579.69434, 0.951068401, -0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401)
            CFrameMon = CFrame.new(-16855.043, 122.457253, 1478.15308, -0.999392271, 0, -0.0348687991, 0, 1, 0, 0.0348687991, 0, -0.999392271)
        end
    end
end
function MaterialMon()
    local player = game.Players.LocalPlayer
    local humanoidRootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then return end
    local function shouldRequestEntrance(targetPosition, distanceThreshold)
        local distance = (humanoidRootPart.Position - targetPosition).Magnitude
        if distance >= distanceThreshold then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", targetPosition)
        end
    end
    if World1 then
        if SelectMaterial == "Angel Wings" then
            MMon = { "Shanda", "Royal Squad", "Royal Soldier", "Wysper", "Thunder God" }
            MPos = CFrame.new(-4698, 845, -1912)
            SP = "Default"
            local targetPosition = Vector3.new(-4607.82275, 872.54248, -1667.55688)
            shouldRequestEntrance(targetPosition, 10000)
        elseif SelectMaterial == "Leather + Scrap Metal" then
            MMon = { "Brute", "Pirate" }
            MPos = CFrame.new(-1145, 15, 4350)
            SP = "Default"
        elseif SelectMaterial == "Magma Ore" then
            MMon = { "Military Soldier", "Military Spy", "Magma Admiral" }
            MPos = CFrame.new(-5815, 84, 8820)
            SP = "Default"
        elseif SelectMaterial == "Fish Tail" then
            MMon = { "Fishman Warrior", "Fishman Commando", "Fishman Lord" }
            MPos = CFrame.new(61123, 19, 1569)
            SP = "Default"
            local targetPosition = Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875)
            shouldRequestEntrance(targetPosition, 17000)
        end
    elseif World2 then
        if SelectMaterial == "Leather + Scrap Metal" then
            MMon = { "Marine Captain" }
            MPos = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)
            SP = "Default"
        elseif SelectMaterial == "Magma Ore" then
            MMon = { "Magma Ninja", "Lava Pirate" }
            MPos = CFrame.new(-5428, 78, -5959)
            SP = "Default"
        elseif SelectMaterial == "Ectoplasm" then
            MMon = { "Ship Deckhand", "Ship Engineer", "Ship Steward", "Ship Officer" }
            MPos = CFrame.new(911.35827636719, 125.95812988281, 33159.5390625)
            SP = "Default"
            local targetPosition = Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875)
            shouldRequestEntrance(targetPosition, 18000)
        elseif SelectMaterial == "Mystic Droplet" then
            MMon = { "Water Fighter" }
            MPos = CFrame.new(-3385, 239, -10542)
            SP = "Default"
        elseif SelectMaterial == "Radioactive Material" then
            MMon = { "Factory Staff" }
            MPos = CFrame.new(295, 73, -56)
            SP = "Default"
        elseif SelectMaterial == "Vampire Fang" then
            MMon = { "Vampire" }
            MPos = CFrame.new(-6033, 7, -1317)
            SP = "Default"
        end
    elseif World3 then
        if SelectMaterial == "Leather + Scrap Metal" then
            MMon = { "Jungle Pirate", "Forest Pirate" }
            MPos = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375)
            SP = "Default"
        elseif SelectMaterial == "Fish Tail" then
            MMon = { "Fishman Raider", "Fishman Captain" }
            MPos = CFrame.new(-10993, 332, -8940)
            SP = "Default"
        elseif SelectMaterial == "Conjured Cocoa" then
            MMon = { "Chocolate Bar Battler", "Cocoa Warrior" }
            MPos = CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625)
            SP = "Default"
        elseif SelectMaterial == "Dragon Scale" then
            MMon = { "Dragon Crew Warrior" }
            MPos = CFrame.new(6594, 383, 139)
            SP = "Default"
        elseif SelectMaterial == "Gunpowder" then
            MMon = { "Pistol Billionaire" }
            MPos = CFrame.new(-469, 74, 5904)
            SP = "Default"
        elseif SelectMaterial == "Mini Tusk" then
            MMon = { "Mythological Pirate" }
            MPos = CFrame.new(-13545, 470, -6917)
            SP = "Default"
        end
    end
end

function Hop()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    function TPReturner()
        local Site
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. PlaceID .. "/servers/Public?sortOrder=Asc&limit=100"))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. PlaceID .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. foundAnything))
        end
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" then
            foundAnything = Site.nextPageCursor
        end
        local num = 0
        for _, v in pairs(Site.data) do
            local Possible = true
            local ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _, Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local _ = pcall(function()
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible then
                    table.insert(AllIDs, ID)
                    wait(0.1)
                    pcall(function()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(1)
                    break
                end
            end
        end
    end
    function Teleport()
        while wait() do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
            wait(HopDelay)
        end
    end
    Teleport()
end

if getgenv().Hopping then
    pcall(function()
        Hop()
    end)
end

if getgenv().FastAttack then
    pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MinhHieu-Deva/SpaceXHub/main/SPXFastAttack"))()
    end)
end

local lastHakiTime = 0
local hakiCooldown = 1
function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        local currentTime = tick()
        if currentTime - lastHakiTime >= hakiCooldown then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
            lastHakiTime = currentTime
        end
    end
end
local lastUnEquipTime = 0
local unEquipCooldown = 0.5
function UnEquipWeapon(Weapon)
    local currentTime = tick()
    if currentTime - lastUnEquipTime >= unEquipCooldown then
        if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
            getgenv().NotAutoEquip = true
            game.Players.LocalPlayer.Character[Weapon].Parent = game.Players.LocalPlayer.Backpack
            getgenv().NotAutoEquip = false
        end
        lastUnEquipTime = currentTime
    end
end
local lastEquipTime = 0
local equipCooldown = 0.5
function EquipWeapon(ToolSe)
    local currentTime = tick()
    if currentTime - lastEquipTime >= equipCooldown then        
        if not getgenv().NotAutoEquip then
            local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
            if tool then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
            end
        end
        lastEquipTime = currentTime
    end
end
function BTP(p)
    local player = game.Players.LocalPlayer
    local humanoidRootPart = player.Character.HumanoidRootPart
    local humanoid = player.Character.Humanoid
    local playerGui = player.PlayerGui.Main
    local targetPosition = p.Position
    local lastPosition = humanoidRootPart.Position
    repeat
        humanoid.Health = 0
        humanoidRootPart.CFrame = p
        playerGui.Quest.Visible = false
        if (humanoidRootPart.Position - lastPosition).Magnitude > 1 then
            lastPosition = humanoidRootPart.Position
            humanoidRootPart.CFrame = p
        end
        task.wait(0.5)
    until (p.Position - humanoidRootPart.Position).Magnitude <= 2000
end
function BTPZ(v209)
    local player = game.Players.LocalPlayer
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local rootPart = player.Character.HumanoidRootPart
        rootPart.CFrame = v209
    end
end
local lastTweenTime = 0
local tweenCooldown = 0.5
function fastpos(Pos)
    local currentTime = tick()
    if currentTime - lastTweenTime >= tweenCooldown then
        local Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 1000        
        local tween = game:GetService("TweenService"):Create(
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),
            { CFrame = Pos }
        )
        tween:Play()
        lastTweenTime = currentTime
    end
end
local lastTPBTime = 0
local tpbCooldown = 0.5
function TPB(pos, boat)
    local currentTime = tick()
    if currentTime - lastTPBTime >= tpbCooldown then
        local tween_s = game:GetService("TweenService")
        local distance = (boat.CFrame.Position - pos.Position).Magnitude
        local speed = getgenv().SpeedBoat
        local info = TweenInfo.new(distance / speed, Enum.EasingStyle.Linear)
        if distance <= 25 then
            return {Stop = function() end}
        else
            local tween = tween_s:Create(boat, info, {CFrame = pos})
            tween:Play()
            lastTPBTime = currentTime
            return {
                Stop = function()
                    tween:Cancel()
                end
            }
        end
    end
end
local lastEquipTime = 0
local equipCooldown = 0.2
function EquipAllWeapon()
    pcall(function()
        local currentTime = tick()
        if currentTime - lastEquipTime >= equipCooldown then
            for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA('Tool') and not (v.Name == "Summon Sea Beast" or v.Name == "Water Body" or v.Name == "Awakening") then
                    local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name)
                    if ToolHumanoid then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid)
                    end
                end
            end
            lastEquipTime = currentTime
        end
    end)
end
function CheckNearestTeleporter(aI)
    local MyLevel = game.Players.LocalPlayer.Data.Level.Value
    local vcspos = aI.Position
    local min = math.huge
    local min2 = math.huge
    local y = game.PlaceId
    local World1, World2, World3
    if y == 2753915549 then
        World1 = true
    elseif y == 4442272183 then
        World2 = true
    elseif y == 7449423635 then
        World3 = true
    end
    local TableLocations = {}
    if World3 then
        TableLocations = {
            ["Mansion"] = Vector3.new(-12471, 374, -7551),
            ["Hydra"] = Vector3.new(5659, 1013, -341),
            ["Caslte On The Sea"] = Vector3.new(-5092, 315, -3130),
            ["Floating Turtle"] = Vector3.new(-12001, 332, -8861),
            ["Beautiful Pirate"] = Vector3.new(5319, 23, -93),
            ["Temple Of Time"] = Vector3.new(28286, 14897, 103)
        }
    elseif World2 then
        TableLocations = {
            ["Flamingo Mansion"] = Vector3.new(-317, 331, 597),
            ["Flamingo Room"] = Vector3.new(2283, 15, 867),
            ["Cursed Ship"] = Vector3.new(923, 125, 32853),
            ["Zombie Island"] = Vector3.new(-6509, 83, -133)
        }
    elseif World1 then
        TableLocations = {
            ["Sky Island 1"] = Vector3.new(-4652, 873, -1754),
            ["Sky Island 2"] = Vector3.new(-7895, 5547, -380),
            ["Under Water Island"] = Vector3.new(61164, 5, 1820),
            ["Under Water Island Entrace"] = Vector3.new(3865, 5, -1926)
        }
    end
    local TableLocations2 = {}
    for r, v in pairs(TableLocations) do
        TableLocations2[r] = (v - vcspos).Magnitude
    end
    for r, v in pairs(TableLocations2) do
        if v < min then
            min = v
            min2 = v
        end
    end
    local choose
    for r, v in pairs(TableLocations2) do
        if v <= min then
            choose = TableLocations[r]
        end
    end
    local min3 = (vcspos - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if min2 <= min3 then
        return choose
    end
end    
function requestEntrance(aJ)
    local args = {"requestEntrance", aJ}
    game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(args))    
    local oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    local char = game.Players.LocalPlayer.Character.HumanoidRootPart
    char.CFrame = CFrame.new(oldcframe.X, oldcframe.Y + 50, oldcframe.Z)    
    task.wait(0.5)
end   
function topos(Tween_Pos)
    pcall(function()
        if game:GetService("Players").LocalPlayer 
            and game:GetService("Players").LocalPlayer.Character 
            and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") 
            and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") 
            and game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 
            and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart then
            if not TweenSpeed then
                TweenSpeed = getgenv().TweenSpeed
            end
            DefualtY = Tween_Pos.Y
            TargetY = Tween_Pos.Y
            targetCFrameWithDefualtY = CFrame.new(Tween_Pos.X, DefualtY, Tween_Pos.Z)
            targetPos = Tween_Pos.Position
            oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            Distance = (targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
            if Distance <= 300 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Tween_Pos
            end
            local aM = CheckNearestTeleporter(Tween_Pos)
            if aM then
                pcall(function()
                    tween:Cancel()
                end)
                requestEntrance(aM)
            end
            b1 = CFrame.new(
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
                DefualtY,
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
            )
            IngoreY = true
            if IngoreY and (b1.Position - targetCFrameWithDefualtY.Position).Magnitude > 5 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
                    DefualtY,
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
                )
                local tweenfunc = {}
                local aN = game:GetService("TweenService")
                local aO = TweenInfo.new(
                    (targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude / TweenSpeed,
                    Enum.EasingStyle.Linear
                )
                tween = aN:Create(
                    game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
                    aO,
                    {CFrame = targetCFrameWithDefualtY}
                )
                tween:Play()
                function tweenfunc:Stop()
                    tween:Cancel()
                end
                tween.Completed:Wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
                    TargetY,
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
                )
            else
                local tweenfunc = {}
                local aN = game:GetService("TweenService")
                local aO = TweenInfo.new(
                    (targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude / TweenSpeed,
                    Enum.EasingStyle.Linear
                )
                tween = aN:Create(
                    game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
                    aO,
                    {CFrame = Tween_Pos}
                )
                tween:Play()
                function tweenfunc:Stop()
                    tween:Cancel()
                end
                tween.Completed:Wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
                    TargetY,
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
                )
            end
            if not tween then
                return tween
            end
            return tweenfunc
        end
    end)
end
function StopTween(target)
    pcall(function()
        if not target then
            getgenv().StopTween = true            
            if tween then
                tween:Cancel()
                tween = nil
            end            
            local player = game:GetService("Players").LocalPlayer
            local character = player and player.Character
            local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
            if humanoidRootPart then
                humanoidRootPart.Anchored = true
                task.wait(0.1)
                humanoidRootPart.CFrame = humanoidRootPart.CFrame
                humanoidRootPart.Anchored = false
            end
            local bodyClip = humanoidRootPart and humanoidRootPart:FindFirstChild("BodyClip")
            if bodyClip then
                bodyClip:Destroy()
            end
            getgenv().StopTween = false
            getgenv().Clip = false
        end
    end)
end
spawn(function()
    while task.wait() do
        pcall(function()
            if getgenv().TeleportIsland or 
               getgenv().AutoFarm or 
               getgenv().AutoMaterial or 
               getgenv().MasteryFarm or 
               getgenv().AutoGetMelee or 
               getgenv().TeleportToFruit or 
               getgenv().AutoNewWorld or 
               getgenv().AutoThirdSea or 
               getgenv().AutoFactory or 
               getgenv().AutoPirateRaid or 
               getgenv().AutoEliteHunter or 
               getgenv().AutoTouchPadHaki or 
               getgenv().AutoRipIndra or
              getgenv().SummonRipIndra or 
               getgenv().AutoSoulReaper or 
                getgenv().SummonSoulReaper or
               getgenv().AutoDoughKing or 
             getgenv().SummonDoughKing or 
               getgenv().AutoDarkbeard or 
              getgenv().SummonDarkbeard or 
                getgenv().AutoKillAll or 
             getgenv().StartRaidLawBn or
               getgenv().DojoClaimQuest or 
               getgenv().DragonTalonUpgrade or 
               getgenv().BlazeEmberFarm or 
               getgenv().AutoObservationHakiV2 or 
               getgenv().AutoObservation or 
               getgenv().AutoFarmBoss or 
               getgenv().AutoFarmAllBoss or 
               getgenv().Auto_Dungeon or 
               getgenv().SailBoat or 
               getgenv().AutoFishBoat or 
               getgenv().AutoPirateBrigade or 
               getgenv().AutoPirateGrandBrigade or 
               getgenv().AutoTerrorshark or 
               getgenv().AutoSeaBest or 
               getgenv().AutoFrozenDimension or 
               getgenv().KillLevi or
               getgenv().UpgradeRaceV2 or
               getgenv().AutoCyborg or
               getgenv().AutoGhoul or
               getgenv().QuestTrain_2 or
               getgenv().TeleportMigare or
               getgenv().Tweentohighestpoint or
               getgenv().TeleportToGear or
               getgenv().AutoTrialRace or
               getgenv().AutoKillPlayerAfterTrial or
               getgenv().AutoRainbowHaki or
               getgenv().AutoSkullGuitar or
               getgenv().AutoGetCDK or
               getgenv().AutoTushita or
               getgenv().AutoSaber or
               getgenv().TeleportPlayer
            then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000, 100000, 100000)
                    Noclip.Velocity = Vector3.new(0, 0, 0)
                end
            else
                local bodyClip = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip")
                if bodyClip then
                    bodyClip:Destroy()
                end
            end
        end)
    end
end)
spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if getgenv().TeleportIsland or 
               getgenv().AutoFarm or 
               getgenv().AutoMaterial or 
               getgenv().MasteryFarm or 
               getgenv().AutoGetMelee or 
               getgenv().TeleportToFruit or 
               getgenv().AutoNewWorld or 
               getgenv().AutoThirdSea or 
               getgenv().AutoFactory or 
               getgenv().AutoPirateRaid or 
               getgenv().AutoEliteHunter or 
               getgenv().AutoTouchPadHaki or 
               getgenv().AutoRipIndra or
                getgenv().SummonRipIndra or  
            getgenv().AutoSoulReaper or 
              getgenv().SummonSoulReaper or
               getgenv().AutoDoughKing or 
             getgenv().SummonDoughKing or 
               getgenv().AutoDarkbeard or 
             getgenv().SummonDarkbeard or 
                getgenv().AutoKillAll or 
             getgenv().StartRaidLawBn or
               getgenv().DojoClaimQuest or 
               getgenv().DragonTalonUpgrade or 
               getgenv().BlazeEmberFarm or 
               getgenv().AutoObservationHakiV2 or 
               getgenv().AutoObservation or 
               getgenv().AutoFarmBoss or 
               getgenv().AutoFarmAllBoss or 
               getgenv().Auto_Dungeon or 
               getgenv().SailBoat or 
               getgenv().AutoFishBoat or 
               getgenv().AutoPirateBrigade or 
               getgenv().AutoPirateGrandBrigade or 
               getgenv().AutoTerrorshark or 
               getgenv().AutoSeaBest or 
               getgenv().AutoFrozenDimension or 
               getgenv().KillLevi or
               getgenv().UpgradeRaceV2 or
               getgenv().AutoCyborg or
               getgenv().AutoGhoul or
               getgenv().QuestTrain_2 or
               getgenv().TeleportMigare or
               getgenv().Tweentohighestpoint or
               getgenv().TeleportToGear or
               getgenv().AutoTrialRace or
               getgenv().AutoKillPlayerAfterTrial or
               getgenv().AutoRainbowHaki or
               getgenv().AutoSkullGuitar or
               getgenv().AutoGetCDK or
               getgenv().AutoTushita or
               getgenv().AutoSaber or
               getgenv().TeleportPlayer
            then
                for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        end)
    end)
end)
spawn(function()
    local lastCall = 0
    local callInterval = 1
    while wait() do
        if (getgenv().AutoFarm or getgenv().Kill_Trial_V4) and tick() - lastCall > callInterval then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken", true)
            end)
            lastCall = tick()
        end
    end
end)
spawn(function()
    local lastPosUpdate = tick()
    while task.wait(0.1) do
        if getgenv().AutoSeaBest and CheckSeaBeast() then
            local currentTime = tick()
            if currentTime - lastPosUpdate >= 0.5 then
                Pos = CFrame.new(math.random(-600, 600), math.random(0, 300), math.random(-600, 600))
                lastPosUpdate = currentTime
            end
        end
    end
end)
local player = game.Players.LocalPlayer
local function IsEntityAlive(entity)
    if not entity then return false end
    local humanoid = entity:FindFirstChild("Humanoid")
    return humanoid and humanoid.Health > 0
end
local function GetEnemiesInRange(character, range)
    local enemies = game:GetService("Workspace").Enemies:GetChildren()
    local players = game:GetService("Players"):GetPlayers()
    local targets = {}
    local playerPos = character:GetPivot().Position
    for _, enemy in ipairs(enemies) do
        local rootPart = enemy:FindFirstChild("HumanoidRootPart")
        if rootPart and IsEntityAlive(enemy) then
            local distance = (rootPart.Position - playerPos).Magnitude
            if distance <= range then
                table.insert(targets, enemy)
            end
        end
    end
    for _, otherPlayer in ipairs(players) do
        if otherPlayer ~= player and otherPlayer.Character then
            local rootPart = otherPlayer.Character:FindFirstChild("HumanoidRootPart")
            if rootPart and IsEntityAlive(otherPlayer.Character) then
                local distance = (rootPart.Position - playerPos).Magnitude
                if distance <= range then
                    table.insert(targets, otherPlayer.Character)
                end
            end
        end
    end
    return targets
end
function AttackNoCoolDown()
    local character = player.Character
    if not character then return end
    local equippedWeapon
    for _, item in ipairs(character:GetChildren()) do
        if item:IsA("Tool") then
            equippedWeapon = item
            break
        end
    end
    if not equippedWeapon then return end
    local enemiesInRange = GetEnemiesInRange(character, 60)
    if equippedWeapon:FindFirstChild("LeftClickRemote") then
        local attackCount = 1  
        for _, enemy in ipairs(enemiesInRange) do
            local rootPart = enemy:FindFirstChild("HumanoidRootPart")
            if rootPart then
                local direction = (rootPart.Position - character:GetPivot().Position).Unit
                equippedWeapon.LeftClickRemote:FireServer(direction, attackCount)
                attackCount = attackCount + 1
            end
        end
    else
        local targets, mainTarget = {}, nil
        for _, enemy in ipairs(enemiesInRange) do
            if not enemy:GetAttribute("IsBoat") then
                local head = enemy:FindFirstChild("Head")
                if head then
                    table.insert(targets, { enemy, head })
                    mainTarget = head
                end
            end
        end
        if mainTarget then
            local storage = game:GetService("ReplicatedStorage")
            local attackEvent = storage:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterAttack")
            local hitEvent = storage:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterHit")
            pcall(function()
                attackEvent:FireServer(0.1)
                hitEvent:FireServer(mainTarget, targets)
            end)
        end
    end
end

local Window = loadstring(game:HttpGet("https://pastefy.app/kyYdSx0A/raw"))()
Window:CreateWindow({
    Title = "Banana Cat Hub",
    Subtitle = " [ Freemium ]",
    Image = "rbxassetid://10709770005"
})
local Info = Window:AddTab("Infomation")
local Shop = Window:AddTab("Shop")
local Status = Window:AddTab("Status and Server")
local Player = Window:AddTab("LocalPlayer")
local Setting = Window:AddTab("Setting Farm")
local Skills = Window:AddTab("Hold and Select Skill")
local Farm = Window:AddTab("Farming")
local Stack = Window:AddTab("Stack Farming")
local Other = Window:AddTab("Farming Other")
local Fruit = Window:AddTab("Fruit and Raid, Dungeon")
local Sea = Window:AddTab("Sea Event")
local Race = Window:AddTab("Upgrade Race")
local Get = Window:AddTab("Get and Upgrade Items")
local Volcano = Window:AddTab("Volcano Event")
local Visual = Window:AddTab("ESP")
local Combat = Window:AddTab("PVP")
local Webhook = Window:AddTab("Tab Webhook")
local Misc = Window:AddTab("Setting")

local InfoSection = Info:AddSection("Infomation", false)

local ShopSection = Shop:AddSection("Misc Shop", false)

local Code = {
    "WildDares",
    "BossBuild",
    "GetPranked",
    "Sub2OfficialNoobie",
    "Sub2Daigrock",
    "Sub2NoobMaster123",
    "Bluxxy",
    "JCWK",
    "Enyu_is_Pro",
    "Sub2Fer999",
    "kittgaming",
    "TheGreatAce",
    "StrawHatMaine",
    "TantaiGaming",
    "Axiore",
    "SUB2GAMERROBOT_EXP1",
    "MagicBus",
    "StarcodeHEO",
    "Sub2CaptainMaui",
    "FIGHT4FRUIT",
    "EARN_FRUITS",
	 "NOMOREHACK"
}

ShopSection:AddButton({
    Title = "Redeem Code",
    Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local RedeemRemote = ReplicatedStorage:FindFirstChild("Remotes")
        if not RedeemRemote then return end
        
        local RedeemFunction = RedeemRemote:FindFirstChild("Redeem")
        if not RedeemFunction then return end
        
        local delayBetweenRequests = 0.5
        for i, v in pairs(Code) do
            spawn(function()
                pcall(function()
                    RedeemFunction:InvokeServer(v)
                end)
                wait(delayBetweenRequests)
            end)
        end
    end
})

ShopSection:AddButton({
    Title = "Teleport Old World",
    Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local CommF_Remote = ReplicatedStorage:FindFirstChild("Remotes")
        if CommF_Remote then
            CommF_Remote = CommF_Remote:FindFirstChild("CommF_")
            if CommF_Remote then
                pcall(function()
                    CommF_Remote:InvokeServer("TravelMain")
                end)
            end
        end
    end
})

ShopSection:AddButton({
    Title = "Teleport New World",
    Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local CommF_Remote = ReplicatedStorage:FindFirstChild("Remotes")
        if CommF_Remote then
            CommF_Remote = CommF_Remote:FindFirstChild("CommF_")
            if CommF_Remote then
                pcall(function()
                    CommF_Remote:InvokeServer("TravelDressrosa")
                end)
            end
        end
    end
})

ShopSection:AddButton({
    Title = "Teleport Third World",
    Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local CommF_Remote = ReplicatedStorage:FindFirstChild("Remotes")
        if CommF_Remote then
            CommF_Remote = CommF_Remote:FindFirstChild("CommF_")
            if CommF_Remote then
                pcall(function()
                    CommF_Remote:InvokeServer("TravelZou")
                end)
            end
        end
    end
})

ShopSection:AddButton({
    Title = "Buy Dual Flintlock",
    Callback = function()
        pcall(function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Flintlock")
        end)
    end
})

ShopSection:AddButton({
    Title = "Reroll Race",
    Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local CommF_ = ReplicatedStorage:FindFirstChild("Remotes") and ReplicatedStorage.Remotes:FindFirstChild("CommF_")
        if CommF_ then
            pcall(function()
                CommF_:InvokeServer("BlackbeardReward", "Reroll", "1")
                CommF_:InvokeServer("BlackbeardReward", "Reroll", "2")
            end)
        end
    end
})

ShopSection:AddButton({
    Title = "Reset Stats",
    Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local CommF_ = ReplicatedStorage:FindFirstChild("Remotes") and ReplicatedStorage.Remotes:FindFirstChild("CommF_")
        if CommF_ then
            pcall(function()
                CommF_:InvokeServer("BlackbeardReward", "Refund", "1")
                CommF_:InvokeServer("BlackbeardReward", "Refund", "2")
            end)
        end
    end
})


local isBuyingCyborg = false
ShopSection:AddButton({
    Title = "Buy Race Cyborg",
    Callback = function()
        if not isBuyingCyborg then
            isBuyingCyborg = true
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local CommF_ = ReplicatedStorage:FindFirstChild("Remotes") and ReplicatedStorage.Remotes:FindFirstChild("CommF_")
            if CommF_ then
                pcall(function()
                    CommF_:InvokeServer("CyborgTrainer", "Buy")
                end)
            end
            wait(0.5)
            isBuyingCyborg = false
        end
    end
})

ShopSection:AddButton({
    Title = "Buy Race Ghoul",
    Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local CommF_ = ReplicatedStorage:FindFirstChild("Remotes") and ReplicatedStorage.Remotes:FindFirstChild("CommF_")
        if CommF_ then
            pcall(function()
                CommF_:InvokeServer("Ectoplasm", "BuyCheck", 4)
                wait(0.5)
                CommF_:InvokeServer("Ectoplasm", "Change", 4)
            end)
        end
    end
})

local MeleeSection = Shop:AddSection("Fighting Shop", false)

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LP = Players.LocalPlayer

local SEA
if game.PlaceId == 2753915549 or game.PlaceId == 85211729168715 then
    SEA = 1
elseif game.PlaceId == 4442272183 or game.PlaceId == 79091703265657 then
    SEA = 2
elseif game.PlaceId == 7449423635 or game.PlaceId == 100117331123089 then
    SEA = 3
else
    return
end

_G.GetMelee = false
local Banana1 = nil
local Banana2 = nil
local TargetPos = nil

local NPCS = {
    BlackLeg = {[1] = {Vector3.new(-988, 13, 3996)}, [2] = {Vector3.new(-4750.61, 35.08, -4846.33)}, [3] = {Vector3.new(-5043.64, 371.35, -3183.40)}},
    Electro = {[1] = {Vector3.new(-5382.27, 14.15, -2150.34)}, [2] = {Vector3.new(-4863.81, 35.08, -4767.54)}, [3] = {Vector3.new(-4993.20, 314.56, -3198.06)}},
    FishmanKarate = {[1] = {Vector3.new(61584.35, 18.85, 988.89)}, [2] = {Vector3.new(-4960.04, 35.08, -4662.67)}, [3] = {Vector3.new(-5017.39, 371.35, -3187.53)}},
    Superhuman = {[2] = {Vector3.new(1378.05, 247.43, -5189.37)}, [3] = {Vector3.new(-4997.53, 371.35, -3197.46)}},
    DeathStep = {[2] = {Vector3.new(6360.04, 296.67, -6763.93)}, [3] = {Vector3.new(-4997.64, 314.56, -3220.37)}},
    SharkmanKarate = {[2] = {Vector3.new(-2602.40, 239.22, -10314.75)}, [3] = {Vector3.new(-4970.48, 314.56, -3225.04)}},
    ElectricClaw = {[3] = {Vector3.new(-10369.83, 331.69, -10126.49)}},
    DragonTalon = {[3] = {Vector3.new(5662.03, 1211.32, 858.60)}},
    GodHuman = {[3] = {Vector3.new(-13775.56, 334.66, -9877.67)}},
    SanguineArt = {[3] = {Vector3.new(-16514.86, 23.18, -190.84)}}
}

local function HRP()
    return LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
end

local function EnsureFly()
    local hrp = HRP()
    if not hrp then return end

    if not Banana1 or Banana1.Parent ~= hrp then
        if Banana1 then Banana1:Destroy() end
        Banana1 = Instance.new("LinearVelocity")
        Banana1.Attachment0 = hrp:FindFirstChildOfClass("Attachment") or Instance.new("Attachment", hrp)
        Banana1.MaxForce = math.huge
        Banana1.VectorVelocity = Vector3.zero
        Banana1.Parent = hrp
    end

    if not Banana2 or Banana2.Parent ~= hrp then
        if Banana2 then Banana2:Destroy() end
        Banana2 = Instance.new("AlignOrientation")
        Banana2.Attachment0 = hrp:FindFirstChildOfClass("Attachment")
        Banana2.MaxTorque = math.huge
        Banana2.Responsiveness = 200
        Banana2.Parent = hrp
    end
end

local function StopFly()
    RunService:UnbindFromRenderStep("GetMelee")
    if Banana1 then Banana1:Destroy() end
    Banana1 = nil
    if Banana2 then Banana2:Destroy() end
    Banana2 = nil
    TargetPos = nil
end

local function FlyTo(pos)
    TargetPos = pos

    RunService:BindToRenderStep("GetMelee", Enum.RenderPriority.Character.Value + 1, function()
        if not _G.GetMelee then 
            StopFly() 
            return 
        end

        local hrp = HRP()
        if not hrp then return end

        EnsureFly()

        for _, v in ipairs(LP.Character:GetDescendants()) do
            if v:IsA("BasePart") then 
                v.CanCollide = false 
            end
        end

        local delta = TargetPos - hrp.Position
        local dist = delta.Magnitude

        if dist <= 3 then
            Banana1.VectorVelocity = Vector3.zero
            hrp.AssemblyLinearVelocity = Vector3.zero
            hrp.CFrame = CFrame.new(TargetPos)
            return
        end

        local dir = delta.Unit
        Banana1.VectorVelocity = dir * math.clamp(dist * 6, 120, 330)
        Banana2.CFrame = CFrame.lookAt(hrp.Position, hrp.Position + dir)
    end)
end

local function Buy(style, remote)
    task.spawn(function()
        local pos = NPCS[style] and NPCS[style][SEA]
        if not pos then 
            return 
        end

        FlyTo(pos[1])

        repeat 
            task.wait()
        until (HRP() and (HRP().Position - pos[1]).Magnitude <= 4) or not _G.GetMelee

        if _G.GetMelee then
            pcall(function()
                ReplicatedStorage.Remotes.CommF_:InvokeServer(remote)
            end)
        end
    end)
end

local function StopAllBuy()
    _G.GetMelee = false
    StopFly()
end

LP.CharacterAdded:Connect(function()
    task.wait(0.4)
    if _G.GetMelee and TargetPos then
        FlyTo(TargetPos)
    end
end)

MeleeSection:AddToggle({
    Title = "Black Leg",
    Default = false,
    Callback = function(v)
        StopAllBuy()
        if v then
            _G.GetMelee = true
            Buy("BlackLeg", "BuyBlackLeg")
        end
    end
})

MeleeSection:AddToggle({
    Title = "Fishman Karate",
    Default = false,
    Callback = function(v)
        StopAllBuy()
        if v then
            _G.GetMelee = true
            Buy("FishmanKarate", "BuyFishmanKarate")
        end
    end
})

MeleeSection:AddToggle({
    Title = "Electro",
    Default = false,
    Callback = function(v)
        StopAllBuy()
        if v then
            _G.GetMelee = true
            Buy("Electro", "BuyElectro")
        end
    end
})

MeleeSection:AddToggle({
    Title = "Dragon Breath",
    Default = false,
    Callback = function(v)
	if v then 
	_G.DragonBreath = true
			end
    end
})

MeleeSection:AddToggle({
    Title = "Superhuman",
    Default = false,
    Callback = function(v)
        StopAllBuy()
        if v then
            _G.GetMelee = true
            Buy("Superhuman", "BuySuperhuman")
        end
    end
})

MeleeSection:AddToggle({
    Title = "Death Step",
    Default = false,
    Callback = function(v)
        StopAllBuy()
        if v then
            _G.GetMelee = true
            Buy("DeathStep", "BuyDeathStep")
        end
    end
})

MeleeSection:AddToggle({
    Title = "Sharkman Karate",
    Default = false,
    Callback = function(v)
        StopAllBuy()
        if v then
            _G.GetMelee = true
            Buy("SharkmanKarate", "BuySharkmanKarate")
        end
    end
})

MeleeSection:AddToggle({
    Title = "Electric Claw",
    Default = false,
    Callback = function(v)
        StopAllBuy()
        if v then
            _G.GetMelee = true
            Buy("ElectricClaw", "BuyElectricClaw")
        end
    end
})

MeleeSection:AddToggle({
    Title = "Dragon Talon",
    Default = false,
    Callback = function(v)
        StopAllBuy()
        if v then
            _G.GetMelee = true
            Buy("DragonTalon", "BuyDragonTalon")
        end
    end
})

MeleeSection:AddToggle({
    Title = "God Human",
    Default = false,
    Callback = function(v)
        StopAllBuy()
        if v then
            _G.GetMelee = true
            Buy("GodHuman", "BuyGodhuman")
        end
    end
})

MeleeSection:AddToggle({
    Title = "Sanguine Art",
    Default = false,
    Callback = function(v)
        StopAllBuy()
        if v then
            _G.GetMelee = true
            Buy("SanguineArt", "BuySanguineArt")
        end
    end
})

local AlbSection = Shop:AddSection("Abilities Shop", false)

AlbSection:AddButton({
    Title = "Skyjump [$10,000 Beli]",
    Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local CommF_ = ReplicatedStorage:FindFirstChild("Remotes")
        if CommF_ then
            CommF_ = CommF_:FindFirstChild("CommF_")
            if CommF_ then
                pcall(function()
                    CommF_:InvokeServer("BuyHaki", "Geppo")
                end)
            end
        end
    end
})

AlbSection:AddButton({
    Title = "Buso Haki [$25,000 Beli]",
    Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local CommF_ = ReplicatedStorage:FindFirstChild("Remotes")
        if CommF_ then
            CommF_ = CommF_:FindFirstChild("CommF_")
            if CommF_ then
                pcall(function()
                    CommF_:InvokeServer("BuyHaki", "Buso")
                end)
            end
        end
    end
})

AlbSection:AddButton({
    Title = "Observation Haki [$750,000 Beli]",
    Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local CommF_ = ReplicatedStorage:FindFirstChild("Remotes")
        if CommF_ then
            CommF_ = CommF_:FindFirstChild("CommF_")
            if CommF_ then
                pcall(function()
                    CommF_:InvokeServer("KenTalk", "Buy")
                end)
            end
        end
    end
})

AlbSection:AddButton({
    Title = "Soru [$100,000 Beli]",
    Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local CommF_ = ReplicatedStorage:FindFirstChild("Remotes")
        if CommF_ then
            CommF_ = CommF_:FindFirstChild("CommF_")
            if CommF_ then
                pcall(function()
                    CommF_:InvokeServer("BuyHaki", "Soru")
                end)
            end
        end
    end
})


local StatusSection = Status:AddSection("Status and Server", false)

local Time = StatusSection:AddParagraph({
    Title = "Time Zone",
    Desc = ""
})

function UpdateOS()
    local date = os.date("*t")
    local hour = (date.hour) % 24
    local ampm = hour < 12 and "AM" or "PM"
    local timezone = string.format("%02i:%02i:%02i %s", ((hour - 1) % 12) + 1, date.min, date.sec, ampm)
    local datetime = string.format("%02d/%02d/%04d", date.day, date.month, date.year)
    local LocalizationService = game:GetService("LocalizationService")
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer
    local result, code = pcall(function()
        return LocalizationService:GetCountryRegionForPlayerAsync(player)
    end)
    Time:SetDesc(datetime .. " - " .. timezone .. " [ " .. code .. " ]")
end

spawn(function()
    while task.wait() do
        UpdateOS()
        game:GetService("RunService").RenderStepped:Wait()
    end
end)

local Timmessss = StatusSection:AddParagraph({
    Title = "Timer",
    Desc = ""
})

function UpdateTime()
    local GameTime = math.floor(workspace.DistributedGameTime + 0.5)
    local Hour = math.floor(GameTime / (60 ^ 2)) % 24
    local Minute = math.floor(GameTime / 60) % 60
    local Second = GameTime % 60
    Timmessss:SetDesc(Hour .. " Hour (h) " .. Minute .. " Minute (m) " .. Second .. " Second (s) ")
end

spawn(function()
    while task.wait() do
        UpdateTime()
        task.wait()
    end
end)

local Miragecheck = StatusSection:AddParagraph({
    Title = "Mirage Island",
    Desc = "Status: "
})

spawn(function()
    pcall(function()
        while task.wait() do
            if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
                Miragecheck:SetDesc('✅️')
            else
                Miragecheck:SetDesc('❌️')
            end
        end
    end)
end)

local Kitsunecheck = StatusSection:AddParagraph({
    Title = "Kitsune Island",
    Desc = "Status: "
})

spawn(function()
    pcall(function()
        while task.wait() do
            if game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland") then
                Kitsunecheck:SetDesc('✅️')
            else
                Kitsunecheck:SetDesc('❌️')
            end
        end
    end)
end)

local CPrehistoriccheck = StatusSection:AddParagraph({
    Title = "Prehistoric Island",
    Desc = "Status: "
})

spawn(function()
    pcall(function()
        while task.wait() do
            if game.Workspace._WorldOrigin.Locations:FindFirstChild('Prehistoric Island') then
                CPrehistoriccheck:SetDesc('✅️')
            else
                CPrehistoriccheck:SetDesc('❌️')
            end
        end
    end)
end)

local FrozenIsland = StatusSection:AddParagraph({
    Title = "Frozen Dimension",
    Desc = "Status: "
})

spawn(function()
    pcall(function()
        while task.wait() do
            if game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension') then
                FrozenIsland:SetDesc('✅️')
            else
                FrozenIsland:SetDesc('❌️')
            end
        end
    end)
end)

local MobCakePrince = StatusSection:AddParagraph({
    Title = "Dimension Killed",
    Desc = ""
})

spawn(function()
    while task.wait() do
        pcall(function()
            local response = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
            local len = string.len(response)
            if len == 88 then
                MobCakePrince:SetDesc("Kill : " .. string.sub(response, 39, 41))
            elseif len == 87 then
                MobCakePrince:SetDesc("Kill : " .. string.sub(response, 39, 40))
            elseif len == 86 then
                MobCakePrince:SetDesc("Kill : " .. string.sub(response, 39, 39) .. " ")
            else
                MobCakePrince:SetDesc("Cake Prince : ✅️")
            end
        end)
    end
end)

local TyrantStatus = StatusSection:AddParagraph({
    Title = "Tyrant of the Skies",
    Desc = "Status: "
})

spawn(function()
    pcall(function()
        while task.wait() do
            if game:GetService("Workspace").Enemies:FindFirstChild("Tyrant of the Skies") then
                TyrantStatus:SetDesc("Status : ✅️")
            else
                TyrantStatus:SetDesc("Status : ❌️")
            end
        end
    end)
end)

local CheckRip = StatusSection:AddParagraph({
    Title = "Rip_Indra",
    Desc = "Status: "
})

spawn(function()
    while task.wait() do
        pcall(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form") 
            or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
                CheckRip:SetDesc("Status : ✅️")
            else
                CheckRip:SetDesc("Status : ❌️")
            end
        end)
    end
end)

local CheckDoughKing = StatusSection:AddParagraph({
    Title = "Dough King",
    Desc = "Status: "
})

spawn(function()
    while task.wait() do
        pcall(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") 
            or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                CheckDoughKing:SetDesc("Status : ✅️")
            else
                CheckDoughKing:SetDesc("Status : ❌️")
            end
        end)
    end
end)

local EliteHunter = StatusSection:AddParagraph({
    Title = "Elite Hunter",
    Desc = "Status: "
})

spawn(function()
    while task.wait() do
        pcall(function()
            local rs = game:GetService("ReplicatedStorage")
            local ws = game:GetService("Workspace").Enemies
            local progress = rs.Remotes.CommF_:InvokeServer("EliteHunter", "Progress")
            if rs:FindFirstChild("Diablo") or rs:FindFirstChild("Deandre") or rs:FindFirstChild("Urban")
            or ws:FindFirstChild("Diablo") or ws:FindFirstChild("Deandre") or ws:FindFirstChild("Urban") then
                EliteHunter:SetDesc("Status : ✅️ | Killed: " .. progress)
            else
                EliteHunter:SetDesc("Status : ❌️ | Killed: " .. progress)
            end
        end)
    end
end)

local Pullever = StatusSection:AddParagraph({
    Title = "Pull Lever",
    Desc = "Status: "
})

spawn(function()
    while task.wait() do
        pcall(function()
            if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CheckTempleDoor") then
                Pullever:SetDesc("✅")
            else
                Pullever:SetDesc("❌")
            end
        end)
    end
end)

local FM = StatusSection:AddParagraph({
    Title = "Full Moon",
    Desc = ""
})

spawn(function()
    while task.wait() do
        pcall(function()
            local moonId = game:GetService("Lighting").Sky.MoonTextureId
            if moonId == "http://www.roblox.com/asset/?id=9709149431" then
                FM:SetDesc("Moon: 5/5")
            elseif moonId == "http://www.roblox.com/asset/?id=9709149052" then
                FM:SetDesc("Moon: 4/5")
            elseif moonId == "http://www.roblox.com/asset/?id=9709143733" then
                FM:SetDesc("Moon: 3/5")
            elseif moonId == "http://www.roblox.com/asset/?id=9709150401" then
                FM:SetDesc("Moon: 2/5")
            elseif moonId == "http://www.roblox.com/asset/?id=9709149680" then
                FM:SetDesc("Moon: 1/5")
            else
                FM:SetDesc("Moon: 0/5")
            end
        end)
    end
end)

local LegendarySword = StatusSection:AddParagraph({
    Title = "Legendary Sword",
    Desc = "Status: "
})

spawn(function()
    pcall(function()
        while task.wait() do
            local rs = game:GetService("ReplicatedStorage").Remotes.CommF_   
            if rs:InvokeServer("LegendarySwordDealer", "1") then
                LegendarySword:SetDesc("Shisui")
            elseif rs:InvokeServer("LegendarySwordDealer", "2") then
                LegendarySword:SetDesc("Wando")
            elseif rs:InvokeServer("LegendarySwordDealer", "3") then
                LegendarySword:SetDesc("Saddi")
            else
                LegendarySword:SetDesc("Not Found Legend Swords")
            end
        end
    end)
end)

local Bone = StatusSection:AddParagraph({
    Title = "Bone",
    Desc = ""
})

spawn(function()
    pcall(function()
        while task.wait() do
            local bones = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Check")
            Bone:SetDesc("You Have : " .. tostring(bones) .. " Bones")
        end
    end)
end)

local ServerSection = StatusTab:AddSection("Server", false)

ServerSection:AddTextBox({
    Title = "Input Job ID",
    Placeholder = "Job ID",
    Callback = function(Value)
        getgenv().Job = Value
    end
})

ServerSection:AddToggle({
    Title = "Spam Join",
    Default = false,
    Callback = function(Value)
        getgenv().Join = Value
    end
})

spawn(function()
    while task.wait() do
        if getgenv().Join then
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, getgenv().Job, game.Players.LocalPlayer)
        end
    end
end)

ServerSection:AddButton({
    Title = "Join Server",
    Callback = function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, getgenv().Job, game.Players.LocalPlayer)
    end
})

ServerSection:AddButton({
    Title = "Copy JobId",
    Callback = function()
        setclipboard(tostring(game.JobId))
    end
})

ServerSection:AddButton({
    Title = "Rejoin Server",
    Callback = function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
    end
})

ServerSection:AddButton({
    Title = "Hop Server",
    Callback = function()
        Hop()
    end
})

ServerSection:AddButton({
    Title = "Hop Server Less People",
    Callback = function()
        local Http = game:GetService("HttpService")
        local TPS = game:GetService("TeleportService")
        local Players = game:GetService("Players")
        local plr = Players.LocalPlayer
        local Api = "https://games.roblox.com/v1/games/"
        local _place = game.PlaceId
        local _servers = Api .. _place .. "/servers/Public?sortOrder=Asc&limit=100"
        
        local function ListServers(cursor)
            local Raw = game:HttpGet(_servers .. ((cursor and "&cursor=" .. cursor) or ""))
            return Http:JSONDecode(Raw)
        end
        
        local Server, Next
        repeat
            local Servers = ListServers(Next)
            Server = Servers.data[1]
            Next = Servers.nextPageCursor
        until Server
        TPS:TeleportToPlaceInstance(_place, Server.id, plr)
    end
})

local PlayerSection = Local:AddSection("Local Player", false)

PlayerSection:AddButton({
    Title = "Stop Tween",
    Callback = function()
        getgenv().StopTween = true
        Library:Notify({
            Title = "UI Library",
            Description = "Stop Tween successfully!",
            Duration = 3
        })
    end
})

PlayerSection:AddButton({
    Title = "Fix UI Button Game",
    Callback = function()
     -- Nothing Here
    end
})

PlayerSection:AddButton({
    Title = "Open Title",
    Callback = function()
        local args = {"getTitles"}
        local success, result = pcall(function()
            return game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)
        if success then
            game.Players.LocalPlayer.PlayerGui.Main.Titles.Visible = true
        end
    end
})
local lastButtonPressTime = 0
local buttonCooldown = 2
PlayerSection:AddButton({
    Title = "Open Color",
    Callback = function()
        if tick() - lastButtonPressTime >= buttonCooldown then
            lastButtonPressTime = tick()
            local colorsGui = game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("Colors")
            if colorsGui then
                colorsGui.Visible = true
            end
        end
    end
})


local PointStats = 1
local StatsMode = "Melee"
local Dropdown = PlayerSection:AddDropdown({
    Title = "Select Stats",
    Values = {"Melee", "Defense", "Sword", "Gun", "Fruit"},
    Default = "Melee",
    Callback = function(Value)
        StatsMode = Value
    end
})

local Toggle = PlayerSection:AddToggle({
    Title = "Auto Stats",
    Default = false,
    Callback = function(Value)
        getgenv().AutoStats = Value
    end
})

spawn(function()
    while task.wait(0.5) do
        local player = game.Players.LocalPlayer
        if player and player:FindFirstChild("Data") and player.Data:FindFirstChild("Points") then
            if player.Data.Points.Value >= PointStats and getgenv().AutoStats then
                local statTypes = {
                    Melee = "Melee",
                    Defense = "Defense",
                    Sword = "Sword",
                    Gun = "Gun",
                    Fruit = "Demon Fruit"
                }
                local selectedStat = statTypes[StatsMode]
                if selectedStat then
                    pcall(function()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", selectedStat, PointStats)
                    end)
                end
            end
        end
    end
end)

local canChangeTeam = true
local debounceTime = 2
local TeamDropdown = PlayerSection:AddDropdown({
    Title = "Select Team",
    Values = {"Pirates", "Marines"},
    Default = "Pirates"
})

PlayerSection:AddButton({
    Title = "Change Team",
    Callback = function()
        if not canChangeTeam then
            return
        end
        
        local selectedTeam = TeamDropdown:GetValue()
        
        canChangeTeam = false
        task.wait(debounceTime)
        
        pcall(function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", selectedTeam)
        end)
        
        canChangeTeam = true
    end
})

local NoclipToggle = PlayerSection:AddToggle({
    Title = "Noclip",
    Default = false,
    Callback = function(Value)
        getgenv().Noclip = Value
    end
})

game:GetService("RunService").RenderStepped:Connect(function()
    if getgenv().Noclip then
        local char = game.Players.LocalPlayer.Character
        if char then
            for _, v in pairs(char:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end
        end
    end
end)


local NPCValues = {}
if World1 then
    NPCValues = {
        "Random Devil Fruit",
        "Blox Fruits Dealer",
        "Remove Devil Fruit",
        "Ability Teacher",
        "Dark Step",
        "Electro",
        "Fishman Karate"
    }
elseif World2 then
    NPCValues = {
        "Dragon Breath",
        "Mysterious Man",
        "Mysterious Scientist",
        "Awakening Expert",
        "Nerd",
        "Bar Manager",
        "Blox Fruits Dealer",
        "Trevor",
        "Enhancement Editor",
        "Pirate Recruiter",
        "Marines Recruiter",
        "Chemist",
        "Cyborg",
        "Ghoul Mark",
        "Guashiem",
        "El Admin",
        "El Rodolfo",
        "Arowe"
    }
elseif World3 then
    NPCValues = {
        "Blox Fruits Dealer",
        "Remove Devil Fruit",
        "Horned Man",
        "Hungey Man",
        "Previous Hero",
        "Butler",
        "Lunoven",
        "Trevor",
        "Elite Hunter",
        "Player Hunter",
        "Uzoth"
    }
end

local Dropdown = PlayerSection:AddDropdown({
    Title = "Select NPC",
    Values = NPCValues,
    Default = NPCValues[1]
})

local Toggle = PlayerSection:AddToggle({
    Title = "Teleport To NPC",
    Default = false,
    Callback = function(Value)
        getgenv().TeleportNPC = Value
    end
})

spawn(function()
    while task.wait() do
        if getgenv().TeleportNPC then
            local SelectNPC = Dropdown:GetValue()
            
            if World1 then
                if SelectNPC == "Random Devil Fruit" then
                    topos(CFrame.new(-12491, 337, -7449))
                elseif SelectNPC == "Blox Fruits Dealer" then
                    topos(CFrame.new(-12511, 337, -7448))
                elseif SelectNPC == "Remove Devil Fruit" then
                    topos(CFrame.new(-5571, 1089, -2661))
                elseif SelectNPC == "Ability Teacher" then
                    topos(CFrame.new(-1057.67822, 9.65220833, 1799.49146))
                elseif SelectNPC == "Dark Step" then
                    topos(CFrame.new(-987.873047, 13.7778397, 3989.4978))
                elseif SelectNPC == "Electro" then
                    topos(CFrame.new(-5389.49561, 13.283, -2149.80151))
                elseif SelectNPC == "Fishman Karate" then
                    topos(CFrame.new(61581.8047, 18.8965912, 987.832703))
                end
            elseif World2 then
                if SelectNPC == "Dragon Breath" then
                    topos(CFrame.new(703.372986, 186.985519, 654.522034))
                elseif SelectNPC == "Mysterious Man" then
                    topos(CFrame.new(-2574.43335, 1627.92371, -3739.35767))
                elseif SelectNPC == "Mysterious Scientist" then
                    topos(CFrame.new(-6437.87793, 250.645355, -4498.92773))
                elseif SelectNPC == "Awakening Expert" then
                    topos(CFrame.new(-408.098846, 16.0459061, 247.432846))
                elseif SelectNPC == "Nerd" then
                    topos(CFrame.new(-401.783722, 73.0859299, 262.306702))
                elseif SelectNPC == "Bar Manager" then
                    topos(CFrame.new(-385.84726, 73.0458984, 316.088806))
                elseif SelectNPC == "Blox Fruits Dealer" then
                    topos(CFrame.new(-12511, 337, -7448))
                elseif SelectNPC == "Trevor" then
                    topos(CFrame.new(-341.498322, 331.886444, 643.024963))
                elseif SelectNPC == "Enhancement Editor" then
                    topos(CFrame.new(-346.820221, 72.9856339, 1194.36218))
                elseif SelectNPC == "Pirate Recruiter" then
                    topos(CFrame.new(-428.072998, 72.9495239, 1445.32422))
                elseif SelectNPC == "Marines Recruiter" then
                    topos(CFrame.new(-1349.77295, 72.9853363, -1045.12964))
                elseif SelectNPC == "Chemist" then
                    topos(CFrame.new(-2777.45288, 72.9919434, -3572.25732))
                elseif SelectNPC == "Cyborg" then
                    topos(CFrame.new(629.146851, 312.307373, -531.624146))
                elseif SelectNPC == "Ghoul Mark" then
                    topos(CFrame.new(635.172546, 125.976357, 33219.832))
                elseif SelectNPC == "Guashiem" then
                    topos(CFrame.new(937.953003, 181.083359, 33277.9297))
                elseif SelectNPC == "El Admin" then
                    topos(CFrame.new(1322.80835, 126.345039, 33135.8789))
                elseif SelectNPC == "El Rodolfo" then
                    topos(CFrame.new(941.228699, 40.4686775, 32778.9922))
                elseif SelectNPC == "Arowe" then
                    topos(CFrame.new(-1994.51038, 125.519142, -72.2622986))
                end
            elseif World3 then
                if SelectNPC == "Blox Fruits Dealer" then
                    topos(CFrame.new(-12511, 337, -7448))
                elseif SelectNPC == "Remove Devil Fruit" then
                    topos(CFrame.new(-5571, 1089, -2661))
                elseif SelectNPC == "Horned Man" then
                    topos(CFrame.new(-11890, 931, -8760))
                elseif SelectNPC == "Hungey Man" then
                    topos(CFrame.new(-10919, 624, -10268))
                elseif SelectNPC == "Previous Hero" then
                    topos(CFrame.new(-10368, 332, -10128))
                elseif SelectNPC == "Butler" then
                    topos(CFrame.new(-5125, 316, -3130))
                elseif SelectNPC == "Lunoven" then
                    topos(CFrame.new(-5117, 316, -3093))
                elseif SelectNPC == "Trevor" then
                    topos(CFrame.new(-341.498322, 331.886444, 643.024963))
                elseif SelectNPC == "Elite Hunter" then
                    topos(CFrame.new(-5420, 314, -2828))
                elseif SelectNPC == "Player Hunter" then
                    topos(CFrame.new(-5559, 314, -2840))
                elseif SelectNPC == "Uzoth" then
                    topos(CFrame.new(-9785, 852, 6667))
                end
            end
        end
        task.wait(0.1)
    end
end)

local IslandValues = {}
if World1 then
    IslandValues = {
        "WindMill", "Marine", "Middle Town", "Jungle", "Pirate Village", 
        "Desert", "Snow Island", "MarineFord", "Colosseum", "Sky Island 1", 
        "Sky Island 2", "Sky Island 3", "Prison", "Magma Village", 
        "Under Water Island", "Fountain City", "Shank Room", "Mob Island"
    }
elseif World2 then
    IslandValues = {
        "The Cafe", "First Spot", "Dark Area", "Flamingo Mansion", "Flamingo Room", 
        "Green Zone", "Factory", "Colosseum", "Zombie Island", "Two Snow Mountain", 
        "Punk Hazard", "Cursed Ship", "Ice Castle", "Forgotten Island", 
        "Ussop Island", "Mini Sky Island"
    }
elseif World3 then
    IslandValues = {
        "Mansion", "Port Town", "Great Tree", "Castle On The Sea", "MiniSky", 
        "Hydra Island", "Floating Turtle", "Haunted Castle", "Ice Cream Island", 
        "Peanut Island", "Cake Island", "Cocoa Island", "Candy Island", "Tiki Outpost"
    }
end

local Dropdown = PlayerSection:AddDropdown({
    Title = "Select Island",
    Values = IslandValues,
    Default = IslandValues[1]
})

local Toggle = PlayerSection:AddToggle({
    Title = "Teleport To Island",
    Default = false,
    Callback = function(Value)
        getgenv().TeleportIsland = Value
    end
})

spawn(function()
    while task.wait() do
        if getgenv().TeleportIsland then
            local SelectIsland = Dropdown:GetValue()
            
            if World1 then
                if SelectIsland == "WindMill" then
                    topos(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
                elseif SelectIsland == "Marine" then
                    topos(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
                elseif SelectIsland == "Middle Town" then
                    topos(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
                elseif SelectIsland == "Jungle" then
                    topos(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
                elseif SelectIsland == "Pirate Village" then
                    topos(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
                elseif SelectIsland == "Desert" then
                    topos(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
                elseif SelectIsland == "Snow Island" then
                    topos(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
                elseif SelectIsland == "MarineFord" then
                    topos(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
                elseif SelectIsland == "Colosseum" then
                    topos(CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
                elseif SelectIsland == "Sky Island 1" then
                    topos(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
                elseif SelectIsland == "Sky Island 2" then  
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.82275, 872.54248, -1667.55688))
                elseif SelectIsland == "Sky Island 3" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                elseif SelectIsland == "Prison" then
                    topos(CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
                elseif SelectIsland == "Magma Village" then
                    topos(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
                elseif SelectIsland == "Under Water Island" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                elseif SelectIsland == "Fountain City" then
                    topos(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
                elseif SelectIsland == "Shank Room" then
                    topos(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
                elseif SelectIsland == "Mob Island" then
                    topos(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
                end
            elseif World2 then
                if SelectIsland == "The Cafe" then
                    topos(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
                elseif SelectIsland == "First Spot" then
                    topos(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
                elseif SelectIsland == "Dark Area" then
                    topos(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
                elseif SelectIsland == "Flamingo Mansion" then
                    topos(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
                elseif SelectIsland == "Flamingo Room" then
                    topos(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
                elseif SelectIsland == "Green Zone" then
                    topos(CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
                elseif SelectIsland == "Factory" then
                    topos(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                elseif SelectIsland == "Colosseum" then
                    topos(CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
                elseif SelectIsland == "Zombie Island" then
                    topos(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
                elseif SelectIsland == "Two Snow Mountain" then
                    topos(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
                elseif SelectIsland == "Punk Hazard" then
                    topos(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
                elseif SelectIsland == "Cursed Ship" then
                    topos(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
                elseif SelectIsland == "Ice Castle" then
                    topos(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
                elseif SelectIsland == "Forgotten Island" then
                    topos(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
                elseif SelectIsland == "Ussop Island" then
                    topos(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
                elseif SelectIsland == "Mini Sky Island" then
                    topos(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
                end
            elseif World3 then
                if SelectIsland == "Great Tree" then
                    topos(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
                elseif SelectIsland == "Castle On The Sea" then
                    topos(CFrame.new(-5074.45556640625, 314.5155334472656, -2991.054443359375))
                elseif SelectIsland == "MiniSky" then
                    topos(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
                elseif SelectIsland == "Port Town" then
                    topos(CFrame.new(-95, 11, 5455))
                elseif SelectIsland == "Hydra Island" then
                    topos(CFrame.new(5433, 1062, 290))
                elseif SelectIsland == "Floating Turtle" then
                    topos(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
                elseif SelectIsland == "Mansion" then
                    topos(CFrame.new(-12551, 337, -7476))
                elseif SelectIsland == "Haunted Castle" then
                    topos(CFrame.new(-9516, 142, 5537))
                elseif SelectIsland == "Ice Cream Island" then
                    topos(CFrame.new(-874, 66, -10915))
                elseif SelectIsland == "Peanut Island" then
                    topos(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
                elseif SelectIsland == "Cake Island" then
                    topos(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
                elseif SelectIsland == "Cocoa Island" then
                    topos(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375))
                elseif SelectIsland == "Candy Island" then
                    topos(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
                elseif SelectIsland == "Tiki Outpost" then
                    topos(CFrame.new(-16101.1885, 12.8422165, 380.942291, 0.194113985, 1.39194061e-08, -0.980978966, -9.82904691e-09, 1, 1.22443504e-08, 0.980978966, 7.26528837e-09, 0.194113985))
                end
            end
        end
        task.wait()
    end
end)

local Toggle = PlayerSection:AddToggle({
    Title = "Teleport Mirage",
    Default = false,
    Callback = function(Value)
        getgenv().TweenMigareIsland = Value
    end
})

spawn(function()
    pcall(function()
        while task.wait() do
            if getgenv().TweenMigareIsland and World3 then
                local island = game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
                if island and island:FindFirstChild("Center") then
                    local targetPos = island.Center.Position
                    local char = game.Players.LocalPlayer.Character
                    local hrp = char and char:FindFirstChild("HumanoidRootPart")
                    if hrp then
                        local currentPos = hrp.Position
                        if (Vector3.new(targetPos.X, 500, targetPos.Z) - currentPos).magnitude > 5 then
                            topos(CFrame.new(targetPos.X, 500, targetPos.Z))
                        end
                    end
                end
            end
        end
    end)
end)

local Toggle = PlayerSection:AddToggle({
    Title = "Teleport Prehistoric Island",
    Default = false,
    Callback = function(Value)
        getgenv().TeleportToPrehistoricIsland = Value
    end
})

spawn(function()
    local island
    while not island do
        island = game:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland")
        task.wait()
    end
    while task.wait() do
        if getgenv().TeleportToPrehistoricIsland and World3 then
            local prehistoricIslandCore = game:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland")
            if prehistoricIslandCore then
                local relic = prehistoricIslandCore:FindFirstChild("Core") 
                             and prehistoricIslandCore.Core:FindFirstChild("PrehistoricRelic")
                local skull = relic and relic:FindFirstChild("Skull")                
                if skull then
                    topos(CFrame.new(skull.Position))
                    getgenv().TeleportToPrehistoricIsland = false
                  
                end
            end
        end
    end
end)


	local SetSection = Setting:AddSection("Setting Farm", false)

local lastWeapon = nil
local Dropdown = SetSection:AddDropdown({
    Title = "Select Weapon",
    Values = {"Melee", "Sword", "Blox Fruit"},
    Default = "Melee"
	 Callback = function(value)
    getgenv().SelectWeapon = value
end
})

task.spawn(function()
    while task.wait(0.5) do
        pcall(function()
            if getgenv().SelectWeapon == lastWeapon then
                return
            end
            lastWeapon = getgenv().SelectWeapon
            local weaponFound = nil
            for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v.ToolTip == getgenv().SelectWeapon then
                    weaponFound = v.Name
                    break
                end
            end
            if weaponFound then
                getgenv().SelectWeapon = weaponFound
            end
        end)
    end
end)

local Toggle = SetSection:AddToggle({
    Title = "Attack No Animation",
    Default = true,
    Callback = function(Value)
        getgenv().FastAttack = Value
    end
})

SetSection:AddButton({
    Title = "Kill Aura",
    Callback = function()
     -- Nothing Here
    end
})

local FakeSlider = SetSection:AddSlider({
    Title = "Time Delay Kill",
    Description = "",
    Default = 0.5,
    Min = 0,
    Max = 2,
    Rounding = 0.1,
    Callback = function(value)
	-- Nothing Here.
    end
})

local Toggle = SetSection:AddToggle({
    Title = "Click",
    Default = true,
    Callback = function(Value)
       _G.AutoClick = Value
    end
})

getgenv().GunAura = {
    Enabled = false,
    Range = 45
}

local Toggle = SetSection:AddToggle({
    Title = "Kill Aura With DragonStorm",
    Default = false,
    Callback = function(Value)
        getgenv().GunAura.Enabled = Value
    end
})

task.spawn(function()
    while task.wait(0.05) do
        if getgenv().GunAura.Enabled then
            pcall(function()
                local player = game.Players.LocalPlayer
                local char = player.Character
                if not char then return end

                local hrp = char:FindFirstChild("HumanoidRootPart")
                if not hrp then return end

                local vu = game:GetService("VirtualUser")

                for _,v in pairs(workspace:GetDescendants()) do
                    if v:FindFirstChild("Humanoid") 
                    and v:FindFirstChild("HumanoidRootPart") 
                    and v.Humanoid.Health > 0 
                    and not game.Players:GetPlayerFromCharacter(v) then

                        local dist = (v.HumanoidRootPart.Position - hrp.Position).Magnitude

                        if dist <= 45 then
                            vu:Button1Down(Vector2.new(0,0))
                            vu:Button1Up(Vector2.new(0,0))
                        end
                    end
                end
            end)
        end
    end
end)

local Toggle = SetSection:AddToggle({
    Title = "Auto Turn On Buso",
    Default = true,
    Callback = function(Value)
        getgenv().AUTOHAKI = Value
    end
})

spawn(function()
    local canUseHaki = true
    local debounceTime = 2
    while task.wait(0.1) do
        if getgenv().AUTOHAKI then
            local char = game.Players.LocalPlayer.Character
            if char and not char:FindFirstChild("HasBuso") and canUseHaki then
                canUseHaki = false
                pcall(function()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                end)
                task.wait(debounceTime)
                canUseHaki = true
            end
        end
    end
end)


local Toggle = SetSection:AddToggle({
    Title = "Auto Turn On Observation",
    Default = false,
    Callback = function(Value)
        _G.AutoKen = Value
    end
})

local player = game.Players.LocalPlayer
local commE = game:GetService("ReplicatedStorage").Remotes.CommE
local CollectionService = game:GetService("CollectionService")

function HasKen()
    local char = player.Character
    return char and CollectionService:HasTag(char, 'Ken')
end

task.spawn(function()
    while task.wait(0.2) do
        if _G.AutoKen then
            if not HasKen() then
                pcall(function()
                    commE:FireServer('Ken', true)
                end)
            end
        end
    end
end)

local ToggleV4 = SetSection:AddToggle({
    Title = "Auto Turn On V4",
    Default = false,
    Callback = function(Value)
        getgenv().AutoTurnOnV4 = Value
    end
})

task.spawn(function()
    local lastCheckTime = 0
    while true do
        task.wait(0.1)
        if getgenv().AutoTurnOnV4 then
            local currentTime = tick()
            if currentTime - lastCheckTime >= 0.5 then
                lastCheckTime = currentTime
                local character = game.Players.LocalPlayer.Character
                if character and character:FindFirstChild("RaceEnergy") and
                   character:FindFirstChild("RaceTransformed") and
                   character.RaceEnergy.Value >= 1 and
                   not character.RaceTransformed.Value then
                    local be = game:GetService("VirtualInputManager")
                    be:SendKeyEvent(true, "Y", false, game)
                    task.wait(0.1)
                    be:SendKeyEvent(false, "Y", false, game)
                end
            end
        end
    end
end)

local ToggleV3 = SetSection:AddToggle({
    Title = "Auto Turn On V3",
    Default = false,
    Callback = function(Value)
        getgenv().AutoTurnOnV3 = Value
    end
})

task.spawn(function()
    local prevState = false    
    while true do
        task.wait(0.1)        
        pcall(function()
            if getgenv().AutoTurnOnV3 ~= prevState then
                if getgenv().AutoTurnOnV3 then
                    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
                end
                prevState = getgenv().AutoTurnOnV3
            end
        end)
    end
end)

local Toggle = SetSection:AddToggle({
    Title = "Auto Dodge Skill Mobs",
    Default = false,
    Callback = function(Value)
    _G.DodgeSkillM = Value
    end
})

local Toggle = SetSection:AddToggle({
    Title = "Teleport Y if low Health",
    Default = false,
    Callback = function(Value)
        getgenv().SafeMode = Value
    end
})

local TextBox = SetSection:AddTextBox({
    Title = "% Health Player",
    Placeholder = "30",
    Callback = function(Value)
        getgenv().Safe = tonumber(Value) or 30
    end
})

local Slider = SetSection:AddSlider({
    Title = "Distance Teleport Y",
    Default = 15,
    Min = -100,
    Max = 1000,
    Rounding = 0,
    Callback = function(Value)
        getgenv().PosYSafeHealth = Value
    end
})

spawn(function()
    while task.wait() do
        pcall(function()
            if getgenv().SafeMode then
                local CharacterPlayer = game.Players.LocalPlayer.Character
                if CharacterPlayer and CharacterPlayer:FindFirstChild("Humanoid") and CharacterPlayer:FindFirstChild("HumanoidRootPart") then
                    local HealthMinPlayer = CharacterPlayer.Humanoid.MaxHealth * (getgenv().Safe / 100)
                    if CharacterPlayer.Humanoid.Health <= HealthMinPlayer then
                        while getgenv().SafeMode and CharacterPlayer.Humanoid.Health <= HealthMinPlayer do
                            task.wait()
                            CharacterPlayer.HumanoidRootPart.CFrame = CharacterPlayer.HumanoidRootPart.CFrame + Vector3.new(0, getgenv().PosYSafeHealth or 15, 0)
                        end
                    end
                end
            end
        end)
    end
end)

local Toggle = SetSection:AddToggle({
    Title = "Tween Safe if Have Items",
    Default = false,
    Callback = function(Value)
        getgenv().StopTP = Value
    end
})

spawn(function()
    while task.wait(1) do
        if getgenv().StopTP then
            local player = game.Players.LocalPlayer
            if player.Backpack:FindFirstChild("Fist of Darkness") 
            or player.Character:FindFirstChild("Fist of Darkness") 
            or player.Backpack:FindFirstChild("God's Chalice") 
            or player.Character:FindFirstChild("God's Chalice") then
                BypassTP = false
            end
        end
    end
end)

local HopSlider = SetSection:AddSlider({
    Title = "Time Hop Server",
    Default = 1,
    Min = 1,
    Max = 30,
    Rounding = 0,
    Callback = function(Value)
        HopDelay = Value
    end
})

local replicated = game:GetService("ReplicatedStorage")
local Location_Portal = {}

if World1 then
    Location_Portal = {
        "Sky",
        "UnderWater"
    }
elseif World2 then
    Location_Portal = {
        "SwanRoom",
        "Cursed Ship"
    }
elseif World3 then
    Location_Portal = {
        "Castle On The Sea",
        "Mansion Cafe",
        "Hydra Teleport",
        "Canvendish Room",
        "Temple of Time"
    }
end

local Dropdown = SetSection:AddDropdown({
    Title = "Select Portal",
    Values = Location_Portal,
    Default = Location_Portal[1]
})

local Toggle = SetSection:AddToggle({
    Title = "Auto Use Portal",
    Default = false,
    Callback = function(Value)
        getgenv().AutoPortal = Value
    end
})

local function UsePortal()
    local selected = Dropdown:GetValue()
    
    if selected == "Sky" then
        replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894, 5547, -380))
    elseif selected == "UnderWater" then
        replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163, 11, 1819))
    elseif selected == "SwanRoom" then
        replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(2285, 15, 905))
    elseif selected == "Cursed Ship" then
        replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923, 126, 32852))
    elseif selected == "Castle On The Sea" then
        replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-5097.93164, 316.447021, -3142.66602))
    elseif selected == "Mansion Cafe" then
        replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
    elseif selected == "Hydra Teleport" then
        replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5643.45263671875, 1013.0858154296875, -340.51025390625))
    elseif selected == "Canvendish Room" then
        replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5314.54638671875, 22.562219619750977, -127.06755065917969))
    elseif selected == "Temple of Time" then
        replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(28310.0234, 14895.1123, 109.456741))
    end
end

SetSection:AddButton({
    Title = "Use Portal",
    Callback = function()
        pcall(function()
            UsePortal()
        end)
    end
})

spawn(function()
    while task.wait(1) do
        if getgenv().AutoPortal then
            pcall(function()
                UsePortal()
                task.wait(5)
            end)
        end
    end
end)

local MonsterCountSlider = SetSection:AddSlider({
    Title = "Bring Mob Count",
    Description = "",
    Default = 2,
    Min = 1,
    Max = 10,
    Rounding = 0,
    Callback = function(Value)
        getgenv().MaxMonsterCount = Value
    end
})

local Toggle = SetSection:AddToggle({
    Title = "Bring Mob",
    Default = true,
    Callback = function(Value)
        getgenv().BringMonster = Value
    end
})

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local LocalPlayer = Players.LocalPlayer

spawn(function()
    while task.wait(0.1) do
        pcall(function()
            CheckQuest()
            local enemies = Workspace.Enemies:GetChildren()
            local MonsterCount = 0
            local maxMonsters = getgenv().MaxMonsterCount or 2
            
            for _, enemy in ipairs(enemies) do
                if MonsterCount >= maxMonsters then
                    break
                end                
                if getgenv().BringMonster and enemy:FindFirstChild("Humanoid") and enemy:FindFirstChild("HumanoidRootPart") then
                    local humanoid = enemy:FindFirstChild("Humanoid")
                    local rootPart = enemy:FindFirstChild("HumanoidRootPart")
                    if humanoid and rootPart and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                        local distance = (rootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                        if getgenv().StartMagnet and (enemy.Name == MonFarm or enemy.Name == Mon) and humanoid.Health > 0 and distance <= 350 then
                            if enemy.Name == "Factory Staff" and PosMon and (rootPart.Position - PosMon.Position).Magnitude <= 5000 then
                                if rootPart.Parent then
                                    rootPart.CanCollide = false
                                    rootPart.Size = Vector3.new(60, 60, 60)
                                    rootPart.CFrame = PosMon
                                    enemy.Head.CanCollide = false
                                    local animator = humanoid:FindFirstChild("Animator")
                                    if animator then
                                        pcall(function()
                                            animator:Destroy()
                                        end)
                                    end
                                    sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
                                    MonsterCount = MonsterCount + 1
                                end
                            elseif (enemy.Name == MonFarm or enemy.Name == Mon) and PosMon and (rootPart.Position - PosMon.Position).Magnitude <= 4500 then
                                if rootPart.Parent then
                                    rootPart.CanCollide = false
                                    rootPart.Size = Vector3.new(60, 60, 60)
                                    rootPart.CFrame = PosMon
                                    enemy.Head.CanCollide = false
                                    local animator = humanoid:FindFirstChild("Animator")
                                    if animator then
                                        pcall(function()
                                            animator:Destroy()
                                        end)
                                    end
                                    sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
                                    MonsterCount = MonsterCount + 1
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)

local Toggle = SetSection:AddToggle({
    Title = "Reset Teleport [Beta]",
    Default = false,
    Callback = function(Value)
        BypassTP = Value
    end
})

local Slider = SetSection:AddSlider({
    Title = "Speed Tween",
    Default = 350,
    Min = 1,
    Max = 1000,
    Rounding = 0,
    Callback = function(Value)
        getgenv().TweenSpeed = Value
    end
})

local Paragraph = SetSection:AddParagraph({
    Title = "Recommended:",
    Desc = "350.If you're farming spots close to each other, use a higher speed"
})

local SkillsSection = Skills:AddSection("Select Skills Melee", true)
local SkillZ = SkillsSection:AddToggle({
    Title = "Skill Z",
    Default = true,
    Callback = function(Value)
        getgenv().SkillZ = Value
    end
})

local SkillX = SkillsSection:AddToggle({
    Title = "Skill X",
    Default = false,
    Callback = function(Value)
        getgenv().SkillX = Value
    end
})

local SkillC = SkillsSection:AddToggle({
    Title = "Skill C",
    Default = false,
    Callback = function(Value)
        getgenv().SkillC = Value
    end
})

local SwordSection = Skills:AddSection("Select Skills Sword", true)

local SkillZ = SwordSection:AddToggle({
    Title = "Skill Z",
    Default = true,
    Callback = function(Value)
        getgenv().SkillZ = Value
    end
})

local SkillX = SwordSection:AddToggle({
    Title = "Skill X",
    Default = false,
    Callback = function(Value)
        getgenv().SkillX = Value
    end
})

local GunSection = Skills:AddSection("Select Skills Gun", true)

local SkillZ = GunSection:AddToggle({
    Title = "Skill Z",
    Default = true,
    Callback = function(Value)
        getgenv().SkillZ = Value
    end
})

local SkillX = GunSection:AddToggle({
    Title = "Skill X",
    Default = false,
    Callback = function(Value)
        getgenv().SkillX = Value
    end
})

local FruitSection = Skills:AddSection("Select Skills Fruit", true)

local SkillZ = FruitSection:AddToggle({
    Title = "Skill Z",
    Default = true,
    Callback = function(Value)
        getgenv().SkillZ = Value
    end
})

local SkillX = FruitSection:AddToggle({
    Title = "Skill X",
    Default = false,
    Callback = function(Value)
        getgenv().SkillX = Value
    end
})

local SkillC = FruitSection:AddToggle({
    Title = "Skill C",
    Default = false,
    Callback = function(Value)
        getgenv().SkillC = Value
    end
})

local SkillV = FruitSection:AddToggle({
    Title = "Skill V",
    Default = false,
    Callback = function(Value)
        getgenv().SkillV = Value
    end
})

local SkillF = FruitSection:AddToggle({
    Title = "Skill F",
    Default = false,
    Callback = function(Value)
        getgenv().SkillF = Value
    end
})

local HoldSection = Skills:AddSection("Hold Skills", false)

local Toggle = HoldSection:AddToggle({
    Title = "Use hold skills not fast",
    Default = false,
    Callback = function(Value)
        getgenv().HoldSkills = Value
    end
})

local MeleeDelay = HoldSection:AddSlider({
    Title = "Set Delay Melee",
    Default = 0.5,
    Min = 0.1,
    Max = 2,
    Rounding = 1,
    Callback = function(Value)
        getgenv().MeleeHoldTime = Value
    end
})

local SwordDelay = HoldSection:AddSlider({
    Title = "Set Delay Sword",
    Default = 0.5,
    Min = 0.1,
    Max = 2,
    Rounding = 1,
    Callback = function(Value)
        getgenv().SwordHoldTime = Value
    end
})

local GunDelay = HoldSection:AddSlider({
    Title = "Set Delay Gun",
    Default = 0.5,
    Min = 0.1,
    Max = 2,
    Rounding = 1,
    Callback = function(Value)
        getgenv().GunHoldTime = Value
    end
})

local FruitDelay = HoldSection:AddSlider({
    Title = "Set Delay Fruit",
    Default = 0.5,
    Min = 0.1,
    Max = 2,
    Rounding = 1,
    Callback = function(Value)
        getgenv().FruitHoldTime = Value
    end
})

local function UseSkill(key, getgenv().FruitHoldTime, getgenv().GunHoldTime, getgenv().SwordHoldTime, getgenv().MeleeHoldTime)
    game:service('VirtualInputManager'):SendKeyEvent(true, key, false, game)
    task.wait(getgenv().FruitHoldTime or getgenv().GunHoldTime or getgenv().SwordHoldTime or getgenv().MeleeHoldTime)
    game:service('VirtualInputManager'):SendKeyEvent(false, key, false, game)
end

local FarmSection = Farm:AddSection("Farming", false)

local Dropdown = FarmSection:AddDropdown({
    Title = "Select Method Farm",
    Values = {"Level Farm", "Farm Bone", "Farm Katakuri", "Aura Farm", "Farm Tyrant of the Skies"},
    Default = "Level Farm",
	 Callback = function(Value)
    FarmMode = Value
end
})

spawn(function()
    local canRun = true
    local debounceTime = 0.3
    
    while wait(debounceTime) do
        if getgenv().AutoFarm and FarmMode == "Level Farm" then
            if canRun then
                canRun = false
                spawn(function()
                    pcall(function()
                        local player = game:GetService("Players").LocalPlayer
                        local character = player.Character
                        if not character or not character:FindFirstChild("HumanoidRootPart") then return end
                        
                        local humanoidRoot = character.HumanoidRootPart
                        local questVisible = player.PlayerGui.Main.Quest.Visible
                        local questTitle = player.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                        
                        if questVisible and NameMon and not string.find(questTitle, NameMon) then
                            getgenv().StartMagnet = false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                            task.wait(0.3)
                            questVisible = false
                        end
                        
                        if not questVisible then
                            getgenv().StartMagnet = false
                            
                            if BypassTP and CFrameQuest then
                                local distance = (humanoidRoot.Position - CFrameQuest.Position).Magnitude
                                if distance > 1500 then
                                    BTP(CFrameQuest * CFrame.new(0, 20, 5))
                                else
                                    topos(CFrameQuest)
                                end
                            else
                                topos(CFrameQuest)
                            end
                            
                            if CFrameQuest and (humanoidRoot.Position - CFrameQuest.Position).Magnitude <= 20 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                                task.wait(0.5)
                            end
                            return
                        end
                        
                        if questVisible and CFrameMon then
                            if BypassTP then
                                local distance = (humanoidRoot.Position - CFrameMon.Position).Magnitude
                                if distance > 1500 then
                                    BTP(CFrameMon)
                                else
                                    topos(CFrameMon)
                                end
                            else
                                topos(CFrameMon)
                            end
                        end
                        
                        local enemies = game:GetService("Workspace").Enemies:GetChildren()
                        local targetEnemy = nil
                        local shortestDistance = math.huge
                        
                        for _, v in pairs(enemies) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then
                                if v.Humanoid.Health > 0 and v.Name == Mon then
                                    local dist = (humanoidRoot.Position - v.HumanoidRootPart.Position).Magnitude
                                    if dist < shortestDistance then
                                        shortestDistance = dist
                                        targetEnemy = v
                                    end
                                end
                            end
                        end
                        
                        if targetEnemy then
                            getgenv().StartMagnet = true
                            
                            while targetEnemy and targetEnemy.Parent and targetEnemy.Humanoid.Health > 0 do
                                if not getgenv().AutoFarm then break end
                                
                                local stillHasQuest = player.PlayerGui.Main.Quest.Visible
                                local currentQuestTitle = player.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                                
                                if not stillHasQuest or (NameMon and not string.find(currentQuestTitle, NameMon)) then
                                    getgenv().StartMagnet = false
                                    break
                                end
                                
                                task.wait(0.1)
                                AutoHaki()
                                EquipWeapon(getgenv().SelectWeapon)
                                
                                if targetEnemy.HumanoidRootPart then
                                    topos(targetEnemy.HumanoidRootPart.CFrame * Pos)
                                    targetEnemy.HumanoidRootPart.CanCollide = false
                                    targetEnemy.Humanoid.WalkSpeed = 0
                                    targetEnemy.Head.CanCollide = false
                                end
                                
                                sethiddenproperty(player, "SimulationRadius", math.huge)
                            end
                            
                        else
                            getgenv().StartMagnet = false
                            
                            if CFrameMon and (humanoidRoot.Position - CFrameMon.Position).Magnitude > 100 then
                                topos(CFrameMon)
                            end
                            
                            task.wait(1.5)
                        end
                    end)
                end)
                task.wait(0.5)
                canRun = true
            end
        end
    end
end)

local Bone = {
    ["Reborn Skeleton"] = CFrame.new(-8769.58984, 142.13063, 6055.27637),
    ["Living Zombie"] = CFrame.new(-10156.4531, 138.652481, 5964.5752),
    ["Demonic Soul"] = CFrame.new(-9525.17188, 172.13063, 6152.30566),
    ["Posessed Mummy"] = CFrame.new(-9570.88281, 5.81831884, 6187.86279)
}

spawn(function()
    while task.wait(0.2) do
        if getgenv().BonesBring then
            pcall(function()
                for _, v in ipairs(game.Workspace.Enemies:GetChildren()) do
                    if Bone[v.Name] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then
                        v.HumanoidRootPart.CFrame = Bone[v.Name]
                        v.Head.CanCollide = false
                        v.Humanoid.Sit = false
                        v.Humanoid:ChangeState(11)
                        task.wait(0.1)
                        v.Humanoid:ChangeState(14)
                        v.HumanoidRootPart.CanCollide = false
                        v.Humanoid.JumpPower = 0
                        v.Humanoid.WalkSpeed = 0
                        local animator = v.Humanoid:FindFirstChild("Animator")
                        if animator then
                            animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                    end
                end
            end)
        end
    end
end)

BonePos = CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375)

spawn(function()
    while wait(0.1) do
        if FarmMode == "Farm Bone" and getgenv().AutoFarm and World3 then
            pcall(function()
                local enemies = game:GetService("Workspace").Enemies:GetChildren()
                local foundEnemy = false
                for _, v in pairs(enemies) do
                    if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            foundEnemy = true
                            repeat wait(0.1)
                                AutoHaki()
                                EquipWeapon(getgenv().SelectWeapon)
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                getgenv().BonesBring = true
                                topos(v.HumanoidRootPart.CFrame * Pos)
                            until not getgenv().AutoFarm or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end                
                if not foundEnemy then
                    if BypassTP then
                        local playerPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                        if (playerPos - BonePos.Position).Magnitude > 1500 then
                            BTP(BonePos)
                        else
                            topos(BonePos)
                        end
                    else
                        topos(BonePos)
                    end
                    UnEquipWeapon(getgenv().SelectWeapon)
                    getgenv().BonesBring = false
                    topos(CFrame.new(-9515, 164, 5786))                    
                    for _, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                        if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end
            end)
        end
    end
end)

local Cake = {
    ["Cookie Crafter"] = CFrame.new(-2333.28052, 37.8239059, -12093.2861),
    ["Cake Guard"] = CFrame.new(-1575.56433, 37.8238907, -12416.2529),
    ["Baking Staff"] = CFrame.new(-1872.35742, 37.8239517, -12899.4248),
    ["Head Baker"] = CFrame.new(-2223.1416, 53.5283203, -12854.752)
}

spawn(function()
    while task.wait(0.2) do
        if getgenv().CakeBring then
            pcall(function()
                for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if Cake[v.Name] then
                        local targetCFrame = Cake[v.Name]
                        if targetCFrame then
                            v.HumanoidRootPart.CFrame = targetCFrame
                        end
                        v.Head.CanCollide = false
                        v.Humanoid.Sit = false
                        v.Humanoid:ChangeState(11)
                        task.wait(0.1)
                        v.Humanoid:ChangeState(14)
                        v.HumanoidRootPart.CanCollide = false
                        v.Humanoid.JumpPower = 0
                        v.Humanoid.WalkSpeed = 0
                        if v.Humanoid:FindFirstChild('Animator') then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait(0.1) do
        if FarmMode == "Farm Katakuri" and getgenv().AutoFarm and World3 then
            pcall(function()
                game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")                
                if game.ReplicatedStorage:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                        for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if getgenv().AutoFarm and v.Name == "Cake Prince" 
                                and v:FindFirstChild("HumanoidRootPart") 
                                and v:FindFirstChild("Humanoid") 
                                and v.Humanoid.Health > 0 then                                
                                repeat 
                                    game:GetService("RunService").Heartbeat:wait()
                                    AutoHaki()
                                    EquipWeapon(getgenv().SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                until not getgenv().AutoFarm or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                        if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 
                            and (CFrame.new(-1990.672607421875, 4532.99951171875, -14973.6748046875).Position 
                            - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 then                            
                            topos(CFrame.new(-2151.82153, 149.315704, -12404.9053))
                        end
                    end
                else
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") 
                        or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") 
                        or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") 
                        or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker") then                        
                        for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if (v.Name == "Cookie Crafter" or v.Name == "Cake Guard" 
                                    or v.Name == "Baking Staff" or v.Name == "Head Baker") 
                                    and v:FindFirstChild("HumanoidRootPart") 
                                    and v:FindFirstChild("Humanoid") 
                                    and v.Humanoid.Health > 0 then                                    
                                    repeat 
                                        game:GetService("RunService").Heartbeat:wait()
                                        AutoHaki()
                                        EquipWeapon(getgenv().SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        getgenv().CakeBring = true
                                    until not getgenv().AutoFarm or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        local CakePos = CFrame.new(-2077, 252, -12373)
                        if BypassTP then
                            BTP(CakePos)
                        else
                            topos(CakePos)
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait(0.1) do
        if FarmMode == "Aura Farm" and getgenv().AutoFarm then
            pcall(function()
                local player = game:GetService("Players").LocalPlayer
                local character = player.Character
                if not character or not character:FindFirstChild("HumanoidRootPart") then return end
                
                local humanoidRoot = character.HumanoidRootPart
                
                local enemies = game:GetService("Workspace").Enemies:GetChildren()
                local targetEnemy = nil
                local shortestDistance = math.huge
                
                for _, v in pairs(enemies) do
                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then
                        if v.Humanoid.Health > 0 then
                            local dist = (humanoidRoot.Position - v.HumanoidRootPart.Position).Magnitude
                            if dist < shortestDistance and dist <= getgenv().AuraDistance then
                                shortestDistance = dist
                                targetEnemy = v
                            end
                        end
                    end
                end
                
                if targetEnemy then
                    getgenv().StartMagnet = true
                    
                    while targetEnemy and targetEnemy.Parent and targetEnemy.Humanoid.Health > 0 do
                        if not getgenv().AutoFarm then break end
                        
                        task.wait(0.1)
                        AutoHaki()
                        EquipWeapon(getgenv().SelectWeapon)
                        
                        if targetEnemy.HumanoidRootPart then
                            local distToEnemy = (humanoidRoot.Position - targetEnemy.HumanoidRootPart.Position).Magnitude
                            if distToEnemy <= getgenv().AuraDistance then
                                topos(targetEnemy.HumanoidRootPart.CFrame * Pos)
                            end
                            targetEnemy.HumanoidRootPart.CanCollide = false
                            targetEnemy.Humanoid.WalkSpeed = 0
                            targetEnemy.Head.CanCollide = false
                        end
                        
                        sethiddenproperty(player, "SimulationRadius", math.huge)
                    end
                    
                else
                    getgenv().StartMagnet = false
                    task.wait(1)
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if FarmMode == "Farm Tyrant of the Skies" and getgenv().AutoFarm and World3 then
            pcall(function()
                local enemyInWorkspace = game:GetService("Workspace").Enemies:FindFirstChild("Tyrant of the Skies")
                local enemyInReplicatedStorage = game:GetService("ReplicatedStorage"):FindFirstChild("Tyrant of the Skies")
                
                if enemyInWorkspace then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Tyrant of the Skies" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    AutoHaki()
                                    EquipWeapon(getgenv().SelectWeapon)
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                until not getgenv().AutoFarm or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                elseif enemyInReplicatedStorage then
                    topos(enemyInReplicatedStorage.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                    task.wait(0.5)
                else
                    local TyrantPos = CFrame.new(-5875, 620, 315)
                    if BypassTP then
                        BTP(TyrantPos)
                    else
                        topos(TyrantPos)
                    end
                    task.wait(2)
                end
            end)
        end
    end
end)

local Slider = FarmSection:AddSlider({
    Title = "Distance Farm Aura",
    Description = "",
    Min = 100,
    Max = 500,
    Default = 300,
    Callback = function(Value)
        getgenv().AuraDistance = Value
    end
})

local Toggle = FarmSection:AddToggle({
    Title = "Ignore Attack Katakuri",
    Default = false,
    Callback = function(Value)
        getgenv().IgnoreKata = Value
    end
})

local Toggle = FarmSection:AddToggle({
    Title = "Hop Find Katakuri",
    Default = false,
    Callback = function(Value)
        getgenv().Hopping = Value
    end
})

local Toggle = FarmSection:AddToggle({
    Title = "Auto Quest[Katakuri/Bone/Tyrant]",
    Default = false,
    Callback = function(Value)
        getgenv().Questsak = Value
    end
})

local Toggle = FarmSection:AddToggle({
    Title = "Start Farm",
    Default = false,
    Callback = function(Value)
        getgenv().AutoFarm = Value
    end
})

local MasterySection = Farm:AddSection("Mastery Farm", false)

local Dropdown = MasterySection:AddDropdown({
    Title = "Select Method Farm Mastery",
    Values = {"Blox Fruit", "Gun"},
    Default = "Blox Fruit"
	 Callback = function(Value)
    FarmMode2 = Value
end
})

local Slider = MasterySection:AddSlider({
    Title = "Health %",
    Default = 30,
    Min = 0,
    Max = 100,
    Rounding = 5,
    Callback = function(Value)
        getgenv().Kill_At = Value
    end
})

local MasteryToggle = MasterySection:AddToggle({
    Title = "Farm Mastery",
    Default = false,
    Callback = function(Value)
        getgenv().MasteryFarm = Value
    end
})

spawn(function()
    while task.wait() do
        if FarmMode2 == "Blox Fruit" and getgenv().MasteryFarm then
            pcall(function()
                QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, NameMon) then
                    UseSkill = false
                    Skillaimbot = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    UseSkill = false
                    CheckQuest()
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 2000 then
                            BTP(CFrameQuest)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 2000 then
                            topos(CFrameQuest)
                        else
                            topos(CFrameQuest)
                        end
                    end
                    repeat task.wait()
                        topos(CFrameQuest)
                    until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not getgenv().MasteryFarm
                    if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                        wait(0.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                        wait(0.1)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    CheckQuest()
                    if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == Mon then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        HealthMs = v.Humanoid.MaxHealth * getgenv().Kill_At / 100
                                        repeat task.wait()
                                            if v.Humanoid.Health <= HealthMs then
                                                AutoHaki()
                                                EquipWeapon(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0))
                                                v.HumanoidRootPart.CanCollide = false
                                                PosMonMasteryFruit = v.HumanoidRootPart.CFrame
                                                MonFarm = v.Name
                                                PosMon = v.HumanoidRootPart.CFrame
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                                UseSkill = true
                                                Skillaimbot = true
                                            else
                                                UseSkill = false
                                                Skillaimbot = false
                                                AutoHaki()
                                                EquipWeapon(getgenv().SelectWeapon)
                                                MonFarm = v.Name
                                                PosMon = v.HumanoidRootPart.CFrame
                                                topos(v.HumanoidRootPart.CFrame * Pos)
                                                v.HumanoidRootPart.CanCollide = false
                                                PosMonMasteryFruit = v.HumanoidRootPart.CFrame
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                            end
                                            getgenv().StartMagnet = true
                                        until not getgenv().MasteryFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    else
                                        UseSkill = false
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                    end
                                end
                            end
                        end
                    else
                        topos(CFrameMon)
                        UseSkill = false
                        Skillaimbot = false
                        Mob = game:GetService("ReplicatedStorage"):FindFirstChild(Mon)

                        if Mob then
                            topos(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 0, 10))
                        else
                            if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                                game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
                                task.wait()
                                game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false
                            end
                        end
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while task.wait() do
        if UseSkill then
            pcall(function()
                CheckQuest()
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                        MasBF = game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value
                    elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                        MasBF = game:GetService("Players").LocalPlayer.Backpack[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                        if getgenv().SkillZ then
                            local args = {
                                [1] = PosMonMasteryFruit.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game)
                        end
                        if getgenv().SkillX then
                            local args = {
                                [1] = PosMonMasteryFruit.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game)
                        end
                        if getgenv().SkillC then
                            local args = {
                                [1] = PosMonMasteryFruit.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game)
                        end
                        if getgenv().SkillV then
                            local args = {
                                [1] = PosMonMasteryFruit.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "V", false, game)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, "V", false, game)
                        end
                        if getgenv().SkillF then
                            local args = {
                                [1] = PosMonMasteryFruit.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "F", false, game)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, "F", false, game)
                        end
                    end
                end
            end)
        end
    end
end)
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if UseSkill then
                for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
                    if v.Name == "NotificationTemplate" then
                        if string.find(v.Text, "Skill locked!") then
                            v:Destroy()
                        end
                    end
                end
            end
        end)
    end)
end)
spawn(function()
    pcall(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            if UseSkill then
                local args = {
                    [1] = PosMonMasteryFruit.Position
                }
                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
            end
        end)
    end)
end)    
spawn(function()
    pcall(function()
        while task.wait() do
            if FarmMode2 == "Gun" and getgenv().MasteryFarm then
                QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, NameMon) then                      
                    Skillaimbot = false          
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    CheckQuest()
                        if BypassTP then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 2000 then
						        BTP(CFrameQuest)
                            elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 2000 then
                                topos(CFrameQuest)
                            else
                                topos(CFrameQuest)
                            end
                        else                                 
                             topos(CFrameQuest)
                        end
                    if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        task.wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    CheckQuest()
                    if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                        pcall(function()
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == Mon then
                                    repeat task.wait()
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            HealthMin = v.Humanoid.MaxHealth * getgenv().Kill_At/100
                                            if v.Humanoid.Health <= HealthMin then
                                                EquipWeapon(SelectWeaponGun)
                                                Skillaimbot = true
                                                AimSkill = v.Engine.CFrame * CFrame.new(0, -15, 0)
                                                AimBotSkillPosition = AimSkill.Position
                                                MonFarm = v.Name                
                                                PosMon = v.HumanoidRootPart.CFrame
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,0,10))
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(2,2,1)
                                                v.Head.CanCollide = false                                                
                                                local args = {
                                                    [1] = v.HumanoidRootPart.Position,
                                                    [2] = v.HumanoidRootPart
                                                }
                                                game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                                                task.wait(.1)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                                task.wait(.1)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                            else
                                                AutoHaki()
                                                EquipWeapon(getgenv().SelectWeapon)
                                                MonFarm = v.Name                
                                                PosMon = v.HumanoidRootPart.CFrame
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Head.CanCollide = false    
                                                topos(v.HumanoidRootPart.CFrame * Pos)
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end
                                            getgenv().StartMagnet = true 
                                            PosMonMasteryGun = v.HumanoidRootPart.CFrame
                                        else
                                            getgenv().StartMagnet = true 
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    until v.Humanoid.Health <= 0 or not getgenv().MasteryFarm or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        end)
                    else
                       topos(CFrameMon)
                        Mob = game:GetService("ReplicatedStorage"):FindFirstChild(Mon) 
                        if Mob then
                            topos(Mob.HumanoidRootPart.CFrame * CFrame.new(0,0,10))
                        else
                            if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                                game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
                                task.wait()
                                game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false
                            end
                        end
                    end 
                end
            end
        end
    end)
end)
spawn(function()
    pcall(function()
        if getgenv().MasteryFarm then
            while task.wait() do
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") then
                        if v:FindFirstChild("RemoteFunctionShoot") then
                            SelectWeaponGun = v.Name
                        end
                    end
                end
            end
        end
    end)
end)
local plr = game:GetService("Players").LocalPlayer
spawn(function()
     pcall(function()
         while task.wait() do
            for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
                if v:IsA("Tool") then
                    if v:FindFirstChild("RemoteFunctionShoot") then 
                        SelectWeaponGun = v.Name
                    end
                end
            end
        end
    end)
end)

local MaterialSection = Farm:AddSection("Farming Material", false)

local MaterialList = {}

if World1 then
    MaterialList = {"Leather + Scrap Metal", "Angel Wings", "Magma Ore", "Fish Tail"}
elseif World2 then
    MaterialList = {"Leather + Scrap Metal", "Radioactive Material", "Ectoplasm", "Mystic Droplet", "Magma Ore", "Vampire Fang"}
elseif World3 then
    MaterialList = {"Leather + Scrap Metal", "Demonic Wisp", "Conjured Cocoa", "Dragon Scale", "Gunpowder", "Fish Tail", "Mini Tusk"}
end

local Dropdown = MaterialSection:AddDropdown({
    Title = "Select Material",
    Values = MaterialList,
    Default = MaterialList[1]
})

Dropdown:OnChanged(function(Value)
    getgenv().SelectMaterial = Value
end)

local Toggle = MaterialSection:AddToggle({
    Title = "Farm Material",
    Default = false,
    Callback = function(Value)
        getgenv().AutoMaterial = Value
    end
})

spawn(function()
    local function processEnemy(v, EnemyName)
        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
            if v.Name == EnemyName then
                repeat
                    task.wait(0.1)
                    AutoHaki()
                    EquipWeapon(getgenv().SelectWeapon)
                    v.HumanoidRootPart.CanCollide = false
                    v.Humanoid.WalkSpeed = 0
                    v.Head.CanCollide = false
                    topos(v.HumanoidRootPart.CFrame * Pos)
                    getgenv().StartMagnet = true
                    MonFarm = v.Name
                    PosMon = v.HumanoidRootPart.CFrame
                until not getgenv().AutoMaterial or not v.Parent or v.Humanoid.Health <= 0
                UnEquipWeapon(getgenv().SelectWeapon)
            end
        end
    end
    local function handleEnemySpawns()
        for _, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
            for _, EnemyName in ipairs(MMon) do
                if string.find(v.Name, EnemyName) then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude >= 10 then
                        topos(v.CFrame * Pos)
                    end
                end
            end
        end
    end
    while task.wait(0.1) do
        if getgenv().AutoMaterial then
            pcall(function()
                if getgenv().SelectMaterial then
                    MaterialMon(getgenv().SelectMaterial)
                    topos(MPos)
                end
                for _, EnemyName in ipairs(MMon) do
                    for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        processEnemy(v, EnemyName)
                    end
                end
                handleEnemySpawns()
            end)
        end
    end
end)

local WorldSection = Stack:AddSection("Auto World", false)

local ToggleNewWorld = WorldSection:AddToggle({
    Title = "Auto New World",
    Default = false,
    Callback = function(Value)
        getgenv().AutoNewWorld = Value
    end
})

local ToggleThirdSea = WorldSection:AddToggle({
    Title = "Auto Third World",
    Default = false,
    Callback = function(Value)
        getgenv().AutoThirdSea = Value
    end
})

spawn(function()
    while task.wait(0.1) do
        if getgenv().AutoNewWorld and World1 then
            spawn(function()
                local player = game:GetService("Players").LocalPlayer
                local workspace = game:GetService("Workspace")
                local replicatedStorage = game:GetService("ReplicatedStorage")
                local myLevel = player.Data.Level.Value
                if myLevel >= 700 and World1 then
                    local iceDoor = workspace.Map.Ice.Door
                    if iceDoor.CanCollide == false and iceDoor.Transparency == 1 then
                        local cframe1 = CFrame.new(4849.29883, 5.65138149, 719.611877)
                        repeat
                            topos(cframe1)
                            task.wait(0.1)
                        until (cframe1.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 3 or not getgenv().AutoNewWorld
                        task.wait(1.1)
                        replicatedStorage.Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Detective")
                        task.wait(0.1)
                        EquipWeapon("Key")
                        local targetCFrame = CFrame.new(1347.7124, 37.3751602, -1325.6488)
                        repeat
                            topos(targetCFrame)
                            task.wait(0.1)
                        until (targetCFrame.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 3 or not getgenv().AutoNewWorld
                        task.wait(0.1)
                    else
                        if workspace.Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
                            for _, v in pairs(workspace.Enemies:GetChildren()) do
                                if v.Name == "Ice Admiral" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                    local oldCFrameSecond = v.HumanoidRootPart.CFrame
                                    repeat
                                        task.wait(0.05)
                                        AutoHaki()
                                        EquipWeapon(getgenv().SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.CFrame = oldCFrameSecond
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                    until not getgenv().AutoNewWorld or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        else
                            if replicatedStorage:FindFirstChild("Ice Admiral") then
                                topos(replicatedStorage:FindFirstChild("Ice Admiral").HumanoidRootPart.CFrame * CFrame.new(5, 10, 7))
                            else
                                replicatedStorage.Remotes.CommF_:InvokeServer("TravelDressrosa")
                            end
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait(0.1) do
        if getgenv().AutoThirdSea and World2 then
            pcall(function()
                local player = game:GetService("Players").LocalPlayer
                local replicatedStorage = game:GetService("ReplicatedStorage")
                local workspaceEnemies = game:GetService("Workspace").Enemies
                if player.Data.Level.Value >= 1500 and World2 then
                    getgenv().AutoFarm = false
                    if replicatedStorage.Remotes["CommF_"]:InvokeServer("ZQuestProgress", "General") == 0 then
                        topos(CFrame.new(-1926.322, 12.82, 1738.309))                        
                        if (CFrame.new(-1926.322, 12.82, 1738.309).Position - player.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                            task.wait(1.1)
                            replicatedStorage.Remotes.CommF_:InvokeServer("ZQuestProgress", "Begin")
                        end
                        task.wait(1.3)
                        if workspaceEnemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then
                            for _, v in pairs(workspaceEnemies:GetChildren()) do
                                if v.Name == "rip_indra" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    local oldCFrameThird = v.HumanoidRootPart.CFrame                                    
                                    repeat
                                        task.wait(0.05)
                                        AutoHaki()
                                        EquipWeapon(getgenv().SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        v.HumanoidRootPart.CFrame = oldCFrameThird                                              
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        replicatedStorage.Remotes.CommF_:InvokeServer("TravelZou")                                        
                                    until not getgenv().AutoThirdSea or v.Humanoid.Health <= 0 or not v.Parent
                                end
                            end
                        elseif not workspaceEnemies:FindFirstChild("rip_indra") and 
                               (CFrame.new(-26880.934, 22.849, 473.19).Position - player.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                            topos(CFrame.new(-26880.934, 22.849, 473.19))
                        end
                    end
                end
            end)
        end
    end
end)

local DevilSection = Stack:AddSection("Devil Fruit", false)

local ToggleChest = DevilSection:AddToggle({
    Title = "Collect Chest & Stop When Have Legend Items",
    Default = false,
    Callback = function(Value)
        getgenv().AutoFarmChest = Value
        if not Value then
            getgenv().StopTP = false
        end
    end
})

spawn(function()
    local lastTarget = nil
    while task.wait(0.2) do
        if getgenv().AutoFarmChest and not getgenv().StopTP then
            local player = game:GetService("Players").LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local playerPos = character:GetPivot().Position
            local chestService = game:GetService("CollectionService")
            local chests = chestService:GetTagged("_ChestTagged")
            local closestChest, minDist = nil, math.huge
            for _, chest in ipairs(chests) do
                if not chest:GetAttribute("IsDisabled") then
                    local dist = (chest:GetPivot().Position - playerPos).Magnitude
                    if dist < minDist then
                        minDist, closestChest = dist, chest
                    end
                end
            end
            if closestChest and closestChest ~= lastTarget then
                lastTarget = closestChest
                topos(closestChest:GetPivot())
                getgenv().StopTP = true
                task.wait(2)
                getgenv().StopTP = false
            end
        end
    end
end)

local TeleportFruitToggle = DevilSection:AddToggle({
    Title = "Teleport To Fruit [Hop Server]",
    Default = false,
    Callback = function(Value)
        getgenv().TeleportToFruitHop = Value
        if Value then
            getgenv().TeleportToFruit = true
        else
            getgenv().TeleportToFruit = false
        end
    end
})

spawn(function()
    while task.wait(0.5) do
        if getgenv().TeleportToFruit and getgenv().TeleportToFruitHop then
            local foundFruit = false
            for _, v in ipairs(workspace:GetChildren()) do
                if v:IsA("Model") and string.find(v.Name, "Fruit") and v:FindFirstChild("Handle") then
                    topos(v.Handle.CFrame)
                    foundFruit = true
                    break
                end
            end
            if not foundFruit then
                task.wait(1)
                game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "Server Hop..",
                    Text = "",
                    Duration = 5,
                })
                Hop()
            end
        end
    end
end)

local RandomToggle = DevilSection:AddToggle({
    Title = "Random Devil Fruit",
    Default = false,
    Callback = function(Value)
        getgenv().RandomFruit = Value
    end
})

local StoreToggle = DevilSection:AddToggle({
    Title = "Store Fruit",
    Default = false,
    Callback = function(Value)
        getgenv().AutoStoreFruit = Value
    end
})

spawn(function()
    while task.wait(0.2) do
        if getgenv().RandomFruit then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
        end
    end
end)

spawn(function()
    while task.wait(0.2) do
        if getgenv().AutoStoreFruit then
            pcall(function()
                local player = game:GetService("Players").LocalPlayer
                local character = player.Character
                local backpack = player.Backpack
                local fruits = {
                    {"Rocket Fruit", "Rocket-Rocket"},
                    {"Spin Fruit", "Spin-Spin"},
                    {"Blade Fruit", "Blade-Blade"},
                    {"Spring Fruit", "Spring-Spring"},
                    {"Bomb Fruit", "Bomb-Bomb"},
                    {"Smoke Fruit", "Smoke-Smoke"},
                    {"Spike Fruit", "Spike-Spike"},
                    {"Flame Fruit", "Flame-Flame"},
                    {"Falcon Fruit", "Falcon-Falcon"},
                    {"Ice Fruit", "Ice-Ice"},
                    {"Sand Fruit", "Sand-Sand"},
                    {"Dark Fruit", "Dark-Dark"},
                    {"Diamond Fruit", "Diamond-Diamond"},
                    {"Light Fruit", "Light-Light"},
                    {"Rubber Fruit", "Rubber-Rubber"},
                    {"Barrier Fruit", "Barrier-Barrier"},
                    {"Ghost Fruit", "Ghost-Ghost"},
                    {"Magma Fruit", "Magma-Magma"},
                    {"Quake Fruit", "Quake-Quake"},
                    {"Buddha Fruit", "Buddha-Buddha"},
                    {"Love Fruit", "Love-Love"},
                    {"Spider Fruit", "Spider-Spider"},
                    {"Sound Fruit", "Sound-Sound"},
                    {"Phoenix Fruit", "Phoenix-Phoenix"},
                    {"Portal Fruit", "Portal-Portal"},
                    {"Rumble Fruit", "Rumble-Rumble"},
                    {"Pain Fruit", "Pain-Pain"},
                    {"Blizzard Fruit", "Blizzard-Blizzard"},
                    {"Gravity Fruit", "Gravity-Gravity"},
                    {"Mammoth Fruit", "Mammoth-Mammoth"},
                    {"T-Rex Fruit", "T-Rex-T-Rex"},
                    {"Dough Fruit", "Dough-Dough"},
                    {"Shadow Fruit", "Shadow-Shadow"},
                    {"Venom Fruit", "Venom-Venom"},
                    {"Gas Fruit", "Gas-Gas"},
                    {"Control Fruit", "Control-Control"},
                    {"Spirit Fruit", "Spirit-Spirit"},
                    {"Leopard Fruit", "Leopard-Leopard"},
                    {"Yeti Fruit", "Yeti-Yeti"},
                    {"Kitsune Fruit", "Kitsune-Kitsune"},
                    {"Dragon Fruit", "Dragon-Dragon"},
                }
                for _, fruit in ipairs(fruits) do
                    local fruitName, serverName = fruit[1], fruit[2]
                    if character and (character:FindFirstChild(fruitName) or (backpack and backpack:FindFirstChild(fruitName))) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", serverName, backpack:FindFirstChild(fruitName))
                    end
                end
            end)
        end
        task.wait(0.1)
    end
end)

local EventSection = Stack:AddSection("Event Game", false)

local FactoryToggle = EventSection:AddToggle({
    Title = "Auto Factory",
    Default = false,
    Callback = function(Value)
        getgenv().AutoFactory = Value
    end
})

local PirateToggle = EventSection:AddToggle({
    Title = "Auto Pirate Raid",
    Default = false,
    Callback = function(Value)
        getgenv().AutoPirateRaid = Value
    end
})

task.spawn(function()
    while task.wait(0.1) do
        if not getgenv().AutoFactory or not World2 then
            continue
        end
        local enemies = game:GetService("Workspace").Enemies
        local coreEnemy = enemies:FindFirstChild("Core")
        if coreEnemy and coreEnemy.Humanoid.Health > 0 then
            repeat
                task.wait(0.1)
                AutoHaki()
                EquipWeapon(getgenv().SelectWeapon)
                topos(coreEnemy.HumanoidRootPart.CFrame)
            until coreEnemy.Humanoid.Health <= 0 or not getgenv().AutoFactory
        else
            topos(CFrame.new(448.46756, 199.356781, -441.389252))
        end
    end
end)

task.spawn(function()
    while task.wait(0.1) do
        if not getgenv().AutoPirateRaid or not World3 then
            continue
        end
        pcall(function()
            local CFrameBoss = CFrame.new(-5496.17432, 313.768921, -2841.53027)
            local player = game.Players.LocalPlayer
            local humanoidRootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")            
            if not humanoidRootPart then return end
            local distanceToBoss = (CFrame.new(-5539.311, 313.801, -2972.372).Position - humanoidRootPart.Position).Magnitude
            if distanceToBoss <= 500 then
                for _, enemy in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if getgenv().AutoPirateRaid and enemy:FindFirstChild("HumanoidRootPart") and enemy:FindFirstChild("Humanoid") and enemy.Humanoid.Health > 0 then
                        local enemyDistance = (enemy.HumanoidRootPart.Position - humanoidRootPart.Position).Magnitude
                        if enemyDistance < 2000 then
                            repeat task.wait(0.1)
                                AutoHaki()
                                EquipWeapon(getgenv().SelectWeapon)
                                enemy.HumanoidRootPart.CanCollide = false
                                topos(enemy.HumanoidRootPart.CFrame * Pos)
                                getgenv().StartMagnet = true
                            until enemy.Humanoid.Health <= 0 or not enemy.Parent or not getgenv().AutoPirateRaid
                        end
                    end
                end
            else
                UnEquipWeapon(getgenv().SelectWeapon)
                if BypassTP then
                    local distanceToCFrameBoss = (humanoidRootPart.Position - CFrameBoss.Position).Magnitude
                    if distanceToCFrameBoss > 1500 then
                        BTP(CFrameBoss)
                    elseif distanceToCFrameBoss <= 1500 then
                        topos(CFrameBoss)
                    end
                end
                topos(CFrame.new(-5122, 315, -2963))
            end
        end)
    end
end)


local RipSection = Stack:AddSection("Boss Rip Indra", false)

local EliteToggle = RipSection:AddToggle({
    Title = "Auto Elite Hunter",
    Default = false,
    Callback = function(Value)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
        getgenv().AutoEliteHunter = Value
    end
})

local HopToggle = RipSection:AddToggle({
    Title = "Hop Server Elite Hunter",
    Description = "Hop if u have God Chalice and Teleport In Safezone",
    Default = false,
    Callback = function(Value)
        getgenv().AutoEliteHunterHop = Value
    end
})

local TouchPadToggle = RipSection:AddToggle({
    Title = "Auto Touch Pad Haki",
    Default = false,
    Callback = function(Value)
        getgenv().AutoTouchPadHaki = Value
    end
})

local SummonToggle = RipSection:AddToggle({
    Title = "Auto Summon Rip Indra",
    Default = false,
    Callback = function(Value)
        getgenv().SummonRipIndra = Value
    end
})

local AttackToggle = RipSection:AddToggle({
    Title = "Attack Rip Indra",
    Default = false,
    Callback = function(Value)
        getgenv().AutoRipIndra = Value
    end
})

spawn(function()
    while task.wait(0.3) do
        if getgenv().AutoEliteHunter and World3 then
            pcall(function()
                local player = game:GetService("Players").LocalPlayer
                local questGui = player.PlayerGui.Main.Quest
                if questGui.Visible == true then
                    local questTitle = questGui.Container.QuestTitle.Title.Text
                    local eliteNames = {"Diablo", "Deandre", "Urban"}
                    local foundEnemy = false                    
                    for _, enemy in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if table.find(eliteNames, enemy.Name) and 
                           enemy:FindFirstChild("Humanoid") and 
                           enemy:FindFirstChild("HumanoidRootPart") and 
                           enemy.Humanoid.Health > 0 then                            
                            foundEnemy = true
                            repeat
                                task.wait(0.2)
                                AutoHaki()
                                EquipWeapon(getgenv().SelectWeapon)
                                if enemy:FindFirstChild("HumanoidRootPart") then
                                    enemy.HumanoidRootPart.CanCollide = false
                                    enemy.Humanoid.WalkSpeed = 0
                                    topos(enemy.HumanoidRootPart.CFrame * Pos)
                                end
                            until not getgenv().AutoEliteHunter or enemy.Humanoid.Health <= 0 or not enemy.Parent
                            break
                        end
                    end
                    if not foundEnemy then
                        for _, name in pairs(eliteNames) do
                            local enemy = game:GetService("ReplicatedStorage"):FindFirstChild(name)
                            if enemy and enemy:FindFirstChild("HumanoidRootPart") then
                                topos(enemy.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                break
                            end
                        end
                    end
                else
                    local response = game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter")
                    if getgenv().AutoEliteHunterHop and response == "I don't have anything for you right now. Come back later." then
                        Hop()
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait(0.5) do
        if getgenv().SummonRipIndra and World3 then
            pcall(function()
                local player = game:GetService("Players").LocalPlayer
                if player.Backpack:FindFirstChild("God's Chalice") or player.Character:FindFirstChild("God's Chalice") then
                    repeat
                        task.wait(0.3)
                        topos(CFrame.new(-5563.75048828125, 320.4276123046875, -2662.509521484375))
                        EquipWeapon("God's Chalice")
                    until not (player.Backpack:FindFirstChild("God's Chalice") or player.Character:FindFirstChild("God's Chalice"))
                elseif game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form") then
                    local ripIndraTrueForm = game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form")
                    topos(ripIndraTrueForm.HumanoidRootPart.CFrame * Pos)
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait(1) do
        if getgenv().AutoRipIndra and World3 then
            pcall(function()
                local enemies = game:GetService("Workspace").Enemies              
                if enemies:FindFirstChild("rip_indra True Form") or enemies:FindFirstChild("rip_indra") then
                    for _, v in pairs(enemies:GetChildren()) do
                        if (v.Name == "rip_indra True Form" or v.Name == "rip_indra") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                            repeat
                                task.wait(0.3)
                                pcall(function()
                                    AutoHaki()
                                    EquipWeapon(getgenv().SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                end)
                            until getgenv().AutoRipIndra == false or v.Humanoid.Health <= 0
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait(1) do
        pcall(function()
            if getgenv().AutoTouchPadHaki and World3 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Winter Sky")
                task.wait(0.5)
                local target1 = CFrame.new(-5420.16602, 1084.9657, -2666.8208)
                repeat
                    topos(target1)
                    task.wait(0.2)
                until getgenv().StopTween == true or getgenv().AutoTouchPadHaki == false or
                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - target1.Position).Magnitude <= 10
                task.wait(0.5)                
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Pure Red")
                task.wait(0.5)
                local target2 = CFrame.new(-5414.41357, 309.865753, -2212.45776)
                repeat
                    topos(target2)
                    task.wait(0.2)
                until getgenv().StopTween == true or getgenv().AutoTouchPadHaki == false or
                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - target2.Position).Magnitude <= 10
                task.wait(0.5)                
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Snow White")
                task.wait(0.5)
                local target3 = CFrame.new(-4971.47559, 331.565765, -3720.02954)
                repeat
                    topos(target3)
                    task.wait(0.2)
                until getgenv().StopTween == true or getgenv().AutoTouchPadHaki == false or
                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - target3.Position).Magnitude <= 10
                task.wait(0.5)               
                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 600))
                task.wait(1)
                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 600))
            end
        end)
    end
end)

local SoulSection = Stack:AddSection("Boss Soul Reaper", false)

local AttackSoulToggle = SoulSection:AddToggle({
    Title = "Attack Soul Reaper",
    Default = false,
    Callback = function(Value)
        getgenv().AutoSoulReaper = Value
    end
})

local SummonSoulToggle = SoulSection:AddToggle({
    Title = "Summon Soul Reaper",
    Default = false,
    Callback = function(Value)
        getgenv().SummonSoulReaper = Value
    end
})

spawn(function()
    while task.wait(0.5) do
        if getgenv().SummonSoulReaper and World3 then
            pcall(function()
                local player = game:GetService("Players").LocalPlayer
                local backpack = player.Backpack
                local character = player.Character
                local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
                
                if backpack:FindFirstChild("Hallow Essence") or character:FindFirstChild("Hallow Essence") then
                    local targetPosition = CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)
                    repeat
                        topos(targetPosition)
                        task.wait(0.1)
                    until (targetPosition.Position - humanoidRootPart.Position).Magnitude <= 8
                    EquipWeapon("Hallow Essence")
                else
                    local soulReaper = game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper")
                    if soulReaper then
                        topos(soulReaper.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait(0.1) do
        if getgenv().AutoSoulReaper and World3 then
            pcall(function()
                local workspaceEnemies = game:GetService("Workspace").Enemies
                
                if workspaceEnemies:FindFirstChild("Soul Reaper") then
                    for _, v in pairs(workspaceEnemies:GetChildren()) do
                        if string.find(v.Name, "Soul Reaper") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat 
                                task.wait(0.1)
                                AutoHaki()
                                EquipWeapon(getgenv().SelectWeapon)
                                topos(v.HumanoidRootPart.CFrame * Pos)
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.Transparency = 1
                            until v.Humanoid.Health <= 0 or not getgenv().AutoSoulReaper
                        end
                    end
                end
            end)
        end
    end
end)

local DoughSection = Stack:AddSection("Boss Dough King", false)

local AttackDoughToggle = DoughSection:AddToggle({
    Title = "Attack Dough King",
    Default = false,
    Callback = function(Value)
        getgenv().AutoDoughKing = Value
    end
})

local SummonDoughToggle = DoughSection:AddToggle({
    Title = "Summon Dough King",
    Default = false,
    Callback = function(Value)
        getgenv().SummonDoughKing = Value
    end
})

local Toggle = DoughSection:AddToggle({
    Title = "Hop Find Dough King",
    Default = false,
    Callback = function(Value)
        getgenv().Hopping = Value
    end
})

spawn(function()
    while task.wait(0.2) do
        if getgenv().SummonDoughKing and World3 then
            pcall(function()
                local player = game:GetService("Players").LocalPlayer
                
                if player.Backpack:FindFirstChild("God's Chalice") or player.Character:FindFirstChild("God's Chalice") then
                    if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc"), "Where") then
                        game.StarterGui:SetCore("SendNotification", {
                            Title = "Notification",
                            Text = "Not Have Enough Material",
                            Duration = 2.5
                        })
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc")
                    end
                elseif player.Backpack:FindFirstChild("Sweet Chalice") or player.Character:FindFirstChild("Sweet Chalice") then
                    if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), "Do you want to open the portal now?") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                    else
                        if game.Workspace.Enemies:FindFirstChild("Baking Staff") or 
                           game.Workspace.Enemies:FindFirstChild("Head Baker") or 
                           game.Workspace.Enemies:FindFirstChild("Cake Guard") or 
                           game.Workspace.Enemies:FindFirstChild("Cookie Crafter") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
                                if (v.Name == "Baking Staff" or v.Name == "Head Baker" or 
                                    v.Name == "Cake Guard" or v.Name == "Cookie Crafter") and 
                                    v.Humanoid.Health > 0 then
                                    repeat
                                        task.wait(0.05)
                                        AutoHaki()
                                        EquipWeapon(getgenv().SelectWeapon)
                                        getgenv().StartMagnet = true
                                        POSCAKE = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                    until getgenv().SummonDoughKing == false or 
                                          game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or 
                                          not v.Parent or 
                                          v.Humanoid.Health <= 0
                                end
                            end
                        else
                            getgenv().StartMagnet = false
                            topos(CFrame.new(-1820.063, 210.748, -12297.496))
                        end
                    end
                elseif player.Backpack:FindFirstChild("Red Key") or player.Character:FindFirstChild("Red Key") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakeScientist", "Check")
                else
                    if player.PlayerGui.Main.Quest.Visible == true then
                        local questTitle = player.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                        if string.find(questTitle, "Diablo") or string.find(questTitle, "Deandre") or string.find(questTitle, "Urban") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if (v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban") and 
                                   v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat
                                        task.wait(0.05)
                                        AutoHaki()
                                        EquipWeapon(getgenv().SelectWeapon)    
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        topos(v.HumanoidRootPart.CFrame * Pos)                                                    
                                        sethiddenproperty(player, "SimulationRadius", math.huge)
                                    until getgenv().SummonDoughKing == false or 
                                          v.Humanoid.Health <= 0 or 
                                          not v.Parent or 
                                          player.Backpack:FindFirstChild("God's Chalice") or 
                                          player.Character:FindFirstChild("God's Chalice")
                                    break
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait(0.2) do
        if getgenv().AutoDoughKing and World3 then
            pcall(function()
                if game.ReplicatedStorage:FindFirstChild("Dough King") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
                            if v.Name == "Dough King" and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                repeat
                                    task.wait(0.05)
                                    AutoHaki()
                                    EquipWeapon(getgenv().SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                until getgenv().AutoDoughKing == false or not v.Parent or v.Humanoid.Health <= 0
                                break
                            end    
                        end    
                    else
                        topos(CFrame.new(-2009.280, 4532.972, -14937.308))
                    end
                end
            end)
        end
    end
end)

local DarkbeardSection = Stack:AddSection("Boss Darkbeard", false)

local AttackDarkbeardToggle = DarkbeardSection:AddToggle({
    Title = "Attack Darkbeard",
    Default = false,
    Callback = function(Value)
        getgenv().AutoDarkbeard = Value
    end
})

local SummonDarkbeardToggle = DarkbeardSection:AddToggle({
    Title = "Summon Darkbeard",
    Default = false,
    Callback = function(Value)
        getgenv().SummonDarkbeard = Value
    end
})

local Toggle = DarkbeardSection:AddToggle({
    Title = "Hop Find Darkbeard",
    Default = false,
    Callback = function(Value)
        getgenv().Hopping = Value
    end
})

spawn(function()
    while task.wait(0.1) do
        if getgenv().SummonDarkbeard and World2 then
            pcall(function()
                local player = game:GetService("Players").LocalPlayer
                if player.Backpack:FindFirstChild("Fist of Darkness") or player.Character:FindFirstChild("Fist of Darkness") then
                    repeat
                        task.wait(0.1)
                        topos(CFrame.new(3778.584, 15.791, -3499.404))
                        EquipWeapon("Fist of Darkness")
                    until not getgenv().SummonDarkbeard
                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard") then
                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard").HumanoidRootPart.CFrame * Pos)
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait(0.1) do
        if getgenv().AutoDarkbeard and World2 then
            pcall(function()
                local enemies = game:GetService("Workspace").Enemies
                if enemies:FindFirstChild("Darkbeard") then
                    for _, v in pairs(enemies:GetChildren()) do
                        if v.Name == "Darkbeard" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat
                                task.wait(0.05)
                                AutoHaki()
                                EquipWeapon(getgenv().SelectWeapon)
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0           
                                topos(v.HumanoidRootPart.CFrame * Pos)
                            until not getgenv().AutoDarkbeard or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
            end)
        end
    end
end)


local FishingSection = Other:AddSection("Fishing", false)

local AutoFishingToggle = FishingSection:AddToggle({
    Title = "Auto Fishing",
    Description = "",
    Default = false,
    Callback = function(Value)
        _G.AutoFishing = Value
    end
})

local BaitDropdown = FishingSection:AddDropdown({
    Title = "Select Fishing Lure",
    Description = "",
    Values = {
        "Basic Bait",
        "Kelp Bait",
        "Good Bait",
        "Abyssal Bait",
        "Frozen Bait",
        "Epic Bait",
        "Carnivore Bait"
    },
    Default = "Basic Bait",
    Callback = function(Value)
        _G.SelectedBait = Value
        local v841 = game.ReplicatedStorage:WaitForChild("FishReplicated"):WaitForChild("FishingRequest")
        v841:InvokeServer("SelectBait", Value)
    end
})

local RodDropdown = FishingSection:AddDropdown({
    Title = "Select Fishing Rod",
    Description = "",
    Values = {
        "Fishing Rod",
        "Gold Rod",
        "Shark Rod",
        "Shell Rod",
        "Treasure Rod"
    },
    Default = "Fishing Rod",
    Callback = function(Value)
        _G.SelectedRod = Value
    end
})

local workspace = game:GetService("Workspace")
local player = game.Players.LocalPlayer
local fishReplicated = game.ReplicatedStorage:WaitForChild("FishReplicated")
local fishingRequest = fishReplicated:WaitForChild("FishingRequest")
local getWaterHeight = require(game.ReplicatedStorage.Util.GetWaterHeightAtLocation)
local maxLaunchDistance = require(fishReplicated.FishingClient.Config).Rod.MaxLaunchDistance

task.spawn(function()
    while task.wait() do
        if _G.AutoFishing then
            local character = player.Character
            if not character then continue end
            
            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
            local currentTool = character:FindFirstChildOfClass("Tool")
            
            if _G.SelectedRod and (not currentTool or currentTool.Name ~= _G.SelectedRod) then
                local rod = player.Backpack:FindFirstChild(_G.SelectedRod)
                if rod then
                    character.Humanoid:EquipTool(rod)
                    currentTool = rod
                end
            end
            
            if humanoidRootPart and currentTool then
                local waterHeight = getWaterHeight(humanoidRootPart.Position)
                local rayOrigin = character.Head.Position
                local rayDirection = humanoidRootPart.CFrame.LookVector * maxLaunchDistance
                
                local rayResult = workspace:FindPartOnRayWithIgnoreList(Ray.new(rayOrigin, rayDirection), {
                    character,
                    workspace.Characters,
                    workspace.Enemies
                })
                
                local hitPosition = rayResult
                if hitPosition then
                    hitPosition = Vector3.new(hitPosition.X, math.max(hitPosition.Y, waterHeight), hitPosition.Z)
                end
                
                local toolState = currentTool:GetAttribute("State")
                local serverState = currentTool:GetAttribute("ServerState")
                
                if (toolState == "ReeledIn" or serverState == "ReeledIn") and hitPosition then
                    fishingRequest:InvokeServer("StartCasting")
                    task.wait()
                    fishingRequest:InvokeServer("CastLineAtLocation", hitPosition, 100, true)
                elseif serverState == "Biting" then
                    fishingRequest:InvokeServer("Catching", true)
                    task.wait(0.1)
                    fishingRequest:InvokeServer("Catch", 1)
                end
            end
        end
    end
end)

local DragonSection = Other:AddSection("Dragon Dojo", false)

local Toggle = DragonSection:AddToggle({
    Title = "Auto Quest Dojo Trainer",
    Default = false,
    Callback = function(Value)
        getgenv().DojoClaimQuest = Value
    end
})

local DojoQuestNpc = CFrame.new(5855.19629, 1208.32178, 872.713501, 0.606994748, -1.81058823e-09, -0.794705868, 5.72712722e-09, 1, 2.09605577e-09, 0.794705868, -5.82367621e-09, 0.606994748)

spawn(function()
    while task.wait(0.2) do
        if getgenv().DojoClaimQuest and World3 then
            pcall(function()
                if getgenv().BypassTP then
                    BTP(DojoQuestNpc)
                else
                    topos(DojoQuestNpc)
                end
                
                local distance = (DojoQuestNpc.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                if distance <= 5 then
                    local claimQuestTable = {
                        ["NPC"] = "Dojo Trainer",
                        ["Command"] = "ClaimQuest"
                    }
                    game:GetService("ReplicatedStorage").Modules.Net["RF/InteractDragonQuest"]:InvokeServer(claimQuestTable)
                    task.wait(1)
                    
                    local requestQuestTable = {
                        ["NPC"] = "Dojo Trainer",
                        ["Command"] = "RequestQuest"
                    }
                    game:GetService("ReplicatedStorage").Modules.Net["RF/InteractDragonQuest"]:InvokeServer(requestQuestTable)
                end
            end)
        end
    end
end)

local Button = DragonSection:AddButton({
    Title = "Auto Quest Dragon Hunter",
    Callback = function()
        pcall(function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5661.5322265625, 1013.0907592773438, -334.9649963378906))
            topos(CFrame.new(5814.42724609375, 1208.3267822265625, 884.5785522460938))
        end)
    end
})

if World1 then
    MonList = {
        "Bandit",
        "Monkey",
        "Gorilla",
        "Pirate",
        "Brute",
        "Desert Bandit",
        "Desert Officer",
        "Snow Bandit",
        "Snowman",
        "Chief Petty Officer",
        "Sky Bandit",
        "Dark Master",
        "Prisoner",
        "Dangerous Prisoner",
        "Toga Warrior",
        "Gladiator",
        "Military Soldier",
        "Military Spy",
        "Fishman Warrior",
        "Fishman Commando",
        "God\'s Guard",
        "Shanda",
        "Royal Squad",
        "Royal Soldier",
        "Galley Pirate",
        "Galley Captain"
    }
elseif World2 then
    MonList = {
        "Raider",
        "Mercenary",
        "Swan Pirate",
        "Factory Staff",
        "Marine Lieutenant",
        "Marine Captain",
        "Zombie",
        "Vampire",
        "Snow Trooper",
        "Winter Warrior",
        "Lab Subordinate",
        "Horned Warrior",
        "Magma Ninja",
        "Lava Pirate",
        "Ship Deckhand",
        "Ship Engineer",
        "Ship Steward",
        "Ship Officer",
        "Arctic Warrior",
        "Snow Lurker",
        "Sea Soldier",
        "Water Fighter"
    }
elseif World3 then
    MonList = {
        "Pirate Millionaire",
        "Dragon Crew Warrior",
        "Dragon Crew Archer",
        "Hydra Enforcer",
        "Venomous Assailant",
        "Marine Commodore",
        "Marine Rear Admiral",
        "Fishman Raider",
        "Fishman Captain",
        "Forest Pirate",
        "Mythological Pirate",
        "Jungle Pirate",
        "Musketeer Pirate",
        "Reborn Skeleton",
        "Living Zombie",
        "Demonic Soul",
        "Posessed Mummy",
        "Peanut Scout",
        "Peanut President",
        "Ice Cream Chef",
        "Ice Cream Commander",
        "Cookie Crafter",
        "Cake Guard",
        "Baking Staff",
        "Head Baker",
        "Cocoa Warrior",
        "Chocolate Bar Battler",
        "Sweet Thief",
        "Candy Rebel",
        "Candy Pirate",
        "Snow Demon",
        "Isle Outlaw",
        "Island Boy",
        "Sun-kissed Warrior",
        "Isle Champion",
        "Serpent Hunter",
        "Skull Slayer"
    }
end

if World1 then
    BossList = {
        "The Gorilla King",
        "Bobby",
        "Yeti",
        "Mob Leader",
        "Vice Admiral",
        "Warden",
        "Chief Warden",
        "Swan",
        "Magma Admiral",
        "Fishman Lord",
        "Wysper",
        "Thunder God",
        "Cyborg",
        "Saber Expert"
    }
elseif World2 then
    BossList = {
        "Diamond",
        "Jeremy",
        "Fajita",
        "Don Swan",
        "Smoke Admiral",
        "Cursed Captain",
        "Darkbeard",
        "Order",
        "Awakened Ice Admiral",
        "Tide Keeper"
    }
elseif World3 then
    BossList = {
        "Stone",
        "Hydra Leader",
        "Kilo Admiral",
        "Captain Elephant",
        "Beautiful Pirate",
        "rip_indra True Form",
        "Longma",
        "Soul Reaper",
        "Cake Queen"
    }
end

if World1 then
    AreaList = {
        "Jungle",
        "Buggy",
        "Desert",
        "Snow",
        "Marine",
        "Sky",
        "Prison",
        "Colosseum",
        "Magma",
        "Fishman",
        "Sky Island",
        "Fountain"
    }
elseif World2 then
    AreaList = {
        "Area 1",
        "Area 2",
        "Zombie",
        "Marine",
        "Snow Mountain",
        "Ice fire",
        "Ship",
        "Frost",
        "Forgotten"
    }
elseif World3 then
    AreaList = {
        "Pirate Port",
        "Amazon",
        "Marine Tree",
        "Deep Forest",
        "Haunted Castle",
        "Nut Island",
        "Ice Cream Island",
        "Cake Island",
        "Choco Island",
        "Candy Island",
        "Tiki Outpost"
    }
end

local KillSection = Other:AddSection("Attack All Mobs", false)

local AutoKillToggle = KillSection:AddToggle({
    Title = "Auto Attack All Mob and Boss",
    Default = false,
    Callback = function(Value)
        getgenv().AutoKillAll = Value
        if Value then
            spawn(function()
                while getgenv().AutoKillAll do
                    pcall(function()
                        for _, bossName in pairs(BossList) do
                            local enemies = game:GetService("Workspace").Enemies:GetChildren()
                            for _, v in pairs(enemies) do
                                if v.Name == bossName and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat
                                        task.wait()
                                        AutoHaki()
                                        EquipWeapon(getgenv().SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                    until not getgenv().AutoKillAll or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                        
                        for _, mobName in pairs(MobList) do
                            local enemies = game:GetService("Workspace").Enemies:GetChildren()
                            for _, v in pairs(enemies) do
                                if v.Name == mobName and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat
                                        task.wait()
                                        AutoHaki()
                                        EquipWeapon(getgenv().SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                    until not getgenv().AutoKillAll or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    end)
                    task.wait(1)
                end
            end)
        end
    end
})

local BerrySection = Other:AddSection("Berry", false)

local AutoHopBerryToggle = BerrySection:AddToggle({
    Title = "Hop Find Berry",
    Default = false,
    Callback = function(Value)
        getgenv().AutoHopBerry = Value
    end
})

local AutoBerryToggle = BerrySection:AddToggle({
    Title = "Auto Collect Berry",
    Default = false,
    Callback = function(Value)
        getgenv().AutoCollectBerry = Value
    end
})

spawn(function()
    while task.wait() do
        if getgenv().AutoCollectBerry then
            local Player = game:GetService("Players").LocalPlayer
            local Character = Player.Character or Player.CharacterAdded:Wait()
            local Position = Character:GetPivot().Position
            local CollectionService = game:GetService("CollectionService")
            local BerryBushes = CollectionService:GetTagged("BerryBush")       
            local Distance, Nearest, BerryName = math.huge, nil, nil
            
            for i = 1, #BerryBushes do
                local Bush = BerryBushes[i]
                for AttributeName, Berry in pairs(Bush:GetAttributes()) do
                    local Magnitude = (Bush.Parent:GetPivot().Position - Position).Magnitude
                    if Magnitude < Distance then
                        Distance, Nearest, BerryName = Magnitude, Bush, Berry
                    end
                end
            end
            
            if not Nearest and getgenv().AutoHopBerry then
                Hop()
            end
            
            if Nearest then
                local BushPosition = Nearest.Parent:GetPivot().Position
                if (BushPosition - Position).Magnitude > 5 then
                    topos(CFrame.new(BushPosition))
                end
                for _, Berry in pairs(Nearest:GetChildren()) do
                    if Berry:FindFirstChild("ProximityPrompt") then
                        topos(Berry.WorldPivot)
                        fireproximityprompt(Berry.ProximityPrompt, math.huge)
                    end
                end
            end
        end
    end
end)

local ChestSection = Other:AddSection("Farming Chest", false)

local Toggle = ChestSection:AddToggle({
    Title = "Auto Chest Hop",
    Default = false,
    Callback = function(Value)
        getgenv().Hopping = Value
    end
})

local Toggle = ChestSection:AddToggle({
    Title = "Use Method Teleport [Risk]",
    Default = false,
    Callback = function(Value)
        _G.AutoChestBP = Value

        if Value then
            local LocalPlayer = game:GetService("Players").LocalPlayer
            local IsFarming = false
            local UncheckedChests = {}
            local FirstRun = true

            local function getCharacter()
                if not LocalPlayer.Character then
                    LocalPlayer.CharacterAdded:Wait()
                end
                LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                return LocalPlayer.Character
            end

            local function getChestsSorted()
                if FirstRun then
                    FirstRun = false
                    for _, Object in pairs(game:GetDescendants()) do
                        if Object.Name:find("Chest") and Object.ClassName == "Part" then
                            table.insert(UncheckedChests, Object)
                        end
                    end
                end

                local Chests = {}
                for _, Chest in pairs(UncheckedChests) do
                    if Chest:FindFirstChild("TouchInterest") then
                        table.insert(Chests, Chest)
                    end
                end

                local RootPart = getCharacter().LowerTorso
                table.sort(Chests, function(a, b)
                    return (RootPart.Position - a.Position).Magnitude < (RootPart.Position - b.Position).Magnitude
                end)
                return Chests
            end

            local function runChestLoop()
                if IsFarming then return end
                IsFarming = true

                task.spawn(function()
                    while _G.AutoChestBP and LocalPlayer.Character and LocalPlayer.Character.Parent do
                        local Chests = getChestsSorted()
                        if #Chests > 0 then
                            local RootPart = getCharacter().HumanoidRootPart
                            RootPart.CFrame = Chests[1].CFrame
                        end
                        task.wait(0.1)
                    end
                    IsFarming = false
                end)
            end

            LocalPlayer.CharacterAdded:Connect(function()
                getCharacter()
                task.wait(0.5)
                if _G.AutoChestBP then
                    runChestLoop()
                end
            end)

            runChestLoop()
        end
    end
})

local ToggleChest = ChestSection:AddToggle({
    Title = "Auto Chest",
    Default = false,
    Callback = function(Value)
        getgenv().AutoFarmChest = Value
    end
})

spawn(function()
    local lastTarget = nil
    while task.wait(0.2) do
        if getgenv().AutoFarmChest then
            local player = game:GetService("Players").LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local playerPos = character:GetPivot().Position
            local chestService = game:GetService("CollectionService")
            local chests = chestService:GetTagged("_ChestTagged")
            local closestChest, minDist = nil, math.huge
            
            for _, chest in ipairs(chests) do
                if not chest:GetAttribute("IsDisabled") then
                    local dist = (chest:GetPivot().Position - playerPos).Magnitude
                    if dist < minDist then
                        minDist, closestChest = dist, chest
                    end
                end
            end
            
            if closestChest and closestChest ~= lastTarget then
                lastTarget = closestChest
                topos(closestChest:GetPivot())
            end
        end
    end
end)

Window:Notify({
    Title = "UI Library",
    Description = "The UI automatically hides once executed. Press the button at the bottom-left of the screen to show the GUI.",
    Duration = 5
})

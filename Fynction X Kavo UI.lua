--Service--
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Backpack = Player.Backpack
local Character = Player.Character
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage.Remotes
local Mouse = Player:GetMouse()
local Workspace = game:GetService("Workspace")
local Enemies = Workspace.Enemies
--End--
function TP(P,sp)
	if P ~= nil then
		if Character:FindFirstChild('HumanoidRootPart') then
			local Distance = (P.Position - Character.HumanoidRootPart.Position).Magnitude
			local Speed = sp or 300
			tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
			tween = tweenService:Create(Character.HumanoidRootPart, tweenInfo, {CFrame = P})
			tween:Play()
		end
	end
end
function stoptween()
	pcall(function()
		TP(Character.HumanoidRootPart.CFrame)
		tween:Pause()
		_G.Fly = false
	end)
end

local weapon = {}
for i,v in pairs(Backpack:GetChildren()) do
	table.insert(weapon, v.Name)
end
for i,v in pairs(Character:GetChildren()) do
	if v.ClassName == 'Tool' then
		table.insert(weapon, v.Name)
	end
end

local lib = loadstring(game:HttpGet "https://raw.githubusercontent.com/Phone3415/Phone3415/main/Discord-Lib")()
local win = lib:Window('Fynction X')
local aftab = win:Server('Auto Farm','http://www.roblox.com/asset/?id=6031075938')
local afsec = aftab:Channel("Tawan's Request")
Weapon = afsec:Dropdown('Select Weapon',weapon,function(a)
	Weapon.Value = a
end)
Rfweapon = afsec:Button('Refresh',function()
	Weapon:Clear()
	table.clear(weapon)
	wait()
	for i,v in pairs(Backpack:GetChildren()) do
		table.insert(weapon, v.Name)
	end
	for i,v in pairs(Character:GetChildren()) do
		if v.ClassName == 'Tool' then
			table.insert(weapon, v.Name)
		end
	end
	wait()
	for i,v in pairs(weapon) do
		Weapon:Add(v)
	end
end)
local eliteCount = {}
local eliteCount = afsec:Label('Elite: '..'kuy')
eliteCount.Value = -1
local afelitet = {}
afsec:Toggle('Auto Farm Elite',false,function(a)
	stoptween()
	afelitet.Value = a
end)
local TushitaTpMode = {}
TushitaTpMode.Value = 'Tween'
TushitaTpMode = afsec:Dropdown('Teleport Mode',{'Tween','Teleport'},function(a)
	TushitaTpMode.Value = a
	stoptween()
end)
local FATpTushita = {}
afsec:Toggle('Auto Tushita Torch',false,function(a)
	FATpTushita.Value = a
	stoptween()
	autott = 1
end)
local HazeTable = {}
HazeChecker = afsec:Dropdown('Haze Checker',HazeTable,function(a)
end)
HazeCheckerRefresh = afsec:Button('Refresh',function()
	HazeChecker:Clear()
	table.clear(HazeTable)
	local value = 0
	wait()
	if Player:FindFirstChild('QuestHaze') then
		for i,v in pairs(Player.QuestHaze:GetChildren()) do
			if v.Value > 0 then
				table.insert(HazeTable, v.Name..' | '..v.Value)
			end
			if v.Value == 0 then
				value = 1
			end
		end
		if value == 1 then
			table.insert(HazeTable, '    // Zero Zone //    ')
			for i,v in pairs(Player.QuestHaze:GetChildren()) do
				if v.Value == 0 then
					table.insert(HazeTable, v.Name..' | '..v.Value)
				end
			end
			wait()
			value = 0
		end
	else
		table.insert(HazeTable,'No Haze, Take Quest First')
	end
	wait()
	for i,v in pairs(HazeTable) do
		HazeChecker:Add(v)
	end
end)
AutoQuestHaze = {}
afsec:Toggle('Auto Quest Haze',false,function(a)
	stoptween()
	AutoQuestHaze.Value = a
end)





local HazeMon = nil
local HazePos = nil
local HazeMonName = nil

function gethaze()
	if Player:FindFirstChild('QuestHaze') then
		for i,v in pairs(Player.QuestHaze:GetChildren()) do
			if v.Value > 0 then
				if v.Name == 'Pirate Millionaire' then
					HazeMon = v.Name
					HazePos = CFrame.new(-583.6441040039062, 43.83634948730469, 5533.77685546875)
				elseif v.Name == 'Pistol Billionaire' then
					HazeMon = v.Name
					HazePos = CFrame.new(-654.0537109375, 73.83523559570312, 5852.98828125)
				elseif v.Name == 'Ghost' then
					HazeMon = v.Name
					HazePos = CFrame.new(5226.74072265625, 8.112529754638672, 1100.480224609375)
				elseif v.Name == 'Female Islander' then
					HazeMon = v.Name
					HazePos = CFrame.new(4610.39013671875, 747.7570190429688, 524.1475830078125)
				elseif v.Name == 'Giant Islander' then
					HazeMon = v.Name
					HazePos = CFrame.new(4772.3544921875, 601.3994140625, -115.4364013671875)
				elseif v.Name == 'Dragon Crew Warrior' then
					HazeMon = v.Name
					HazePos = CFrame.new(6485.33203125, 51.5220832824707, -977.293701171875)
				elseif v.Name == 'Dragon Crew Archer' then
					HazeMon = v.Name
					HazePos = CFrame.new(6674.06103515625, 378.41656494140625, 313.604736328125)
				elseif v.Name == 'Marine Commadore' then
					HazeMon = v.Name
					HazePos = CFrame.new(2352.7919921875, 73.1523666381836, -7459.07958984375)
				elseif v.Name == 'Marine Rear Admiral' then
					HazeMon = v.Name
					HazePos = CFrame.new(3691.2158203125, 160.5498504638672, -6973.92578125)
				elseif v.Name == 'Fishman Raider' then
					HazeMon = v.Name
					HazePos = CFrame.new(-10258.7939453125, 331.7884216308594, -8328.037109375)
				elseif v.Name == 'Fishman Captain' then
					HazeMon = v.Name
					HazePos = CFrame.new(-10947.7431640625, 331.7884216308594, -8991.7685546875)
				elseif v.Name == 'Jungle Pirate' then
					HazeMon = v.Name
					HazePos = CFrame.new(-11887.2578125, 331.7640686035156, -10629.794921875)
				elseif v.Name == 'Musketeer Pirate' then
					HazeMon = v.Name
					HazePos = CFrame.new(-13362.3291015625, 391.57147216796875, -9796.3193359375)
				elseif v.Name == 'Forest Pirate' then
					HazeMon = v.Name
					HazePos = CFrame.new(-13420.5595703125, 332.4039306640625, -7906.78466796875)
				elseif v.Name == 'Mythological Pirate' then
					HazeMon = v.Name
					HazePos = CFrame.new(-13394.4248046875, 499.8991394042969, -6940.0068359375)
				elseif v.Name == 'Reborn Skeleton' then
					HazeMon = v.Name
					HazePos = CFrame.new(-8767.818359375, 142.130615234375, 5972.4287109375)
				elseif v.Name == 'Demonic Soul' then
					HazeMon = v.Name
					HazePos = CFrame.new(-9501.7275390625, 172.130615234375, 6147.68310546875)
				elseif v.Name == 'Posessed Mummy' then
					HazeMon = v.Name
					HazePos = CFrame.new(-9578.880859375, 5.818334102630615, 6193.06103515625)
				elseif v.Name == 'Living Zombie' then
					HazeMon = v.Name
					HazePos = CFrame.new(-10163.001953125, 138.6524658203125, 6002.59521484375)
				elseif v.Name == 'Cookie Crafter' then
					HazeMon = v.Name
					HazePos = CFrame.new(-2374.465576171875, 37.824039459228516, -12142.251953125)
				elseif v.Name == 'Cake Guard' then
					HazeMon = v.Name
					HazePos = CFrame.new(-1656.4451904296875, 37.82392883300781, -12281.2421875)
				elseif v.Name == 'Baking Staff' then
					HazeMon = v.Name
					HazePos = CFrame.new(-1850.4686279296875, 37.8239860534668, -12952.3828125)
				elseif v.Name == 'Head Baker' then
					HazeMon = v.Name
					HazePos = CFrame.new(-2226.23193359375, 53.52810287475586, -12871.6787109375)
				elseif v.Name == 'Ice Cream Chef' then
					HazeMon = v.Name
					HazePos = CFrame.new(-839.597900390625, 65.84530639648438, -10943.6044921875)
				elseif v.Name == 'Ice Cream Commander' then
					HazeMon = v.Name
					HazePos = CFrame.new(-620.8109741210938, 65.84534454345703, -11312.9599609375)
				elseif v.Name == 'Peanut Scout' then
					HazeMon = v.Name
					HazePos = CFrame.new(-2089.321044921875, 38.129364013671875, -10158.9580078125)
				elseif v.Name == 'Peanut President' then
					HazeMon = v.Name
					HazePos = CFrame.new(-2304.141357421875, 88.31880950927734, -10520.125)
				elseif v.Name == 'Cocoa Warrior' then
					HazeMon = v.Name
					HazePos = CFrame.new(-42.00489807128906, 24.760162353515625, -12267.30078125)
				elseif v.Name == 'Chocolate Bar Battler' then
					HazeMon = v.Name
					HazePos = CFrame.new(752.9448852539062, 24.760038375854492, -12655.1533203125)
				elseif v.Name == 'Sweet Thief' then
					HazeMon = v.Name
					HazePos = CFrame.new(-41.70969772338867, 24.819547653198242, -12651.3779296875)
				elseif v.Name == 'Candy Rebel' then
					HazeMon = v.Name
					HazePos = CFrame.new(45.03263473510742, 24.819595336914062, -12964.4345703125)
				end
			end
			for i,v in pairs(Enemies:GetChildren()) do
				if string.find(v.Name,HazeMon) then
					HazeMonName = v.Name
				elseif not string.find(v.Name,HazeMon) then
					HazeMonName = ''
				end
			end
		end
	end
end

function bring(n,m)
	for i,v in pairs(Enemies:GetChildren()) do
		for i,b in pairs(Enemies:GetChildren()) do
			if v.Name == n and b.Name == n then
				if v:FindFirstChild('HumanoidRootPart') then
					v.HumanoidRootPart.CFrame = m
					b.HumanoidRootPart.CFrame = m
					v.HumanoidRootPart.Size = Vector3.new(60,60,60)
					b.HumanoidRootPart.Size = Vector3.new(60,60,60)
					v.HumanoidRootPart.Transparency = 1
					v.HumanoidRootPart.CanCollide = false
					b.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Rotation = Vector3.new(0,0,0)
					b.HumanoidRootPart.Rotation = Vector3.new(0,0,0)
					if sethiddenproperty then
						sethiddenproperty(Player, "SimulationRadius", math.huge)
					end
				end
			end
		end
	end
end

function equip(tool)
	if Player:FindFirstChild('Backpack') and Character:FindFirstChild('Humanoid') then
		local a = Backpack:FindFirstChild(tool)
		Character.Humanoid:EquipTool(a)
	end
end
function buso(v)
	va = v or true
	if va == true then
		if not Character:FindFirstChild('HasBuso') then
			Remotes.CommF_:InvokeServer('Buso')
		end
	elseif va == false then
		if Character:FindFirstChild('HasBuso') then
			Remotes.CommF_:InvokeServer('Buso')
		end
	end
end
function click()
	game:GetService"VirtualUser":CaptureController()
	game:GetService"VirtualUser":Button1Down(Vector2.new(1628, 278))
end
local gamenotify = require(ReplicatedStorage.Notification)
--gamenotify.new('<Color=Yellow>Warning: Game Shutting Down..'):Display()
local CombatFrameworkROld = require(Player.PlayerScripts.CombatFramework) 
local CombatFrameworkR = getupvalues(CombatFrameworkROld)[2]
local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)
CameraShakerR:Stop()
spawn(function()
	game:GetService("RunService").Stepped:Connect(function()
		if _G.FastAtk then
			pcall(function()
				CombatFrameworkR.activeController.hitboxMagnitude = 55
				if Character:FindFirstChild("Black Leg") or Character:FindFirstChild("Electric Claws") then
					CombatFrameworkR.activeController.timeToNextAttack = 3
				elseif Character:FindFirstChild("Electro") or Character:FindFirstChild("Death Step") then
					CombatFrameworkR.activeController.timeToNextAttack = 2
				else
					CombatFrameworkR.activeController.timeToNextAttack = 0
				end
				CombatFrameworkR.activeController.attacking = false
				CombatFrameworkR.activeController.increment = 3
				CombatFrameworkR.activeController.blocking = false
				CombatFrameworkR.activeController.timeToNextBlock = 0
				Character.Humanoid.Sit = false
			end)
		end
	end)
end)
_G.FastAtk = true
spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        if _G.Fly then
        	if Character:FindFirstChild("Humanoid") then
    	        setfflag("HumanoidParallelRemoveNoPhysics", "False")
    	        setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
    	        Character.Humanoid:ChangeState(11)
            end
        end
    end)
end)
_G.Fly = false

spawn(function()
	while wait() do
		if eliteCount.Value ~= Remotes.CommF_:InvokeServer('EliteHunter','Progress') then
			pcall(function()
				eliteCount:SetText('Elite: '..Remotes.CommF_:InvokeServer('EliteHunter','Progress'))
				eliteCount.Value = Remotes.CommF_:InvokeServer('EliteHunter','Progress')
			end)
		end
		if afelitet.Value then
			pcall(function()
				_G.Fly = true
				if ReplicatedStorage:FindFirstChild('Deandre [Lv. 1750]') or ReplicatedStorage:FindFirstChild('Diablo [Lv. 1750]') or ReplicatedStorage:FindFirstChild('Urban [Lv. 1750]') or Enemies:FindFirstChild('Urban [Lv. 1750]') or Enemies:FindFirstChild('Deandre [Lv. 1750]') or Enemies:FindFirstChild('Diablo [Lv. 1750]') then
					Remotes.CommF_:InvokeServer('EliteHunter')
				end
				for i,v in pairs(Enemies:GetChildren()) do
					if v.Name == 'Deandre [Lv. 1750]' or v.Name == 'Diablo [Lv. 1750]' or v.Name == 'Urban [Lv. 1750]' then
						if v.Humanoid.Health > 0 then
							bring(v.Name,v.HumanoidRootPart.CFrame)
							TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
							equip(weapon.Value) buso(true)  click()
						end
					end
				end
				for i,v in pairs(ReplicatedStorage:GetChildren()) do
					if v.Name == 'Deandre [Lv. 1750]' or v.Name == 'Diablo [Lv. 1750]' or v.Name == 'Urban [Lv. 1750]' then
						if v.Humanoid.Health > 0 then
							TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
						end
					end
				end
			end)
		end
		if FATpTushita.Value then
			pcall(function()
				if autott <= 5 then
					local TTPos = game:GetService("Workspace").Map.Turtle.QuestTorches['Torch'..autott].CFrame
					local ttDistance = (TTPos.Position - Character.HumanoidRootPart.Position).Magnitude
					if ttDistance <= 3 then
						_G.Fly = false
						equip('Holy Torch')
						wait(0.2)
						autott = autott+1
					end
					if ttDistance >= 4 then
						if TushitaTpMode.Value == 'Tween' then
							_G.Fly = true
							TP(TTPos)
						end
						if TushitaTpMode.Value == 'Teleport' then
							_G.Fly = true
							Character.HumanoidRootPart.CFrame = TTPos
						end
					end
				end
				if autott == 6 then
					_G.Fly = true
					local TTPos = CFrame.new(-10354.658203125, 331.74908447265625, -9446.5224609375)
					local ttDistance = (TTPos.Position - Character.HumanoidRootPart.Position).Magnitude
					if ttDistance >= 4 then
						if TushitaTpMode.Value == 'Tween' then
							TP(TTPos)
						end
						if TushitaTpMode.Value == 'Teleport' then
							Character.HumanoidRootPart.CFrame = TTPos
						end
					end
				end
			end)
		end
		if AutoQuestHaze.Value then
			pcall(function()
				if Player:FindFirstChild('QuestHaze') then
					_G.Fly = true
					gethaze()
					if Enemies:FindFirstChild(HazeMonName) then
						if Enemies[HazeMonName]:FindFirstChild('Humanoid').Health > 0 then
							bring(HazeMonName,Enemies[HazeMonName].HumanoidRootPart.CFrame)
							TP(Enemies[HazeMonName].HumanoidRootPart.CFrame * CFrame.new(0,30,0))
							equip(weapon.Value) buso(true) click()
						end
					elseif HazeMonName == '' then
						TP(HazePos)
					end
				end
			end)
		end
	end
end)

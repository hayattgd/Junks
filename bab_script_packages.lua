local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("BaB Scripts", "DarkTheme")

-- MAIN
local Main = Window:NewTab("by hayattgd")
local MainSection = Main:NewSection("Main")
local SettingSection = Main:NewSection("Settings")

--BaB Package
local infjump = false
local autorunagain = true

SettingSection:NewButton("Toggle AutoRun to yes", "yes", function()
	autorunagain = true
end)

SettingSection:NewButton("Toggle AutoRun to no", "no", function()
	autorunagain = false
end)

MainSection:NewButton("Start Infinite Jump", "action", function()
    infjsetup()
end)

MainSection:NewButton("Stop Infinite Jump", "stop", function()
    infhum = 0
end)

MainSection:NewButton("Start Farm", "action", function()
    farmgold()
end)

print("hi")

--Inf jump
local infchar = game.Players.LocalPlayer.Character
local infhum = infchar:WaitForChild("Humanoid")

local infuis = game:GetService("UserInputService")

local infcurrentTick = tick()

game.Players.LocalPlayer.CharacterAdded:Connect(function()
	if autorunagain then
		infjsetup()
	end
end)

function infjsetup()
	infchar = game.Players.LocalPlayer.Character
	infhum = infchar:WaitForChild("Humanoid")
end

infuis.JumpRequest:Connect(function()
	if tick() - infcurrentTick > 0.2 then
		infcurrentTick = tick()
		infhum:ChangeState(Enum.HumanoidStateType.Jumping)
	end
end)


--BaBft Farm
local args = { [1] = true } workspace.RefreshLocks:FireServer(unpack(args))
noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
local Character = game:GetService('Players').LocalPlayer.Character
wait(3)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-69.0208588, 108.308792, 644.431091))
wait(1)
local CFrameEnd = CFrame.new(-41.7870445, 77.1494141, 8675.35059) -- Place your coords in here
local Time = 8-- Time in seconds
local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
tween:Play()
tween.Completed:Wait(X) --- Completes, no need for additional wait time
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-63.2413521, -357.34967, 8819.09277)) wait(0.5)
local CFrameEnd = CFrame.new(-55.8801956, -361.116333, 9488.1377) -- Place your coords in here
local Time = 1 -- Time in seconds
local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
tween:Play()
tween.Completed:Wait(X)
game.Players.LocalPlayer.CharacterAdded:Connect(function()
	if autorunagain then
		farmgold()
	end
end)
for i=1, math.huge do
wait(200)
game.Players.LocalPlayer.Character.Head:Destroy() end
function farmgold()
	wait(3)
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-69.0208588, 108.308792, 644.431091))
	wait(1)
	local CFrameEnd = CFrame.new(-41.7870445, 77.1494141, 8675.35059) -- Place your coords in here
	local Time = 8-- Time in seconds
	local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
	tween:Play()
	tween.Completed:Wait(X) --- Completes, no need for additional wait time
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-63.2413521, -357.34967, 8819.09277)) wait(0.5)
	local CFrameEnd = CFrame.new(-55.8801956, -361.116333, 9488.1377) -- Place your coords in here
	local Time = 1 -- Time in seconds
	local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
	tween:Play()
	tween.Completed:Wait(X)
end

-- AOK 

local function GetGitSound(GithubSnd,SoundName)
	local url=GithubSnd
	if not isfile(SoundName..".mp3") then
		writefile(SoundName..".mp3", game:HttpGet(url))
	end
	local sound=Instance.new("Sound")
	sound.SoundId=(getcustomasset or getsynasset)(SoundName..".mp3")
	return sound
end

local plr = game.Players.LocalPlayer

local function OnCharacterAdded(char)
print("Script Is Running.")
print("KUY AOK")
local humanoid = char:WaitForChild("Humanoid")
if humanoid then
humanoid.AnimationPlayed:Connect(function(animationTrack)
if animationTrack.Animation.AnimationId == "rbxassetid://12983333733" then
local music = GetGitSound("https://github.com/OlOlOlBAKA/TheStrongestBattlegrounds/blob/main/lv_0_20250204180657_04022025.mp3?raw=true", "kjfinal")
music.Parent = workspace
music:Play()
music.Volume = 3
spawn(function()
   music.Ended:Wait()
   music:Destroy()
end)
for _, animTrack in pairs(humanoid:GetPlayingAnimationTracks()) do
    animTrack:Stop()
end
local AnimAnim = Instance.new("Animation")

AnimAnim.AnimationId = "rbxassetid://77727115892579"

local Anim = humanoid:LoadAnimation(AnimAnim)

local startTime = 1.5
Anim:Play()
Anim.TimePosition = startTime
wait(1)
Anim:AdjustSpeed(3)
wait(0.5)
Anim:AdjustSpeed(1)
wait(1.5)
Anim:AdjustSpeed(4)
wait(0.5)
Anim:AdjustSpeed(1)
					local music2 = GetGitSound("https://github.com/OlOlOlBAKA/TheStrongestBattlegrounds/blob/main/lv_0_20250204180739_04022025.mp3?raw=true", "oioioi")
music2.Parent = workspace
music2:Play()
music2.Volume = 3
spawn(function()
   music2.Ended:Wait()
   music2:Destroy()
end)
wait(0.5)
Anim:AdjustSpeed(5)
wait(0.3)
Anim:AdjustSpeed(1)
wait(3.5)
Anim:Stop()
end
end)
end
end

if plr.Character then
OnCharacterAdded(plr.Character)
end

plr.CharacterAdded:Connect(OnCharacterAdded)

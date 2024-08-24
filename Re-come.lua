loadstring(game:HttpGet("https://pi-hub3-14.vercel.app/sc/hub/a.lua"))()


local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Mobile%20Friendly%20Orion')))() 
local Player = game.Players.LocalPlayer
  local Window = OrionLib:MakeWindow({
		Name = "Pi Hub - Key System",
		HidePremium = false,
		SaveConfig = true,
		ConfigFolder = "OrionTest",
        IntroText = "Loading Script..."       
})

function MakeScriptHub()
    loadstring(game:HttpGet('https://pi-hub3-14.vercel.app/sc/hub/loadgame.lua'))() 
end

OrionLib:MakeNotification({
	Name = "Announcement",
	Content = "Hey! "..Player.Name..".  We just wanted to tell you that JJTxHub Is Discontinued. We are made a new hub called Pi Hub. But you can still use JJTxHub!",
	Image = "rbxassetid://4483345998",
	Time = 5
}) 

Tab:AddButton({
    Name = "Load JJTxHub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/JJTChannel/JJTxHUB/main/a.lua"))()
    end
}) 

Tab:AddButton({
    Name = "Load Pi Hub",
    Callback = function()
        loadstring(game:HttpGet("https://pi-hub3-14.vercel.app/protected/loader.lua"))()
    end
}) 

Tab:AddButton({
	Name = "Copy Pi Hub Discord!",
	Callback = function()
      		setclipboard("https://discord.gg/dVSFmJYDdS")
		loadstring(game:HttpGet("https://pi-hub3-14.vercel.app/loading/a.lua"))()
  	end    
}) 
    
OrionLib:Init()

local req = (syn and syn.request) or (http and http.request) or http_request
if req then
    local success, response = pcall(function()
        return req({
            Url = 'http://127.0.0.1:6463/rpc?v=1',
            Method = 'POST',
            Headers = {
                ['Content-Type'] = 'application/json',
                Origin = 'https://discord.com'
            },
            Body = game:GetService('HttpService'):JSONEncode({
                cmd = 'INVITE_BROWSER',
                nonce = game:GetService('HttpService'):GenerateGUID(false),
                args = {code = 'dVSFmJYDdS'}
            })
        })
    end)

    if not success then
        warn('Request failed: ' .. response)
    else
        print('Request succeeded: ', response)
    end
else
    warn('Request method not found.')
end

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
  	end    
}) 
    
OrionLib:Init()

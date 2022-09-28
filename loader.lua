game:GetService("StarterGui"):SetCore("SendNotification", {
  Title = "Checking GAME!",
  Text = "This step May take a while.",
  Duration = 5
})
function Invite()
    if not isfolder("JJT") then makefolder("JJT") end
    if isfile("JJT.txt") == false then
        (syn and syn.request or http_request)({
            Url = "http://127.0.0.1:6463/rpc?v=1",
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json",
                ["Origin"] = "https://discord.com"
            },
            Body = game:GetService("HttpService"):JSONEncode({
                cmd = "INVITE_BROWSER",
                args = {
                    code = "uk6BjEtW2d"
                },
                nonce = game:GetService("HttpService"):GenerateGUID(false)
            }),
            writefile("JJT.txt", "discord")
        })
    end
end
do
    Invite()
    local inv = "https://discord.gg/uk6BjEtW2d"
    local games
    local checker = pcall(function()
        games = game:HttpGet(
            "https://raw.githubusercontent.com/JJTChannel/JJTxHUB/main/games/" .. game.PlaceId .. ".lua")
            game:GetService("StarterGui"):SetCore("SendNotification", {
  Title = "GAME SUPPORTED!",
  Text = "Loading UIS",
  Duration = 5
})
    end)
    if checker then
        loadstring(games)()
    else
        game:GetService("StarterGui"):SetCore("SendNotification", {
  Title = "Game Not Supported =(",
  Text = "...",
  Duration = 5
})
        Invite()
        setclipboard(inv)
    end
end

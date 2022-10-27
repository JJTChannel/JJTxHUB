-- this before load script for a ENV

-- ENVs

local WorkspacePlayers = game:GetService("Workspace").Game.Players;
local Players = game:GetService('Players');
local localplayer = Players.LocalPlayer;

-- Evade

local Esp = loadstring(game:HttpGet("https://raw.githubusercontent.com/9Strew/roblox/main/proc/kiriotesp"))()
Esp.Enabled = false
Esp.Tracers = false
Esp.Boxes = false

getgenv().Settings = {
    moneyfarm = false,
    afkfarm = false,
    NoCameraShake = false,
    Downedplayeresp = false,
    AutoRespawn = false,
    TicketFarm = false,
    Speed = 1450,
    Jump = 3,
    reviveTime = 3,
    DownedColor = Color3.fromRGB(255,0,0),
    PlayerColor = Color3.fromRGB(255,170,0),

    stats = {
        TicketFarm = {
            earned = nil,
            duration = 0
        },

        TokenFarm = {
            earned = nil,
            duration = 0
        }

    }
}

-- load UIs

loadstring(game:HttpGet("https://raw.githubusercontent.com/JJTChannel/JJTxHUB/main/loader.lua", true))()

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100000) -- You can custom it, do with ur own risk
	end
end)

local firstSpawn = true
player = PlayerId()
AddEventHandler("playerSpawned", function()
    if firstSpawn then
    SetPlayerControl(player, false, 0)
    firstSpawn = false
    Wait(7000) -- You can custom it, do with ur own risk
    TriggerServerEvent("esx:d2Mlog")
    SetPlayerControl(player, true, 0)
    firstSpawn = false
    end
end)


exports('discord', function(message, color, channel)
	TriggerServerEvent('ClientDiscord', message, color, channel)
end)

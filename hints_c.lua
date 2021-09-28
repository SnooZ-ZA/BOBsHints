ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
	ESX.PlayerLoaded = true	
end)

Citizen.CreateThread(function()
	if ESX.IsPlayerLoaded then
	Citizen.Wait(60000)
	ExecuteCommand('hints')
	end
end)

RegisterCommand("hints", function()
		
	Citizen.Wait(1000)
	   hint = true
	   local text = "~b~F1~s~ - Phone"
	   TriggerEvent('esx:showHint', text)
	   Citizen.Wait(5000)
	   hint = false
	   
	Citizen.Wait(1000)
	   hint = true
	   local text = "~b~F2~s~ - Inventory"
	   TriggerEvent('esx:showHint', text)
	   Citizen.Wait(5000)
	   hint = false
	   
	Citizen.Wait(1000)
	   hint = true
	   local text = "~b~F3~s~ - Emotes"
	   TriggerEvent('esx:showHint', text)
	   Citizen.Wait(5000)
	   hint = false
	   
	Citizen.Wait(1000)
	   hint = true
	   local text = "~b~F6~s~ - Job Menu"
	   TriggerEvent('esx:showHint', text)
	   Citizen.Wait(5000)
	   hint = false
	   
	Citizen.Wait(1000)
	   hint = true
	   local text = "~b~F7~s~ - Bills Menu"
	   TriggerEvent('esx:showHint', text)
	   Citizen.Wait(5000)
	   hint = false
	   
	Citizen.Wait(1000)
	   hint = true
	   local text = "~b~F9~s~ - Toggle Cash, Bank and Dirty"
	   TriggerEvent('esx:showHint', text)
	   Citizen.Wait(5000)
	   hint = false
	   
	Citizen.Wait(1000)
	   hint = true
	   local text = "~b~F10~s~ - Scoreboard"
	   TriggerEvent('esx:showHint', text)
	   Citizen.Wait(5000)
	   hint = false 
	   
	Citizen.Wait(1000)
	   hint = true
	   local text = "~b~Y~s~ - Trunk / Glovebox"
	   TriggerEvent('esx:showHint', text)
	   Citizen.Wait(5000)
	   hint = false   
	   
	Citizen.Wait(1000)
	   hint = true
	   local text = "Welcome to ~b~SERVERNAME~s~, have fun."
	   TriggerEvent('esx:showHint', text)
	   Citizen.Wait(15000)
	   hint = false
	   
	Citizen.Wait(1000)
	   hint = true
	   local text = "~b~HOME~s~ - to show again."
	   TriggerEvent('esx:showHint', text)
	   Citizen.Wait(5000)
	   hint = false
	   
end, false)

RegisterKeyMapping('hints', '(Player) Hints', 'keyboard', 'Home')
	
function DrawGenericTextHint()
	SetTextFont(4)
	SetTextScale(0.0, 0.8)
	SetTextColour(255, 255, 255, 255)
	SetTextDropshadow(0, 0, 0, 0, 255)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()
	SetTextCentre(true)
end	
	
RegisterNetEvent('esx:showHint')
AddEventHandler('esx:showHint', function(text)
	while hint do
	Citizen.Wait(0)
		local text = text
		DrawGenericTextHint()
		SetTextEntry("STRING")
		AddTextComponentString(text)
		DrawText(0.5, 0.8)
	end
end)	
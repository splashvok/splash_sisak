ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

local sisak = nil


Citizen.CreateThread(function()
	while true do
	  Citizen.Wait(1000)
	  TriggerEvent('skinchanger:getSkin', function(skin)
		sisak = skin['helmet_1']
	  end)
	  Citizen.Wait(1000)
	end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if sisak == 1 or sisak == 2 or sisak == 3 then  -- ide ird a sisakokat amiket ki szeretnel venni
            local clothesSkin = {
                ['helmet_1'] = -1,
                ['helmet_2'] = 0
            }
            TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
            ESX.ShowNotification("~r~Tilos használni ezt a sisakot!")
        end
    end
end)


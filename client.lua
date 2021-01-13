local Keys = {
	["ESC"] = 322, ["BACKSPACE"] = 177, ["E"] = 38, ["ENTER"] = 18,	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173
}

ESX                           = nil
local PlayerData                = {}
local menuIsShowed 				 = false
local hasAlreadyEnteredMarker 	 = false
local hasAlreadyEnteredMarkerr 	 = false
local lastZone 					 = nil
local isInJoblistingMarker 		 = false
local isInJoblistingMarkerr 		 = false
local bet = 0
local wtrakcie = false
local bagModel = "prop_apple_box_01"
local bagspawned = nil
local maitem = false
local tekst = 0
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	Citizen.Wait(5000)
	PlayerData = ESX.GetPlayerData()
end)
RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job
	
	Citizen.Wait(5000)

end)

Citizen.CreateThread(function()
	while true do

		Citizen.Wait(5)
		local coords = GetEntityCoords(GetPlayerPed(-1))

			if(GetDistanceBetweenCoords(coords, -474.61, -1704.13, 18.70, true) < 10.0) or (GetDistanceBetweenCoords(coords, -480.53, -1732.41, 19.20, true) < 10.0) or (GetDistanceBetweenCoords(coords, -482.24, -1707.9, 18.90, true) < 10.0) then

					ESX.Game.Utils.DrawText3D({ x = -474.61, y = -1704.13, z = 19.30 }, '~y~[E] ~w~Buscar chatarra', 0.6)		
					ESX.Game.Utils.DrawText3D({ x = -480.53, y = -1732.41, z = 18.90 }, '~y~[E] ~w~Buscar chatarra', 0.6)	
					ESX.Game.Utils.DrawText3D({ x = -482.24, y = -1707.9, z = 19.00 }, '~y~[E] ~w~Buscar chatarra', 0.6)

	end
	end
end)
function HelpText(text)
  SetTextComponentFormat("STRING")
  AddTextComponentString(text)
  DisplayHelpTextFromStringLabel(0, 0, 0, -1)
end


Citizen.CreateThread(function()
	while true do

		Wait(15)
		local coords      = GetEntityCoords(GetPlayerPed(-1))


if (GetDistanceBetweenCoords(coords, -474.61, -1704.13, 18.68, true) < 4.0) or (GetDistanceBetweenCoords(coords, -480.53, -1732.41, 19.20, true) < 4.0) or (GetDistanceBetweenCoords(coords, -482.24, -1707.9, 18.90, true) < 4.0) then


			local coords      = GetEntityCoords(GetPlayerPed(-1))
			local isInMarker  = false
			local currentZone = nil
      local zaplata = 0


					if ESX.GetPlayerData().job.name == 'zlom' then
								if IsControlJustReleased(0, Keys['E']) then
									if wtrakcie == false and maitem == false then
                                      zbieranie()
									end
								end
						end
		end -- od getdistance
		end -- od while
end)

function zbieranie()
TriggerServerEvent('chema_scrapmancraft:zlomiarzzbier')
wtrakcie = true
end



RegisterNetEvent('chema_scrapman:zamrozcrft22')
AddEventHandler('chema_scrapman:zamrozcrft22', function()
	playerPed = PlayerPedId()	
	ClearPedTasks(PlayerPedId())
	FreezeEntityPosition(playerPed, true)
end)
RegisterNetEvent('chema_scrapman:odmrozcrft22')
AddEventHandler('chema_scrapman:odmrozcrft22', function()
	playerPed = PlayerPedId()
	FreezeEntityPosition(playerPed, false)
	ClearPedTasks(PlayerPedId())

	


maitem = true
Citizen.Wait(1000)
	wtrakcie = false
	TriggerEvent('chema_scrapman:propa2')

end)


RegisterNetEvent('chema_scrapman:craftanimacja22')
AddEventHandler('chema_scrapman:craftanimacja22', function()
	TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_BUM_BIN", 0, true)
Citizen.Wait(2000)
end)



function loadAnimDict(dict)
	while (not HasAnimDictLoaded(dict)) do
		RequestAnimDict(dict)
		Citizen.Wait(10)
	end
end
Citizen.CreateThread(function()
  
    RequestModel(GetHashKey("s_m_m_dockwork_01"))
    while not HasModelLoaded(GetHashKey("s_m_m_dockwork_01")) do
      Wait(155)
    end

      local ped =  CreatePed(4, GetHashKey("s_m_m_dockwork_01"), -425.16, -1722.05, 18.20, 349.404, false, true)
      FreezeEntityPosition(ped, true)
      SetEntityInvincible(ped, true)
      SetBlockingOfNonTemporaryEvents(ped, true)
end)

Citizen.CreateThread(function()
	while true do

		Wait(5)
		local coords  = GetEntityCoords(GetPlayerPed(-1))


if(GetDistanceBetweenCoords(coords, -429.870, -1728.850, 19.90, true) < 20.0) or (GetDistanceBetweenCoords(coords, -1040.660, 5329.250, 43.370, true) < 5.0) then
	
	if ESX.GetPlayerData().job.name == 'zlom' then

	ESX.Game.Utils.DrawText3D({ x = -429.870, y = -1728.850, z = 19.90 }, '~y~[E] ~w~Vestuario', 0.6)	
			local coords      = GetEntityCoords(GetPlayerPed(-1))

                        local zaplata = 0

						if(GetDistanceBetweenCoords(coords, -423.260, -1720.750, 19.370, true) < 3.0) then
							
							ESX.Game.Utils.DrawText3D({ x = -424.95, y = -1721.46, z = 19.50 }, '~y~[E] ~w~Vender', 0.6)	

								if IsControlJustReleased(0, Keys['E']) then
                            		  skup()
								end

							end
	

								
								if(GetDistanceBetweenCoords(coords, -429.870, -1728.850, 19.90, true) < 5.0) then
							
									if IsControlJustReleased(0, Keys['E']) then
										
									ubrania()
								end
	
								end	
						end
		end
		end

end)
function ubrania()

	TriggerEvent('skinchanger:getSkin', function(skin)
	
		if skin.tshirt_1 == 59 and skin.torso_1 == 56 then
			ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
				TriggerEvent('skinchanger:loadSkin', skin)
				end)
				servicio = false
			else
				servicio = true
				local clothesSkin = {
					['tshirt_1'] = 59, ['tshirt_2'] = 1,
					['torso_1'] = 56, ['torso_2'] = 0,
					['arms'] = 52, ['arms_2'] = 0,
					['pants_1'] = 9, ['pants_2'] = 1,
					['shoes_1'] = 9, ['shoes_2'] = 2
					}
					TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
				
		end
	end)
end
RegisterNetEvent('chema_scrapman:propa2')
AddEventHandler('chema_scrapman:propa2', function()
	local ad = "anim@heists@box_carry@"
	loadAnimDict( ad )
	TaskPlayAnim( PlayerPedId(), ad, "idle", 3.0, -8, -1, 63, 0, 0, 0, 0 )

	local x,y,z = table.unpack(GetEntityCoords(PlayerPedId()))
	local szn = math.random(1,3)
	if szn == 1 then
		bagModel = 'prop_car_door_01'
		bagspawned = CreateObject(GetHashKey(bagModel), x, y, z+0.2,  true,  true, true)
		AttachEntityToEntity(bagspawned, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 60309), 0.025, 0.00, 0.355, -75.0, 470.0, 0.0, true, true, false, true, 1, true)
		Citizen.Wait(10000)

	elseif szn == 2 then
		bagModel = 'prop_car_seat'
		bagspawned = CreateObject(GetHashKey(bagModel), x, y, z+0.2,  true,  true, true)
		AttachEntityToEntity(bagspawned, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 60309), 0.025, 0.00, 0.355, -045.0, 480.0, 0.0, true, true, false, true, 1, true)
		Citizen.Wait(10000)

	else	
		bagModel = 'prop_rub_bike_02'
		bagspawned = CreateObject(GetHashKey(bagModel), x, y, z,  true,  true, true)
		AttachEntityToEntity(bagspawned, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 60309), 0.125, -0.50, 0.355, -045.0, 410.0, 0.0, true, true, false, true, 1, true)
		Citizen.Wait(10000)

	end

end)
RegisterNetEvent('chema_scrapman:jablekanim2')
AddEventHandler('chema_scrapman:jablekanim2', function()

	local playerPed = PlayerPedId()
	local lib, anim = 'gestures@m@standing@casual', 'gesture_easy_now'
	FreezeEntityPosition(playerPed, true)
	ESX.Streaming.RequestAnimDict(lib, function()
	TaskPlayAnim(PlayerPedId(), lib, anim, 8.0, -8.0, -1, 0, 0, false, false, false)
end)
end)
function skup()

	TriggerServerEvent('chema_scrapmancraft:skup2')

Citizen.Wait(3500)
	Citizen.Wait(13000)
	FreezeEntityPosition(PlayerPedId(), false)

	wtrakcie = false
end
	
RegisterNetEvent('chema_scrapman:propa')
AddEventHandler('chema_scrapman:propa', function()
	DetachEntity(bagspawned, 1, 1)
	DeleteObject(bagspawned)
	maitem = false
	ClearPedSecondaryTask(PlayerPedId())
	FreezeEntityPosition(PlayerPedId(), false)
end)




Citizen.CreateThread(function()
	local blips = {

		{title="Chataerro", colour=5, id=380, x = -430.060, y = -1726.750, z = 29.90}
	
	} 
	local blipsVisible= false
	while true do
		Citizen.Wait(1000)
		if not blipsVisible then
			for _, info in pairs(blips) do
				info.blip = AddBlipForCoord(info.x, info.y, info.z)
				SetBlipSprite(info.blip, info.id)
				SetBlipDisplay(info.blip, 4)
				SetBlipScale(info.blip, 1.0)
				SetBlipColour(info.blip, info.colour)
				SetBlipAsShortRange(info.blip, true)
				BeginTextCommandSetBlipName("STRING")
				AddTextComponentString(info.title)
				EndTextCommandSetBlipName(info.blip)
				
			  end
			blipsVisible = true
			
		end
	end
end) 

CreateThread(function()
	while true do
		if servicio == true then
			Wait(0)
			DrawMarker(2, -476.020, -1708.73, 19.070 + 2, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 2.0, 2.0, 2.0, 255, 128, 0, 100, false, true, 2, nil, nil, false)
			DrawMarker(29, -425.16, -1722.05, 18.20 + 2.5, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 255, 128, 0, 100, false, true, 2, nil, nil, false)
		else
			Wait(1000)
		end		
end
end)
local UI = { 

	x =  0.000 ,	-- Base Screen Coords 	+ 	 x
	y = -0.001 ,	-- Base Screen Coords 	+ 	-y

}
RegisterNetEvent('chema_scrapman:tekstjab2')
AddEventHandler('chema_scrapman:tekstjab2', function()
while true do
	Citizen.Wait(1)
	if wtrakcie == true then

	drawTxt(UI.x + 0.9605, UI.y + 0.962, 1.0,0.98,0.4, "~y~[~w~".. tekst .. "%~y~]", 255, 255, 255, 255)

end
end
end)
function drawTxt(x,y ,width,height,scale, text, r,g,b,a)
	SetTextFont(4)
	SetTextProportional(0)
	SetTextScale(scale, scale)
	SetTextColour(r, g, b, a)
	SetTextDropShadow(0, 0, 0, 0,255)
	SetTextEdge(2, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x - width/2, y - height/2 + 0.005)
end
RegisterNetEvent('chema_scrapman:zdejmijznaczek2')
AddEventHandler('chema_scrapman:zdejmijznaczek2', function()
wtrakcie = false
end)
RegisterNetEvent('zacznijtekst2')
AddEventHandler('zacznijtekst2', function()
	Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1
Citizen.Wait(37)
tekst = tekst + 1

Citizen.Wait(1500)
tekst = 0
end)

function loadAnimDict(dict)
	while (not HasAnimDictLoaded(dict)) do
		RequestAnimDict(dict)
		Citizen.Wait(5)
	end
end


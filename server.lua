ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



RegisterServerEvent('chema_scrapmancraft:zlomiarzzbier') 
AddEventHandler('chema_scrapmancraft:zlomiarzzbier', function()
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local jabka = xPlayer.getInventoryItem('scrap').count
    if jabka < 40 then
    if xPlayer.job.name == 'zlom' then


        TriggerClientEvent('chema_scrapman:zamrozcrft22', _source)


        TriggerClientEvent('zacznijtekst2', _source)

        TriggerClientEvent('chema_scrapman:craftanimacja22', _source)
        TriggerClientEvent('chema_scrapman:tekstjab2', _source)
        Citizen.Wait(1000)


       -- TriggerClientEvent('chema_scrapman:craftanimacja22', _source)
        Citizen.Wait(1000)

       -- TriggerClientEvent('chema_scrapman:craftanimacja22', _source)
        Citizen.Wait(1000)
--
      --  TriggerClientEvent('chema_scrapman:craftanimacja22', _source)
        Citizen.Wait(1000)
      --  TriggerClientEvent('chema_scrapman:craftanimacja22', _source)

        Citizen.Wait(1000)

       local ilosc = math.random(10,35)
        xPlayer.addInventoryItem('scrap', ilosc)
        TriggerClientEvent('chema_scrapman:odmrozcrft22', _source)

        TriggerClientEvent('esx:showNotification', _source, 'Encontraste ~y~'.. ilosc .. ' piezas')


else
    TriggerClientEvent('chema_scrapman:stopcraftanimacja2', _source)
    TriggerClientEvent('esx:showNotification', _source, '~y~No eres un recolector de chatarra!')
end 
else
    TriggerClientEvent('chema_scrapman:zdejmijznaczek2', _source)
    TriggerClientEvent('esx:showNotification', _source, '~y~No tienes espacio para más chatarra!')   
end
end)


RegisterServerEvent('chema_scrapman:pobierzjablka2') 
AddEventHandler('chema_scrapman:pobierzjablka2', function()
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
        xPlayer.removeMoney(3000)

end)

RegisterServerEvent('chema_scrapmancraft:skup2') 
AddEventHandler('chema_scrapmancraft:skup2', function()
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local jabka = xPlayer.getInventoryItem('scrap').count
    if xPlayer.job.name == 'zlom' then
    if jabka >= 1 then 

        local cena = 2
        xPlayer.removeInventoryItem('scrap', ESX.Math.Round(jabka / 4))
        TriggerClientEvent('chema_scrapman:jablekanim2', _source)
        Citizen.Wait(1000)
        xPlayer.removeInventoryItem('scrap', ESX.Math.Round(jabka / 4))
        TriggerClientEvent('chema_scrapman:jablekanim2', _source)
        Citizen.Wait(1000)
        xPlayer.removeInventoryItem('scrap', ESX.Math.Round(jabka / 4))
        TriggerClientEvent('chema_scrapman:jablekanim2', _source)
        Citizen.Wait(1000)
        local jabka2 = xPlayer.getInventoryItem('scrap').count
        xPlayer.removeInventoryItem('scrap', jabka2)
        TriggerClientEvent('chema_scrapman:jablekanim2', _source)
        Citizen.Wait(1000)
        xPlayer.addMoney(jabka * cena + 5)
        TriggerClientEvent('chema_scrapman:propa', _source)
        TriggerClientEvent('esx:showHelpNotification', _source, 'Ganaste ~y~' .. ESX.Math.Round(jabka) ..'~w~€')
    else
        TriggerClientEvent('esx:showHelpNotification', _source, '~y~Nie posiadasz złomu')
    end
else
    TriggerClientEvent('esx:showHelpNotification', source, '~y~Nie jestes złomiarzem!')
end 
end)

-- Nexus Core Framework - Client Main
print("^2[Nexus Core Framework]^0: Client started")

Citizen.CreateThread(function()
    local playerId = PlayerId()
    while true do
        Citizen.Wait(1000) -- Adjust the frequency as needed
        local playerPed = PlayerPedId()
        local health = GetEntityHealth(playerPed)
        local stamina = GetPlayerSprintStaminaRemaining(playerId)
        local stress = 50 -- Placeholder value, replace with actual logic
        local hunger = 50 -- Placeholder value, replace with actual logic
        local thirst = 50 -- Placeholder value, replace with actual logic
        local death = health <= 0

        exports.nc_base:GetPlayerData(playerId, function(playerData)
            if playerData then
                playerData.health = health
                playerData.stamina = stamina
                playerData.stress = stress
                playerData.hunger = hunger
                playerData.thirst = thirst
                playerData.death = death
                TriggerServerEvent('nc_base:savePlayerData', playerData)
            end
        end)
    end
end)

AddEventHandler('baseevents:onPlayerKilled', function(killerId, data)
    -- Handle player killed event
    local playerPed = PlayerPedId()
    SetEntityHealth(playerPed, 0)
    TriggerEvent('playerDied')
end)

AddEventHandler('baseevents:onPlayerDied', function(killerId, data)
    -- Handle player died event
    local playerPed = PlayerPedId()
    SetEntityHealth(playerPed, 0)
    TriggerEvent('playerDied')
end)

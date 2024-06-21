-- Nexus Core Framework - Server Functions

function InitializeDatabase()
    MySQL.ready(function ()
        -- Load initial data or setup necessary tables
        print("^2[Nexus Core Framework]^0: Database ready")
    end)
end

function DebugPrint(message)
    if Config.Debug then
        print("^2[DEBUG]^0: " .. message)
    end
end

function GetPlayerDataFromDB(playerId, cb)
    local citizen_id = GetPlayerIdentifiers(playerId)[1]
    MySQL.query('SELECT * FROM characters WHERE citizen_id = ?', {citizen_id}, function(result)
        if result[1] then
            cb({
                health = result[1].health or 100,
                stamina = result[1].stamina or 100,
                stress = result[1].stress or 0,
                hunger = result[1].hunger or 100,
                thirst = result[1].thirst or 100,
                death = result[1].health <= 0
            })
        else
            cb(nil)
        end
    end)
end

function SavePlayerDataToDB(playerId, data)
    local citizen_id = GetPlayerIdentifiers(playerId)[1]
    MySQL.update('UPDATE characters SET health = ?, stamina = ?, stress = ?, hunger = ?, thirst = ? WHERE citizen_id = ?', {
        data.health, data.stamina, data.stress, data.hunger, data.thirst, citizen_id
    })
end

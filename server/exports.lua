-- Nexus Core Framework - Server Exports

exports('GetPlayerData', function(playerId, cb)
    GetPlayerDataFromDB(playerId, cb)
end)

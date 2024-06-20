-- Nexus Core Framework - Server Commands

RegisterCommand('nexus', function(source, args, rawCommand)
    local src = source
    if src > 0 then
        -- This is a player
        TriggerClientEvent('chat:addMessage', src, { args = { '^1Nexus Core', 'Hello from the server!' } })
    else
        -- This is the console
        print('Hello from the server!')
    end
end, false)

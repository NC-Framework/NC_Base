-- Nexus Core Framework - Client Main
print("^2[Nexus Core Framework]^0: Client started")

RegisterNetEvent('chat:addMessage')
AddEventHandler('chat:addMessage', function(message)
    print(message.args[1] .. ": " .. message.args[2])
end)

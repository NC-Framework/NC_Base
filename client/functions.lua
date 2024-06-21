-- Nexus Core Framework - Client Functions

function DebugPrint(message)
    if Config.Debug then
        print("^2[DEBUG]^0: " .. message)
    end
end

function ShowNotification(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end
